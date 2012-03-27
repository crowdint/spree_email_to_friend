class Spree::EmailToFriendConfiguration < Spree::Preferences::Configuration
  preference :mails_from, :string, default: 'no-reply@example.com'
end
