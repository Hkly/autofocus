module ListHelper
  def link_to_complete item
      params = { "item[completed]": true }

    link_to icon("fas", "check"), item_path(item, params),
      method: :patch, title: "Complete", alt: "Complete", class: "complete-icon"
  end

  def link_to_delete item
     link_to icon("fas", "times"), item_path(item),
      method: :delete, title: "Delete", alt: "Delete", class: "delete-icon"
  end

  def link_to_focus item
    link_to icon("far", "star"), focus_item_path(item),
      method: :post, title: "Focus", alt: "Focus", class: "unfocused-star"
  end

  def link_to_unfocus item
    link_to icon("fas", "star"), unfocus_item_path(item),
      method: :delete, title: "Unfocus", alt: "Unfocus", class: "focused-star"
  end
end
