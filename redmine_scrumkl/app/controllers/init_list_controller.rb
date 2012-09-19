class InitListController < ApplicationController
  unloadable
  
  #menu authority
  before_filter :find_project, :authorize
  menu_item :scrumkl,:all => true      

  def index
    @sprints = @project.versions.reverse
    if @sprints.size()>0
      sprint_id = params[:sprint_id] ||@sprints[0].id
    else
      flash[:notice]=l(:notice_no_sprint)
       sprint_id ="nil"
    end
    @graph = open_flash_chart_object(600,300,"/charts/#{sprint_id}/sprint_chart",true,"/") 
    @graph_status = open_flash_chart_object(600,300,"/charts/pie_chart/status_chart",true,"/")
    if params[:jump]
      # try to redirect to the requested menu item
      redirect_to_project_menu_item(@project, params[:jump]) && return
    end
    @users_by_role = @project.users_by_role
    @subprojects = @project.children.visible.all
    @trackers = @project.rolled_up_trackers
    
    cond = @project.project_condition(Setting.display_subprojects_issues?)
    
    @open_issues_by_tracker = Issue.visible.count(:group => :tracker,
                                            :include => [:project, :status, :tracker],
                                            :conditions => ["(#{cond}) AND #{IssueStatus.table_name}.is_closed=?", false])
    @total_issues_by_tracker = Issue.visible.count(:group => :tracker,
                                            :include => [:project, :status, :tracker],
                                            :conditions => cond)
  end
  
private 
   def find_project
     @project = Project.find(params[:project_id])if params[:project_id]
   rescue ActiveRecord::RecordNotFound
    render_404
  end
   
end
