require 'redmine'

Redmine::Plugin.register :redmine_scrumkl do
  name 'Redmine Scrumkl plugin'
  author 'cqu 515'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
 
  
  project_module :scrumkl do 
      permission :scrumkl, {:init_list => [:index], 
                           :backlog=>[:new,:create,:delete,:edit,:update], 
                           :kl_product => [:demand_list,:publish_list,:sprint_list,:new_sprint,:sprint_save,:story_blocks,:sprint_blocks,
                                  :delete_sprint,:edit_sprint,:sprint_update,:new_user_story,:create_user_story,:edit_user_story,:delete_user_story,
                                  :update_user_story,:drag_update_block,:show_story],
                           :charts => [:get_sprint_chart,:index,:update_sprint_chart],
                           :kl_project=>[:index,:task_list,:new_task,:task_create,:task_edit,:task_update,:task_delete,:assign_to,:switch_status,:task_click,:show_task]}
  end
  
  menu :project_menu, :scrumkl, { :controller => 'init_list', :action => 'index' }, :caption => :scrumkl_caption,:param => :project_id

end
