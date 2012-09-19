ActionController::Routing::Routes.draw do |map|
  map.with_options :controller => 'init_list' do |init_list|
    init_list.with_options :conditions => {:method => :get} do |init_list|
      init_list.connect 'scrumkl/:project_id/index/', :action =>'index'
    end
  end
  
  
  map.with_options :controller => 'backlog' do |backlog|
    backlog.with_options :conditions => {:method => :get} do |backlog|
      backlog.connect 'scrumkl/:project_id/backlog/new', :action =>'new'
      backlog.connect 'scrumkl/:project_id/backlog/edit', :action =>'edit'
    end
  end
  
  map.with_options :controller => 'kl_product' do |product|
    product.with_options :conditions => {:method => :get} do |product|
      product.connect 'scrumkl/:project_id/product/backlogs', :action =>'demand_list'
      product.connect 'scrumkl/:project_id/product/backlogs/:page', :action =>'demand_list'
      product.connect 'scrumkl/:project_id/product/sprints', :action =>'sprint_list'
      product.connect 'scrumkl/:project_id/product/sprints/:page', :action =>'sprint_list'
      product.connect 'scrumkl/:project_id/product/sprint/release', :action =>'publish_list'
      product.connect 'scrumkl/:project_id/product/sprint/new', :action =>'new_sprint'
      product.connect 'scrumkl/:project_id/product/sprint/edit', :action =>'edit_sprint'
      product.connect 'scrumkl/:project_id/product/userstory/new', :action =>'new_user_story'
      product.connect 'scrumkl/:project_id/:sprint_id/userstory/new', :action =>'new_user_story'
      product.connect 'scrumkl/:project_id/product/userstory/edit', :action =>'edit_user_story'
      product.connect 'scrumkl/:project_id/product/userstory/show/:story_id', :action =>'show_story'
    end
    
    
  end
  
  map.with_options :controller => 'kl_project' do |project|
    project.with_options :conditions => {:method => :get} do |project|
      project.connect 'scrumkl/:project_id/tasks', :action =>'task_list'
      project.connect 'scrumkl/:project_id/tasks/:page', :action =>'task_list'
      project.connect 'scrumkl/:project_id/sprint/', :action =>'index'
      project.connect 'scrumkl/:project_id/sprint/:sprint_id', :action =>'index'
      project.connect 'scrumkl/:project_id/task/new', :action =>'new_task'
      project.connect 'scrumkl/:project_id/task/edit', :action =>'task_edit'
      project.connect 'scrumkl/:project_id/task/show/:task_id', :action =>'show_task'
    end
    
    project.with_options :conditions => {:method => :post} do |project|
      project.connect 'scrumkl/:project_id/sprint/', :action =>'index'
    end
    
  end
  
  map.with_options :controller => 'charts' do |chart|
    chart.with_options :conditions => {:method => :get} do |chart|
      chart.connect 'charts/:sprint_id/sprint_chart', :action =>'get_sprint_chart'
      chart.connect 'charts/pie_chart/status_chart', :action => 'status_chart'
      chart.connect 'charts/:project_id', :action =>'index'
      chart.connect 'charts/:project_id/:sprint_id', :action =>'index'
    end
  end
  
end

