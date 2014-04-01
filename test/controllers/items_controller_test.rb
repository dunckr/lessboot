require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { category: @item.category, cost: @item.cost, item: @item.item, last_update: @item.last_update, live_preview_url: @item.live_preview_url, number: @item.number, rating: @item.rating, rating_decimal: @item.rating_decimal, sales: @item.sales, tags: @item.tags, thumbnail: @item.thumbnail, uploaded_on: @item.uploaded_on, url: @item.url, user: @item.user }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    patch :update, id: @item, item: { category: @item.category, cost: @item.cost, item: @item.item, last_update: @item.last_update, live_preview_url: @item.live_preview_url, number: @item.number, rating: @item.rating, rating_decimal: @item.rating_decimal, sales: @item.sales, tags: @item.tags, thumbnail: @item.thumbnail, uploaded_on: @item.uploaded_on, url: @item.url, user: @item.user }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
