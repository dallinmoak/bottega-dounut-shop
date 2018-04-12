class DonutsController < ApplicationController
  before_action :set_donut, only: [:show, :edit, :update, :destroy]

  def index
    @donuts = Donut.all
  end

  def show
  end

  def new
    @donut = Donut.new
  end

  def create
    @donut = Donut.new(donut_params)
  end

  private

  def set_donut
    @donut = Donut.find(params[:id])
  end

  def donut_params
    params.require(:donut).permit(:title, :description, :price)
  end
end
