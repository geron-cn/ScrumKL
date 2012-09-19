class  ChartsController < ApplicationController
  unloadable
  
  #menu authority
  before_filter :find_project, :authorize, :only=>'index'
  menu_item :scrumkl,:all => true      
  
  def index 
    #get_sprint_data(1)
    sprint_id = params[:sprint_id] || @project.versions.reverse[0].id
    @graph = open_flash_chart_object(750,400,"/charts/#{sprint_id}/sprint_chart",true,"/") 
  end
  
  
  def get_sprint_chart
    sprint_id = params[:sprint_id] || @project.versions.reverse[0].id || nil
    @diagram = KlDiagrams.new(sprint_id)
    story_point = @diagram.get_story_point
    story_point_left = @diagram.get_story_point_left
    y_max = @diagram.set_y_max(sprint_id)
    
    start_date = @diagram.get_date_from
    end_date = @diagram.get_end_date
    dates = (start_date .. end_date).map(&:to_s)
    
    data_1 = LineDot.new(3,4, '#B23AEE')   #story_point_line
    data_1.key(l(:lab_story_points), 10) 
    data_1.add(story_point)
    
    data_2 = LineDot.new(2,4, '#FF0000')   #story_point_left_line
    data_2.key(l(:lab_story_points_left), 10)         
    data_2.add(story_point_left)
    
    g = Graph.new
    g.title(l(:lab_sprint_chart), "{font-size: 20px; color: #736AFF}")
    g.data_sets << data_1
    g.data_sets << data_2
    
    g.set_tool_tip('#x_label#, #val#')
    g.set_x_labels(dates)
    g.set_x_label_style(10, '#000000', 2, 2)
    g.set_bg_color('#FAFAFA')      
    g.set_y_max(y_max)
    g.set_y_label_steps(20)   
    g.set_y_legend("story point", 12, "#736AFF")
    render :text => g.render
  end
  
  def update_sprint_chart
    sprint_id = params[:sprint_id] || @project.versions.reverse[0].id
    @graph = open_flash_chart_object(600,300,"/charts/#{sprint_id}/sprint_chart",true,"/")
    render :partial => "/charts/burndown_chart",:graph=>@graph, :layout => false if request.xhr?
  end
  
  
  def status_chart
    
    data = []
    str  = []
    colors = [ "#9AFF9A", "#00ff00", "#4169E1","#ADFF2F", "#6E6E6E", "#e44f3c", "#8968CD","#404040", "#00EEEE"]
    
    status = IssueStatus.find(:all)
    status.each do |s|
      issues = Issue.all(:conditions=> ['status_id=?', s.id])
        points = 0
        issues.each do |i|
          user_story = KlBacklog.find_by_issue_id(i.id)
          if user_story != nil
            points = points + user_story.estimate
          end
        end
        if points != 0
          str << "#{s.name}"
        end
        data << points
    end
    
    g = Graph.new
    g.pie(60, '#505050', '{font-size: 12px; color: #404040;}')
    g.pie_values(data, str)
    g.pie_slice_colors(colors)
    g.set_bg_color('#FAFAFA')
    g.set_tool_tip("用户故事点数:#val#")
    g.title(l(:lab_story_statistics), '{font-size:18px; color: #d01f3c}' )
    
    render :text => g.render
  end
  
  #得到 sprint图表所必须的数据
  
  
  private
  
  
  def find_project
    @project = Project.find(params[:project_id])if params[:project_id]
  rescue ActiveRecord::RecordNotFound
    render_404
  end
  
end  
