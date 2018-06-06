class DashboardsController < ApplicationController

  def show
    render locals: { peep: Peep.new }
  end
end
