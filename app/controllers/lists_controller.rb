class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = Restaurant.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  def show
    @list = list.find(params[:id])
  end

  private

  def list_params
    params.require(:list).permit(:title, :post_url, :overview)
  end
end
