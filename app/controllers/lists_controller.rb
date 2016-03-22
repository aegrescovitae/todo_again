class ListsController < ApplicationController
  before_action :list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show
    @items = @list.items
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    redirect_to root_path
  end

  def edit
  end

  def update
    @list.update(list_params)
    redirect_to root_path
  end

  def destroy
    @list.destroy
    redirect_to root_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def list
    @list = List.find(params[:id])
  end
end
