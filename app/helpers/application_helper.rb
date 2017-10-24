module ApplicationHelper
    def login_helper
        if current_user.is_a?(User) 
            link_to "Logout", destroy_user_session_path, method: :delete 
        else 
            (link_to "Register", new_user_registration_path) +
            "<br>".html_safe +
            (link_to "Login", new_user_session_path)
        end
    end

    def source_helper
        if session[:source]
            greeting = "Thanks for Visiting me from #{session[:source]}"
            content_tag(:p, greeting, class: "source-greeting")
        end
    end
    def copyright_generator
    BzodeViewTool::Renderer.copyright 'bZode Technologies', "The ceiling can't hold us, so please don't take my content"
    end
end

  