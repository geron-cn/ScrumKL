module KlProjectHelper
  include IssuesHelper
  
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
  
  
  def  render_task_with_tree(issue)
    s = ''
    ancestors = issue.root? ? [] : issue.ancestors.visible.all
    ancestors.each do |ancestor|
      s << '<div><strong>' + content_tag('p', ancestor.subject)
    end
    s << '<div>'
    subject = h(issue.subject)
    if issue.is_private?
      subject = content_tag('span', l(:field_is_private), :class => 'private') + ' ' + subject
    end
    s << content_tag('h3', subject)
    s << '</div>' * (ancestors.size + 1)
    s
  end
  
end
