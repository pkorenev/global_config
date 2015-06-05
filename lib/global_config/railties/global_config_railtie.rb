require 'rails'
class MyCoolRailtie < Rails::Railtie
  # railtie code goes here
  initializer "my_cool_railtie.boot_foo" do
    #Foo.boot(Bar)
    files = %w(/home/applications/config/smtp_settings.rb)
    files.select{|f| File.exists?(f) }.each do |f|
    	require f
	end
  end
end