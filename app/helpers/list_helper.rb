module ListHelper
  def button_to_complete item
    options = {
      method: :patch,
      params: { "item[completed]": true }
    }

    button_to "done", item_path(item), options
  end
end
