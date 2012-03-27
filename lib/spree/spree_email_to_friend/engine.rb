require 'recaptcha/rails'

module Spree
  module Captcha; end

  module EmailToFriend
    class Engine < Rails::Engine
      engine_name 'spree_email_to_friend'

      config.autoload_paths += %W(#{config.root}/lib)

      initializer "spree.email_to_friend.preferences", :after => "spree.environment" do |app|
        Spree::Captcha::Config = Spree::CaptchaConfiguration.new
        Spree::EmailToFriend::Config = Spree::EmailToFriendConfiguration.new
      end

      def self.activate
        Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
          Rails.application.config.cache_classes ? require(c) : load(c)
        end
      end

      config.to_prepare &method(:activate).to_proc
    end
  end
end
