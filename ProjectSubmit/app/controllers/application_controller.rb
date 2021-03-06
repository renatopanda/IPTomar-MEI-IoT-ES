class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #autenticação do user antes de entrar.....
  #before_action :authenticate_user!
  before_action only: [:index, :show, :new, :edit] do  
  	@sb_schools = School.all
  	@sb_courses = Course.order("RANDOM()").limit(10)
  	@sb_tags = ActsAsTaggableOn::Tag.most_used(10)
  end
end
