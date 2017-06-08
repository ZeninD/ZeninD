class ItemsController < ApplicationController

  before_filter :find_item,      only: [:show, :edit, :update, :destroy, :upvote]
  before_filter :check_if_admin, only: [:edit, :update, :new, :destroy, :create]

  def index
    @items = Item
    @items = @items.where("price >= ?", params[:price_from])         if params[:price_from]
    @items = @items.where("created_at >= ?", 1.day.ago)              if params[:today]
    @items = @items.where("voutes_count >= ?", params[:voutes_from]) if params[:voutes_from]
    @items = @items.order("voutes_count DESC", "price").limit(50)
  end

  def expensive
    @items = Item.where("price > 1000")
    render "index"
  end

  # /items/1 GET
  def show
     unless @item
       render text: "Page not fount", status: 404
     end
  end

  # /items/new GET
  def new
    @item = Item.new
  end

  # /items/1/edit GET
  def edit
  end

  # /items POST
  def create
    @item = Item.create(params[:item])
    if @item.errors.empty?
      redirect_to item_path(@item) #render "show" wrong
    else
      render "new"
    end
  end

  # /items/1 PUT
  def update
    @item.update_attributes(params[:item])
    if @item.errors.empty?
      redirect_to item_path(@item)
    else
      render "edit"
    end
  end

  # /items/1 DELETE
  def destroy
    @item.destroy
    redirect_to action: "index"
  end

  def upvote
    @item.increment!(:voutes_count)
    redirect_to action: "index"
  end

  private

    def find_item
      @item = Item.where(id: params[:id]).first
      render_404 unless @item
    end

end
