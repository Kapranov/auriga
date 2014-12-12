require 'test_helper'

class H2ControllerTest < ActionController::TestCase
  setup do
    @h2 = h2(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:h2)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create h2" do
    assert_difference('H2.count') do
      post :create, h2: { 1dns: @h2.1dns, 2dns: @h2.2dns, abon_id: @h2.abon_id, blocked: @h2.blocked, commnet: @h2.commnet, def_gw: @h2.def_gw, ip: @h2.ip, mac: @h2.mac, netmask: @h2.netmask, sw_port: @h2.sw_port, tp: @h2.tp, vlan: @h2.vlan }
    end

    assert_redirected_to h2_path(assigns(:h2))
  end

  test "should show h2" do
    get :show, id: @h2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @h2
    assert_response :success
  end

  test "should update h2" do
    patch :update, id: @h2, h2: { 1dns: @h2.1dns, 2dns: @h2.2dns, abon_id: @h2.abon_id, blocked: @h2.blocked, commnet: @h2.commnet, def_gw: @h2.def_gw, ip: @h2.ip, mac: @h2.mac, netmask: @h2.netmask, sw_port: @h2.sw_port, tp: @h2.tp, vlan: @h2.vlan }
    assert_redirected_to h2_path(assigns(:h2))
  end

  test "should destroy h2" do
    assert_difference('H2.count', -1) do
      delete :destroy, id: @h2
    end

    assert_redirected_to h2_index_path
  end
end
