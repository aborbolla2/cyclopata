class HomeController < ApplicationController
  skip_before_action :authenticate_user!,only:[:index]


  def index
    if current_user
      redirect_to admin_path
    else
      root_path
    end
  end

  def admin

  end

  def settings

  end
end
