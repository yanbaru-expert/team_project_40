module ApplicationHelper
  def max_width
    devise_controller? ? "mw-md" : "mw-xl"
  end
end
