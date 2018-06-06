class PeepsController < ApplicationController

  def show
    peep = Peep.find(params[:id])
    render locals: { peep: peep }
  end

  def create
    peep = current_user.peeps.create(peep_params)

    redirect_to root_path, redirect_options_for(peep)
  end

  private

    def peep_params
      params.require(:peep).permit(:body)
    end

    def redirect_options_for(peep)
      if peep.persisted?
        { notice: "Peeped successfully!" }
      else
        { alert: "Could not Peep yo" }
      end
    end
end
