class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
# do not generate css, coffescript or
  config.generators do |g|
  g.orm             :active_record
  g.template_engine :erb
  g.test_framework  :test_unit, fixture: false
 # g.stylesheets     false
  g.javascripts     false
  g.coffescript     false
  end

end
