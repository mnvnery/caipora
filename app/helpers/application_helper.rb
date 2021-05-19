module ApplicationHelper
    def current_class?(test_path)
        return 'active' if request.path == test_path
        ''
    end

    def background?
        if request.path == "/about"
            return "pink"
        elsif request.path == "/trips"
            return "green"
        elsif request.path == "/contact"
            return "blue"
        else
            return ""
        end        
    end
end
