class BacklogController < ApplicationController
  unloadable
  
  before_filter :find_project, :all => true
  before_filter :authorize
  menu_item :scrumkl,:all => true  
  
  
  def new
    @category=KlKlgCategory.find(:all,:order=>"id").map{|c| [c.category,c.id]}
    @status=IssueStatus.find(:all,:order=>"id").map{|s| [s.name,s.id]}
    @tracker=Tracker.find(:all,:order=>"id").map{|t| [t.name,t.id]}
    @issue=Issue.new
    @klbacklog=KlBacklog.new
    @user_story=KlUserstory.new(@klbacklog,params[:sprint_id])
  end
  
  def create
    hash_i=params[:issue].dup
    hash_u=params[:user_story].dup
    hash_i['priority_id']=3+((hash_u['priority'].to_i)/10).to_i
    hash_i['author_id']=User.current.id
    hash_i['project_id']=@project.id
    
    @issue=Issue.new(hash_i)
    hash_u['project_id']=@project.id
    
    KlBacklog.transaction do
      @issue.save!    
      hash_u['issue_id']=@issue.id
      @klbacklog=KlBacklog.new(hash_u)
      @klbacklog.save!
      flash[:notice] = l(:notice_successful_create)
      respond_to do |format|
        format.html { 
          redirect_to({ :controller =>:kl_product,:action => :demand_list, :project_id => @project })
        }
      end
    end
    return
  rescue ActiveRecord::RecordInvalid=>e
    flash[:notice]= e
    @issue.valid?
    respond_to do |format|
      format.html { redirect_to({ :controller=>:backlog,:action => :new,:project_id => @project })
      }
    end
    
  end
  
  def edit
    @category=KlKlgCategory.find(:all).map{|c| [c.category,c.id]}
    @status=IssueStatus.find(:all).map{|s| [s.name,s.id]}
    @tracker=Tracker.find(:all).map{|t| [t.name,t.id]}
    @klbacklog=KlBacklog.find(params[:story_id])
    @issue=Issue.find(@klbacklog.issue_id)
    render :controller=>:backlog,:action => :edit,:project_id => @project,:story_id=>params[:story_id] 
  end
  
  def update
    @klbacklog=KlBacklog.find(params[:story_id])
    @issue=Issue.find(@klbacklog.issue_id)
    KlBacklog.transaction do
      @klbacklog.update_attributes!(params[:klbacklog])
      @issue.update_attributes!(params[:issue])
      flash[:notice] = l(:notice_successful_update)
      respond_to do |format|
        format.html { 
          redirect_to({ :controller =>:kl_product,:action => :demand_list, :project_id => @project })
        }
      end
    end
  rescue ActiveRecord::RecordInvalid=>e
    flash[:notice]= e
    format.html {redirect_to({ :controller=>:backlog,:action => :edit,:project_id => @project })}
    
  end
  
  
  
  def delete
    @klbacklog=KlBacklog.find(params[:story_id])
    @issue=Issue.find(@klbacklog.issue_id)
    
    KlBacklog.transaction do
      @issue.destroy
      @klbacklog.destroy
      flash[:notice] = l(:notice_successful_delete)
      respond_to do |format|
        format.html { 
          redirect_to({ :controller =>:kl_product,:action => :demand_list, :project_id => @project })
        }  
      end
    end
  rescue ActiveRecord::RecordInvalid=>e
    flash[:notice]= e
    format.html {redirect_to({ :controller =>:kl_product,:action => :demand_list, :project_id => @project })}      
  end
  
  
  
  private 
  def find_project
    @project = Project.find(params[:project_id])if params[:project_id]
  rescue ActiveRecord::RecordNotFound
    render_404
  end
  
  def find_stories
    @story_list = KlUserstory.find(:all, :conditions=>["project_id = ? sprint_id is null",@project.id])
    curr_story =   curr_story || 0
    @story_list =  @story_list[curr_story,12]
  end
  
end
