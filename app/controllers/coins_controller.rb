class CoinsController < ApplicationController
  before_action :set_coin, only: [:show, :update, :destroy]

  # GET /coins
  def index
    @coins = Coin.select("id, name").all
    render json: @coins
  end

  # GET /coins/1
  def show
    @coin = Coin.find(params[:id])
    render json: @coin.to_json(:include => { :exchanges => { :only => [:id, :name] }})
  end

  # POST /coins
  def create
    @coin = Coin.new(coin_params)

    if @coin.save
      render json: @coin, status: :created, location: @coin
    else
      render json: @coin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coins/1
  def update
    if @coin.update(coin_params)
      render json: @coin
    else
      render json: @coin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /coins/1
  def destroy
    @coin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coin
      @coin = Coin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def coin_params
      params.require(:coin).permit(:name, :symbol, :description, :url, :github, :whitepaper, :telegram, :discord, :logo)
    end
end
