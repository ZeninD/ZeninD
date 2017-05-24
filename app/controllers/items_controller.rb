class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  # /items/1 GET
  def show
     unless @item = Item.where(id: params[:id]).first
       render text: "Page not fount", status: 404
     end
  end

  # /items/new GET
  def new
  end

  # /items/1/edit GET
  def edit
  end

  # /items POST
  def create
    render text: "Item created"
  end

  # /items/1 PUT
  def update
  end

  # /items/1 DELETE
  def destroy
  end

end
