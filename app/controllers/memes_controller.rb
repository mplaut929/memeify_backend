class MemesController < ApplicationController
  def index
    @memes = Meme.all
  render json: @memes
  end

  def show
    @meme = Meme.find(params[:id])
    render json: @meme
  end

  def create
    @meme = Meme.create(memes_params)
    render json: @meme
  end






private
  def memes_params
    params.require(:meme).permit(:url, :title)
  end
end
