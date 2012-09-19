class KlProductController < ApplicationController
  unloadable
  
  #menu authority
  include IssuesHelper
  helper :queries
  include QueriesHelper
  helper :sort
  include SortHelper
  include IssuesHelper
  helper :issues
  helper :projects
  #menu authority
  before_filter :find_project, :authorize, :all => true
  menu_item :scrumkl,:all => true      
  
  

  def demand_list
    @all_story_page,@story_list = paginate :KlUserstory, :per_page=>25,:order=>"priority DESC",:conditions=>["project_id=?",@project.id]
    retrieve_query
    sort_init(@query.sort_criteria.empty? ? [['id', 'desc']] : @query.sort_criteria)
    sort_update(@query.sortable_columns)
  end
 
 
  def sprint_list
      @sprint_page, @sprint_list = paginate :versions, :per_page=>25,:order=>"effective_date ASC",:conditions=>["project_id=?",@project.id]
      retrieve_query
      sort_init(@query.sort_criteria.empty? ? [['id', 'desc']] : @query.sort_criteria)
      sort_update(@query.sortable_columns)
  end

def sprint_save
    # TODO: refactor with code above in #new
    @version = @project.versions.build
    if params[:version]
      attributes = params[:version].dup
      attributes.delete('sharing') unless attributes.nil? || @version.allowed_sharings.include?(attributes['sharing'])
      @version.attributes = attributes
    end

    if request.post?
      if @version.save
        respond_to do |format|
          format.html do
            flash[:notice] = l(:notice_successful_create)
            redirect_to :controller => 'kl_product', :action => 'sprint_list', :project_id => @project
          end
          format.js do
            # IE doesn't support the replace_html rjs method for select box options
            render(:update) {|page| page.replace "issue_fixed_version_id",
              content_tag('select', '<option></option>' + version_options_for_select(@project.shared_versions.open, @version), :id => 'issue_fixed_version_id', :name => 'issue[fixed_version_id]')
            }
          end
        end
      else
        respond_to do |format|
          format.html { render :controller => 'kl_product',:action => 'new_sprint' }
          format.js do
            render(:update) {|page| page.alert(@version.errors.full_messages.join('\n')) }
          end
        end
      end
    end
  end

 def delete_sprint
     @sprint = Version.find(params[:sprint_id])
      if   @sprint.fixed_issues.empty?
      @sprint.destroy
      redirect_to :controller => 'kl_product', :action => 'sprint_list',:project_id => @project
    else
      flash[:error] = l(:notice_unable_delete_version)
      redirect_to :controller => 'kl_product', :action => 'sprint_list',:project_id => @project
    end  
  end
  
  
 def new_sprint
    @version = Version.new
  end
  
   
 def edit_sprint
    @version = Version.find(params[:sprint_id]) 
  end
 
   
 def sprint_update
   @version = Version.find(params[:sprint_id])
   if @version.update_attributes(params[:version])
      flash[:notice] = l(:notice_successful_update)
      redirect_to :controller => 'kl_product', :action => 'sprint_list',:project_id => @project
   else
     respond_to do |format|
       format.html { render :action => 'edit_sprint' }
     end
   end
  end
 
 def new_user_story
    @category=KlKlgCategory.find(:all,:order=>"id").map{|c| [c.category,c.id]}
    @status=IssueStatus.find(:all,:order=>"id").map{|s| [s.name,s.id]}
    @tracker=Tracker.find(:all,:order=>"id").map{|t| [t.name,t.id]}
    @issue=Issue.new
    @klbacklog=KlBacklog.new
    @user_story=KlUserstory.new(@klbacklog,params[:sprint_id])
 end
 
 def create_user_story
    hash_i=params[:issue].dup
    hash_u=params[:user_story].dup
    hash_i['priority_id']=3+((hash_u['priority'].to_i)/10).to_i
    hash_i['author_id']=User.current.id
    hash_i['project_id']=@project.id
    hash_i['fixed_version_id']=params[:sprint_id]
    hash_u['project_id']=@project.id
    hash_u['sprint_id']=params[:sprint_id]
    
    @issue=Issue.new(hash_i)

    KlBacklog.transaction do
      @issue.save!    
      hash_u['issue_id']=@issue.id
      @klbacklog=KlBacklog.new(hash_u)
      puts @klbacklog.attributes
      @klbacklog.save!
      
     update_diagram
     
      flash[:notice] = l(:notice_successful_create)
      respond_to do |format|
        format.html { 
        redirect_to({ :action => :publish_list, :project_id => @project })
        }
      end
    end
    return
  rescue ActiveRecord::RecordInvalid=>e
    flash[:notice]= e
    @issue.valid?
    respond_to do |format|
        format.html { redirect_to({ :action => :new_user_story,:project_id => @project })
        }
    end
 end
 
 
 def edit_user_story
    @category=KlKlgCategory.find(:all).map{|c| [c.category,c.id]}
    @status=IssueStatus.find(:all).map{|s| [s.name,s.id]}
    @tracker=Tracker.find(:all).map{|t| [t.name,t.id]}
    @issue=Issue.find(params[:user_story_id])
    @klbacklog=KlBacklog.find_by_issue_id(@issue.id)||KlBacklog.new
    
    render :action => :edit_user_story,:project_id => @project,:user_story_id=>params[:user_story_id],:sprint_id=>params[:sprint_id] 
 end
 
 
 def update_user_story
    @issue=Issue.find(params[:user_story_id])
    @klbacklog=KlBacklog.find_by_issue_id(@issue.id)
    
    KlBacklog.transaction do
    unless @klbacklog.nil?
    @issue.update_attributes!(params[:issue])
    @klbacklog.update_attributes!(params[:klbacklog])
    
  else
    hash_i=params[:issue].dup
    hash_u=params[:klbacklog].dup
    hash_i['priority_id']=3+((hash_u['priority'].to_i)/10).to_i
    hash_u['project_id']=@project.id
    hash_u['sprint_id']=@issue.fixed_version_id
    hash_u['issue_id']=@issue.id
    @klbacklog=KlBacklog.new(hash_u)
    @issue.update_attributes!(hash_i)
    @klbacklog.save!
  end
#      update_diagram 
      
        flash[:notice] = l(:notice_successful_update)
        respond_to do |format|
        format.html { 
        redirect_to({ :action => :publish_list, :project_id => @project })
        }
      end
      end
      rescue ActiveRecord::RecordInvalid=>e
        flash[:notice]= e
        format.html {redirect_to({ :controller=>:kl_product,:action => :edit_user_story,:project_id => @project })}
 
 end
 
 
 def delete_user_story   
    @issue=Issue.find(params[:user_story_id])
    @klbacklog=KlBacklog.find_by_issue_id(@issue.id)
    KlBacklog.transaction do
    @issue.delete
    unless @klbacklog.nil?
    @klbacklog.delete
  end
    update_diagram
    flash[:notice] = l(:notice_successful_delete)
    respond_to do |format|
    format.html { 
    redirect_to({ :action => :publish_list, :project_id => @project,:sprint_id=>params[:sprint] })
    }  
    end
end
   rescue ActiveRecord::RecordInvalid=>e
        flash[:notice]= e
        format.html {redirect_to({:action => :publish_list, :project_id => @project,:sprint_id=>params[:sprint] })}      
end
  

 
 
  #发布计划，curr_* 为从当期开始列举(因为每个列表数目有限)
  def publish_list
   story_blocks
 #  sprint_blocks
   #@sprint_list=Version.find(:all,:conditions=>["project_id=?",@project_id])
   @sprint_list=@project.versions.reverse
   if params[:sprint_id]
      @sprint= Version.find(params[:sprint_id]) 
  else
    @sprint=  @sprint_list.first
   end
 end
 #拖动用局部刷新函数
 def drag_update_block
   if request.xhr?
     backlog=nil
     backlog=KlBacklog.find_by_issue_id(params[:issue_id]) if params[:issue_id]
     if backlog.nil?
#       flash[:notice]="not a backlog"
#       redirect_to :action=>'publist_list',:project_id=>@project
     else
       cur_sprint=nil
       cur_sprint=Version.find(params[:sprint_id]) if params[:sprint_id]
       issue=Issue.find(backlog.issue_id)
       if cur_sprint.nil?
         backlog.sprint_id = nil
         issue.fixed_version_id = nil
       else
         backlog.sprint_id=cur_sprint.id
         issue.fixed_version_id=cur_sprint.id
       end
       backlog.save
       issue.save
     end
     @story_page,@story_list=paginate :KlUserstory,:per_page=>12,:conditions=>"sprint_id is null and project_id=#{@project.id}"
  #   @sprint_page,@sprint_list=paginate :versions,:per_page=>2,:conditions=>["project_id = ?",@project.id],:order=>'id'
     @sprint_list=@project.versions.reverse
     @sprint=Version.find(params[:cur_id]) if params[:cur_id]
     render :partial=>"/kl_product/drag_update_block",:layout=>false,
              :local=>{:story_list=>@story_list,:story_page=>@story_page}
   end
 end
 
 def story_blocks
   @story_page,@story_list=paginate :KlUserstory,:per_page=>12,:conditions=>"sprint_id is null and project_id=#{@project.id}"
   render :partial=>'/kl_product/story_blocks',:layout => false if request.xhr?
 end
 
 def sprint_blocks
   @story_page,@story_list=paginate :KlUserstory,:per_page=>12,:conditions=>"sprint_id is null and project_id=#{@project.id}"
 #  @sprint_page,@sprint_list=paginate :versions,:per_page=>2,:conditions=>["project_id = ?",@project.id],:order=>'id'
   @sprint_list=@project.versions.reverse
   @sprint=Version.find(params[:value],:conditions=>["project_id=?",@project]) if params[:value]
   render :partial=>'/kl_product/drag_update_block',:local=>{:sprint=>@sprint,:story_list=>@story_list,
                                                    :story_page=>@story_page},:layout => false if request.xhr?
 end
 
  
 #hushengjian
 def show_story
   @story = KlUserstory.find(params[:story_id])
   @issue = @story.usr_issue
   rescue ActiveRecord::RecordNotFound
    render_404
 end
 
private 

#=============================以下是更新图表的数据处理========================
  def update_diagram 
        updated_date=Date.today
        if_exist = false
        sprint_id = params[:sprint_id]
        if   @diagram=KlDiagram.find(:first,:conditions=>["sprint_id=? and update_on=?",sprint_id,updated_date]) 
          if_exist = true
        else
         puts  @diagram = KlDiagrams.new(sprint_id)
       end
       
        hash_diagram = Hash.new
        hash_diagram["sprint_id"] = sprint_id
        hash_diagram["story_point"] = KlBacklog.sum(:estimate,:conditions=>"sprint_id='#{sprint_id}'")
        
        @backlogs = KlUserstory.find_all_by_sprint_id(sprint_id)
        
        left_point =  hash_diagram["story_point"]
        unless @backlogs.nil?
          @backlogs.each do |x|
             if x.usr_issue.status_id==3
              left_point -= x.estimate
             end
          end
        end
        
        hash_diagram["story_point_left"] =left_point
        hash_diagram["update_on"] = updated_date
        if if_exist
          @diagram.update_attributes(hash_diagram)
        else
          KlDiagram.create(hash_diagram)
        end

      
  end


   def find_project
     @project = Project.find(params[:project_id])if params[:project_id]
   rescue ActiveRecord::RecordNotFound
    render_404
  end
  
end
