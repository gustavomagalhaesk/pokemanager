require "test_helper"

class PokedexControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokedex = pokedex(:one)
  end

  test "should get index" do
    get pokedex_index_url
    assert_response :success
  end

  test "should get new" do
    get new_pokedex_url
    assert_response :success
  end

  test "should create pokedex" do
    assert_difference("Pokedex.count") do
      post pokedex_index_url, params: { pokedex: { name: @pokedex.name, pk_type: @pokedex.pk_type, pokedex_id: @pokedex.pokedex_id } }
    end

    assert_redirected_to pokedex_url(Pokedex.last)
  end

  test "should show pokedex" do
    get pokedex_url(@pokedex)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokedex_url(@pokedex)
    assert_response :success
  end

  test "should update pokedex" do
    patch pokedex_url(@pokedex), params: { pokedex: { name: @pokedex.name, pk_type: @pokedex.pk_type, pokedex_id: @pokedex.pokedex_id } }
    assert_redirected_to pokedex_url(@pokedex)
  end

  test "should destroy pokedex" do
    assert_difference("Pokedex.count", -1) do
      delete pokedex_url(@pokedex)
    end

    assert_redirected_to pokedex_index_url
  end
end
