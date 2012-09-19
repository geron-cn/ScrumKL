module KlProductHelper
   def render_story_tooltip(story)
      "<strong>#{l(:field_project)}</strong>: #{link_to_project(story.usr_issue.project)}<br />" +
      "<strong>#{l(:field_category)}</strong>: #{story.klcategory}<br />" +
      "<strong>#{l(:field_priority)}</strong>: #{story.priority}<br />" +
      "<strong>#{l(:lab_storypoint)}</strong>: #{story.estimate}<br />" +
      "<strong>#{l(:field_description)}</strong>: #{truncate(story.usr_issue.description.gsub(/<.*?>/, ''),:length => 800) if story.usr_issue.description}<br/>"
  end
  
  def pagination_link_remote(paginator, options={})
    url=options[:url]
    params[:update]=options[:update]

    html = ''
    if paginator.current.previous
      url[:page]=paginator.current.previous
      params[:url]=url
      html << link_to_remote('&#171; ' + l(:label_previous),params) + ' '
    end

    html << (pagination_links_each(paginator, options) do |n|
      url[:page]=n
      params[:url]=url
      link_to_remote(n.to_s,params) + ' '
    end || '')

    if paginator.current.next
      url[:page]=paginator.current.next
      params[:url]=url
      html << ' ' + link_to_remote((l(:label_next) + ' &#187;'), params)
    end
    
    html
  end
  def pagination_link(paginator,options={})
    url=options[:url]

    html = ''
    if paginator.current.previous
      url[:page]=paginator.current.previous
      html << link_to('&#171; ' + l(:label_previous),url) + ' '
    end

    html << (pagination_links_each(paginator, options) do |n|
      url[:page]=n
      link_to(n.to_s,url) + ' '
    end || '')

    if paginator.current.next
      url[:page]=paginator.current.next
      html << ' ' + link_to((l(:label_next) + ' &#187;'), url)
    end
    
    html
  end
end
