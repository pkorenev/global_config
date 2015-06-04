require 'rails'
class MyCoolRailtie < Rails::Railtie
  # railtie code goes here
  initializer "my_cool_railtie.boot_foo" do
    #Foo.boot(Bar)
    require "/home/applications/config/smtp_settings.rb"
  end
end