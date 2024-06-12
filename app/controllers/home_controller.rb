class HomeController < ApplicationController
  def index
    if user_signed_in?
      @projects = current_user.projects
    else
      @projects = []
    end
  end
end
