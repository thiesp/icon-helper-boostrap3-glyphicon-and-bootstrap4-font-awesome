module IconHelper
  module ViewHelper
    def bootstrap_icon(icon, text=nil)
      if defined? FontAwesome
        icon = font_awesome_bootstrap_icon(icon)
      elsif Gem.loaded_specs["bootstrap-sass"]
        icon = glyphicon_bootstrap_icon(icon)
      end
      if text
        raw("#{icon} #{text}")
      else
        raw(icon)
      end
    end

    # Available icons are listed on http://getbootstrap.com/components/#glyphicons
    def glyphicon_bootstrap_icon(icon)
      "<i class='glyphicon glyphicon-#{icon}'></i>"
    end

    # Available icons are listed on http://fontawesome.io/icons/
    def font_awesome_bootstrap_icon(icon)
      "<i class='fa fa-#{icon}'></i>"
    end
  end
end
