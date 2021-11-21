class FavoritesController < ApplicationController
  def index
    if params[:count_only]
      render(partial: "favorites/count")
    end
  end

  def create
    @favorite = Favorite.create(user: current_user, concert_id: params[:concert_id])
    
    respond_to do |format|
      format.turbo_stream
    end
  end

  def destroy
    @favorite = Favorite.find_by(id: params[:id])

    if @favorite.present?
      @favorite.destroy
    end

    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def favorite_params
    params.require(:concer_id)
  end
end