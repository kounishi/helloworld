require 'test_helper'

class KakeibosControllerTest < ActionController::TestCase
  setup do
    @kakeibo = kakeibos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kakeibos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kakeibo" do
    assert_difference('Kakeibo.count') do
      post :create, kakeibo: { incomeitem: @kakeibo.incomeitem, incomeprice: @kakeibo.incomeprice, outcomeitem: @kakeibo.outcomeitem, outcomeprice: @kakeibo.outcomeprice, summary: @kakeibo.summary }
    end

    assert_redirected_to kakeibo_path(assigns(:kakeibo))
  end

  test "should show kakeibo" do
    get :show, id: @kakeibo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kakeibo
    assert_response :success
  end

  test "should update kakeibo" do
    patch :update, id: @kakeibo, kakeibo: { incomeitem: @kakeibo.incomeitem, incomeprice: @kakeibo.incomeprice, outcomeitem: @kakeibo.outcomeitem, outcomeprice: @kakeibo.outcomeprice, summary: @kakeibo.summary }
    assert_redirected_to kakeibo_path(assigns(:kakeibo))
  end

  test "should destroy kakeibo" do
    assert_difference('Kakeibo.count', -1) do
      delete :destroy, id: @kakeibo
    end

    assert_redirected_to kakeibos_path
  end
end
