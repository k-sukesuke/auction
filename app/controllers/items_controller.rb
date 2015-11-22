class ItemsController < ApplicationController

  def show
    #Item というモデルに対してfindメソッドでidを検索させている
    @item = Item.find(params[:id])
  end

  def index
    #商品一覧@itemsへ格納
    @items = Item.all
  end

  def new
    #追加商品を@itemに格納
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    # 上の行はインスタンスを作っただけ。saveメソッドで保存しないと、消える。
    @item.save
    redirect_to "/items/#{@item.id}"
  end

  def edit
    #Item というモデルに対してfindメソッドでidを検索させている
    @item = Item.find(params[:id])

    @item.save
    redirect_to "/items/#{@item.id}"
  end

  def update
    #Item というモデルに対してfindメソッドでidを検索させている
    @item = Item.find(params[:id])

    @item.save
    redirect_to "/items/#{@item.id}"
  end

  private

    def item_params
    params.require(:item).permit(:name, :price, :seller_id, :description, :email, :image_url)
  end

end
