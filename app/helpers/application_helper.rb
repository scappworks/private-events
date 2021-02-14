module ApplicationHelper
    def flash_type(type)
        case type.to_sym
        when :notice then "notice"
        when :alert then "alert"
        end
    end
end
