class ItemsController < ApplicationController
  before_action :item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Items.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    redirect_to lists_path
  end

  def edit
  end

  def update
    @item.update(item_params)
    redirect_to root_path
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :description)
  end

  def item
    @item = Item.find(params[:id])
  end

end
