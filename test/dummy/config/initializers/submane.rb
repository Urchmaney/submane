Rails.configuration.before_initialize do
  Submane.configuration do |config|
    config.account_class_name = "User"
  end
end
