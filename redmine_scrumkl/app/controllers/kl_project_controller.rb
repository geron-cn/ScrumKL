class KlProjectController < ApplicationController
  unloadable
  
  #menu authority
  include IssuesHelper
  helper :issues
  helper :queries
  include QueriesHelper
  helper :sort
  include SortHelper
  helper :projects
  
  
  before_filter :find_project, :authorize, :all => true
  menu_item :scrumkl,:all => true      
  
  
  def index
    @status=IssueStatus.find(:all)
    @sprints  = @project.versions.reverse
    if params[:sprint]
      sprint_id = params[:sprint][:id] 
    else
      sprint_id =  params[:sprint_id] ||  @sprints.first
    end
    @sprint= Version.find(sprint_id)
    @usr_stories = KlUserstory.find(:all,:conditions=>["project_id=? and sprint_id=?",@project.id,sprint_id])
  rescue ActiveRecord::RecordNotFound
    flash[:notice]=l(:notice_no_sprint)
    redirect_to :controller =>:kl_product,:action=>:sprint_list,:project_id => @project
  end
  
  def show_task
   @issue =Issue.find(params[:task_id]) 
   rescue ActiveRecord::RecordNotFound
    render_404
 end
  
  
  def assign_to
    value=nil
    value = User.find(params[:value]) unless params[:value].blank?
    task=Issue.find(params[:task_id])
    eval "task.assigned_to_id=#{value ? value.id : "nil"}"
    task.save
  end
  
  def switch_status
    value=nil
    value = IssueStatus.find(params[:value]) unless params[:value].blank?
    task=Issue.find(params[:task_id])
    eval "task.status_id=#{value ? value.id : "nil"}"
    task.save
  end
  
  
  
  def new_task
    @status=IssueStatus.find(:all,:order=>"id").map{|s| [s.name,s.id]}
    @tracker=Tracker.find(:all,:order=>"id").map{|t| [t.name,t.id]}
    @issue=Issue.new
    @members=Issue.find(params[:id]).assignable_users
    @assigned_to_id = @issue.assigned_to
  end
  
  def task_create
    hash_i=params[:issue].dup
    hash_i['author_id']=User.current.id
    hash_i['project_id']=@project.id
    hash_i['parent_issue_id']=params[:user_story_id]
    sprint_id = KlUserstory.find_by_issue_id(params[:user_story_id]).sprint_id
    hash_i['fixed_version_id'] = sprint_id
    @issue=Issue.new(hash_i)
    @issue.save!
    flash[:notice] = l(:notice_successful_create)
    respond_to do |format|
      format.html { 
        redirect_to({ :controller =>:kl_project,:action =>:index, :project_id => @project, :sprint_id=>sprint_id})
      }
    end
    
    return
  rescue ActiveRecord::RecordInvalid=>e
    flash[:notice]= e
    @issue.valid?
    respond_to do |format|
      format.html { redirect_to({ :controller=>:kl_project,:action => :new_task,:project_id => @project })
      }
    end
    
  end
  
  def task_edit
    @status=IssueStatus.find(:all,:order=>"id").map{|s| [s.name,s.id]}
    @tracker=Tracker.find(:all,:order=>"id").map{|t| [t.name,t.id]}
    @issue=Issue.find(params[:task_id])
    @members = @issue.assignable_users
    @assigned_to_id = @issue.assigned_to
  end
  
  def task_update
    @issue=Issue.find(params[:task_id])
    @issue.update_attributes!(params[:issue])
    flash[:notice] = l(:notice_successful_update)
    respond_to do |format|
      format.html { 
        redirect_to({ :controller =>:kl_project,:action => :task_list, :project_id => @project })
      }
    end
  rescue ActiveRecord::RecordInvalid=>e
    flash[:notice]= e
    format.html {redirect_to({ :controller=>:kl_project,:action => :task_edit,:project_id => @project })}
    
  end
  
  def task_delete
    @issue=Issue.find(params[:task_id])
    @issue.destroy
    flash[:notice] = l(:notice_successful_delete)
    respond_to do |format|
      if params[:stay]=="y"
        format.html { 
          redirect_to({ :controller =>:kl_project,:action => :index, :project_id => @project,:sprint_id =>params[:sprint_id] })
        }   
      else
        format.html { 
          redirect_to({ :controller =>:kl_project,:action => :task_list, :project_id => @project })
        } 
      end
    end
  rescue ActiveRecord::RecordInvalid=>e
    flash[:notice]= e
    if params[:stay]=="y"
      format.html {redirect_to({ :controller =>:kl_project,:action => :task_list, :project_id => @project ,:sprint_id =>params[:sprint_id]})}   
    else
      format.html { 
        redirect_to({ :controller =>:kl_project,:action => :task_list, :project_id => @project })
      } 
    end
  end
  
  def task_click
    @issue=Issue.find(params[:task_id])
    
    if  params[:percent]=='100'
      @issue.status_id=3
      
    elsif params[:percent]==@issue.done_ratio.to_s
      if @issue.status_id==4
        @issue.status_id=2
      else @issue.status_id=4
      end
    else
      @issue.status_id=2
      
    end
    
    @issue.done_ratio=params[:percent].to_i
    
    
    
    @issue.save
    respond_to do |format|
      format.html { 
        redirect_to({ :controller =>:kl_project,:action => :index, :project_id => @project,:sprint_id =>params[:sprint] })
      }   
      
    end    
  end
  
  #  任务列表
  def task_list
    puts "task list"
#     retrieve_query
#    sort_init(@query.sort_criteria.empty? ? [['id', 'desc']] : @query.sort_criteria)
#    sort_update(@query.sortable_columns)
#
#    if @query.valid?
#      case params[:format]
#      when 'csv', 'pdf'
#        @limit = Setting.issues_export_limit.to_i
#      when 'atom'
#        @limit = Setting.feeds_limit.to_i
#      when 'xml', 'json'
#        @offset, @limit = api_offset_and_limit
#      else
#        @limit = per_page_option
#      end
#
#      @issue_count = @query.issue_count
#      @issue_pages = Paginator.new self, @issue_count, @limit, params['page']
#      @offset ||= @issue_pages.current.offset
#      @issues = @query.issues(:include => [:assigned_to, :tracker, :priority, :category, :fixed_version],
#                              :order => sort_clause,
#                              :conditions => ["parent_id is not null and project_id =? ",
#                              :offset => @offset,
#                              :limit => @limit)
#      @issue_count_by_group = @query.issue_count_by_group
#      
   
    retrieve_query
    sort_init(@query.sort_criteria.empty? ? [['id', 'desc']] : @query.sort_criteria)
    sort_update(@query.sortable_columns)
    
    @task_page,@task_list = paginate :issues, :per_page=>25,:conditions=>["parent_id is not null and project_id =? ",@project.id]
  end
  
  private
  
  def find_project
    @project = Project.find(params[:project_id])if params[:project_id]
  rescue ActiveRecord::RecordNotFound
    render_404
  end
  
end
