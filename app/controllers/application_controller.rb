class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_random_interval

    def set_random_interval
      r = Random.new
      @interval = r.rand(1..3)
      chance = r.rand(5..10)
      chance % @interval == 0 ? 0 : @interval
    end
end
