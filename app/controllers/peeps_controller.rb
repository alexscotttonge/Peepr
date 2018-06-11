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
      { content: content_from_params }
    end

    def content_from_params
      case params[:peep][:content_type]
      when "TextPeep" then TextPeep.new(text_peep_content_params)
      when "PhotoPeep" then PhotoPeep.new(photo_peep_content_params)
      end
    end

    def text_peep_content_params
      params.require(:peep).require(:content).permit(:body)
    end

    def photo_peep_content_params
      params.require(:peep).require(:content).permit(:images)
    end

    def redirect_options_for(peep)
      if peep.persisted?
        { notice: "Peeped successfully!" }
      else
        { alert: "Could not Peep yo" }
      end
    end
end
