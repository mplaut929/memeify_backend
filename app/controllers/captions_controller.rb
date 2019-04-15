class CaptionsController < ApplicationController
  def index
    @captions = Caption.all
    render json: @captions
  end

  def show
    @caption = Caption.find(params[:id])
    render json: @caption
  end

  def create
    @caption = Caption.create(captions_params)
    render json: @caption
  end

  def update
    @caption = Caption.find(params[:id])
    @caption.update(captions_params)
    render json: @caption
  end


  def destroy
    @caption = Caption.find(params[:id])
    @caption.destroy

    head :ok
  end





private
  def captions_params
    params.require(:caption).permit(:text, :likes, :meme_id)
  end

end
