module ApplicationHelper
  def breadcrumbs_tag(chunks = [])
    if chunks
      chunks.unshift(link_to('home', root_path))

      current    = content_tag(:li, chunks.pop, class: 'breadcrumb-item current')
      previous   = content_tag(:li, chunks.pop, class: 'breadcrumb-item previous')
      chunk_tags = chunks.map{ |c| content_tag(:li, c, class: 'breadcrumb-item') }.push(previous, current).join.html_safe

      content_tag(:ul, chunk_tags, class: 'breadcrumbs')
    end
  end

  def menu_item_is_active_class(link_path)
    current_page?(link_path) ? 'is-menu-item-active' : ''
  end
end
