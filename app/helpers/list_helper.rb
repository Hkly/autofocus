module ListHelper
  def button_for_completed item
    options = {
      method: :patch,
      params: {"item[completed]": true, "item[date_completed]": Time.now}
    }
    
    button_to "done", item_path(item), options
  end
end
