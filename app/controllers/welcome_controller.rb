class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  layout 'welcome'
  def index
    if current_user
      redirect_to images_path
    end
  end

  def fun_page
  end
end
