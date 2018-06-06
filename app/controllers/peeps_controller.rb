class PeepsController < ApplicationController

  def create
    current_user.peeps.create(peep_params)

    redirect_to root_path
  end

  private

    def peep_params
      params.require(:peep).permit(:body)
    end
end
