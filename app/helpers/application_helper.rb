module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
       link_to "Logout", destroy_user_session_path, method: :delete
    else  
      (link_to "Login", new_user_session_path, class: "button") +
      (link_to "Register", new_user_registration_path, class: "button")
    end
  end
end

def source_helper(layout_name)
   if session[:source] 
    greeting = "Thanks for visiting me from #{session[:source]}, you are looking at my #{layout_name}"
    content_tag(:section, greeting, class: 'source-greeting')
   end
end