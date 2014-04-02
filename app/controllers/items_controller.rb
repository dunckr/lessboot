class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  def index
    @items = Item.paginate(:page => params[:page])
  end

  # GET /items/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:number, :item, :url, :user, :thumbnail, :sales, :rating, :rating_decimal, :cost, :uploaded_on, :last_update, :tags, :category, :live_preview_url)
    end
end

