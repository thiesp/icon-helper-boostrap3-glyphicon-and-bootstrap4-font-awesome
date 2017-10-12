module IconHelper
  module Rails
    class Engine < ::Rails::Engine
      initializer "my_gem.view_helpers" do
        ActionView::Base.send :include, ViewHelper
      end
    end
  end
end