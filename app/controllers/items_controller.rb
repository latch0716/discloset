class ItemsController < ApplicationController
  def index
    if params[:new].present?
      @items = Item.sort_new
    elsif params[:old].present?
      @items = Item.sort_old
    else
      @items = Item.all
    end
    # @item1 = Item.where(category: "トップス")
    # @item2 = Item.where(category: "アウター")
    # @item3 = Item.where(category: "インナー")
    # @item4 = Item.where(category: "ボトムス")
    # @item5 = Item.where(category: "ワンピース")
    # @item6 = Item.where(category: "オールインワン")
    # @item7 = Item.where(category: "バッグ")
    # @item8 = Item.where(category: "シューズ")
    # @item9 = Item.where(category: "アクセサリー")
    # @item10 = Item.where(category: "その他")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.valid?
      @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:image, :category, :color, :purchase_date, :price, :season, :size, :brand)
  end
end
