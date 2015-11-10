class Hq::DashboardController < Hq::ApplicationController
  def index

  end

  def tables
    @tasks = Task.includes(:user).all
  end
end
