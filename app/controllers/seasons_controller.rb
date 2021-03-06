class SeasonsController < ApplicationController
  def index
    @seasons = Season.all.sort_by { |season| season.beginning_of_season }.reverse
  end

  def show
    @season = Season.find(params[:id])
  end

  def create
    season = Season.new(season_params)
    if season.save
      redirect_to season
    end
  end

  private

  def season_params
    params.require(:season).permit(:active)
  end
end
