class DrawController < ApplicationController
  def index
  end

  def show
    @picture_id = params[:picture_id]
    unless @picture_id.match /\A[a-zA-Z0-9]+\Z/
      redirect_to :root
    end
  end

  def new
  #  @picture_id = params[:room_id]
  #  redirect_to action: "show", picture_id: @picture_id
  #  redirect_to action: "index"
  end
end
