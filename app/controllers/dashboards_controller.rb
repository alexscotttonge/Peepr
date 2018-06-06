class DashboardsController < ApplicationController

  def show
    render locals: { peep: Peep.new,
                     peeps: current_user.peeps }
  end
end
