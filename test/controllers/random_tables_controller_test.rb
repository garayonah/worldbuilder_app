require "test_helper"

class RandomTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @random_table = random_tables(:one)
  end

  test "should get index" do
    get random_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_random_table_url
    assert_response :success
  end

  test "should create random_table" do
    assert_difference("RandomTable.count") do
      post random_tables_url, params: { random_table: { description: @random_table.description, die: @random_table.die, name: @random_table.name } }
    end

    assert_redirected_to random_table_url(RandomTable.last)
  end

  test "should show random_table" do
    get random_table_url(@random_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_random_table_url(@random_table)
    assert_response :success
  end

  test "should update random_table" do
    patch random_table_url(@random_table), params: { random_table: { description: @random_table.description, die: @random_table.die, name: @random_table.name } }
    assert_redirected_to random_table_url(@random_table)
  end

  test "should destroy random_table" do
    assert_difference("RandomTable.count", -1) do
      delete random_table_url(@random_table)
    end

    assert_redirected_to random_tables_url
  end
end
