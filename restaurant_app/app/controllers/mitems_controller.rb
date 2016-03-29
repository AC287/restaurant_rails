class MitemsController < ApplicationController

  def index
    @mitems = Mitem.all
  end

  def show
    @mitem = Mitem.find(params[:id])
  end

  def new
    @mitem = Mitem.new
  end

  def create
    @mitem = Mitem.create(mitem_params)
    redirect_to mitems_path
  end

  def edit
    @mitem = Mitem.find(params[:id])
  end

  def update
    @mitem = Mitem.find(params[:id])
    @mitem.update(mitem_params)
    redirect_to mitems_path
  end

  def destroy
    @mitem = Mitem.find(params[:id])
    @mitem.destroy
    redirect_to mitems_path
  end

  private

  def mitem_params
    params.require(:mitem).permit(:name, :price, :img_url, :desc)
  end

end
