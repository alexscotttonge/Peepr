class LikesController < ApplicationController
  before_action :require_login
  def create
    current_user.like(peep)

    redirect_to root_path
  end

  def destroy
    current_user.unlike(peep)

    redirect_to root_path
  end

  private

    def peep
      @_peep ||= Peep.find(params[:id])
    end
end
