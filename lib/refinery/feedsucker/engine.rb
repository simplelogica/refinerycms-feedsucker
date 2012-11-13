module Refinery
  module Feedsucker
    class Engine < Rails::Engine
      include Refinery::Engine

      isolate_namespace Refinery::Feedsucker

      initializer "register refinerycms_feedsucker plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.pathname = root
          plugin.name = "refinerycms_feedsucker"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.blog_admin_feedsucker_feeds_path }
          plugin.menu_match = /refinery\/feedsucker\/?/
          plugin.activity = [
            {
              :class_name => :'refinery/feedsucker/feed'
            }
          ]
        end
      end

      config.after_initialize do
        Refinery.register_engine(Refinery::Feedsucker)
      end
    end
  end
end
