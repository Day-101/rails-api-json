class ApplicationController < ActionController::API
  def redirect_if_not_signed_in
    redirect_to root_path flash.alert="You have to be connected to access this page !" unless user_signed_in?
  end

  def redirect_if_not_user
    redirect_to root_path flash.alert="You can't access this page !" unless current_user == @article.user
  end
end
