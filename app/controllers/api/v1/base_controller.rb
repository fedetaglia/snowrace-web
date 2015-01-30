class Api::V1::BaseController < Api::BaseController
  
  version 1


  before_filter :authenticate


  protected

  def authenticate
    authenticate_token || unauthorized
  end

  def authenticate_token
    params[:auth_token] == "/kejA+bRsVnekdh-/yHMgRt%(" ? true : false
  end

  def unauthorized
    error! :unauthenticated
  end


end
