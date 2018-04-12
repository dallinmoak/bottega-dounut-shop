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

    respond_to do |format|
      if @donut.save
        format.html { redirect_to donuts_path, notice: "Your donut is now live."}
      else
        format.html { render :new}
      end
    end
  end
  
  def edit
  end

  def update
    respond_to do |format|
      if @donut.update(donut_params)
        format.html { redirect_to donuts_path, notice: "You have successfully updated your donut." }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @donut.destroy
    respond_to do |format|
      format.html { redirect_to donuts_url, notice: "Donut was deleted." }
    end
  end

  private

  def set_donut
    @donut = Donut.find(params[:id])
  end

  def donut_params
    params.require(:donut).permit(:title, :description, :price)
  end
end
