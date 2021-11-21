class ApplicationController < ActionController::Base
  before_action :set_current_user

  attr_accessor :current_user

  private

  def set_current_user
    @current_user ||= User.find_or_create_by(name: "Somec")
  end
end
