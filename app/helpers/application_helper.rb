module ApplicationHelper
  def max_width
    devise_controller? ? "mw-md" : "mw-xl"
  end

  def bg_color
    if controller.controller_name == "lines"
      "bg-success"
    else
      "bg-primary"
    end
  end
end
