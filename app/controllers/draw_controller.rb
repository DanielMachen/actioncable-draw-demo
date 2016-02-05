class DrawController < ApplicationController
  def index
  end

  def show
    @picture_id = params[:picture_id]
    unless @picture_id.match /\A[a-zA-Z0-9]+\Z/
      redirect_to :root
    end
  end
end
