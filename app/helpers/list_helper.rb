module ListHelper
  def link_to_complete item
      params = { "item[completed]": true }

    link_to icon("fas", "check"), item_path(item, params), method: :patch, title: "Complete"
  end

  def link_to_delete item
     link_to icon("fas", "times"), item_path(item), method: :delete, title: "Delete"
  end

  def link_to_focus item
    link_to icon("fas", "star"), focus_item_path(item), method: :post, title: "Focus"
  end

  def link_to_unfocus item
    link_to icon("far", "star"), unfocus_item_path(item), method: :delete, title: "Unfocus"
  end
end
