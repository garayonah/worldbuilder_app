require "test_helper"

class RandomTableOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @random_table_option = random_table_options(:one)
  end

  test "should get index" do
    get random_table_options_url
    assert_response :success
  end

  test "should get new" do
    get new_random_table_option_url
    assert_response :success
  end

  test "should create random_table_option" do
    assert_difference("RandomTableOption.count") do
      post random_table_options_url, params: { random_table_option: { option_end: @random_table_option.option_end, option_start: @random_table_option.option_start, random_table_id: @random_table_option.random_table_id, text: @random_table_option.text } }
    end

    assert_redirected_to random_table_option_url(RandomTableOption.last)
  end

  test "should show random_table_option" do
    get random_table_option_url(@random_table_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_random_table_option_url(@random_table_option)
    assert_response :success
  end

  test "should update random_table_option" do
    patch random_table_option_url(@random_table_option), params: { random_table_option: { option_end: @random_table_option.option_end, option_start: @random_table_option.option_start, random_table_id: @random_table_option.random_table_id, text: @random_table_option.text } }
    assert_redirected_to random_table_option_url(@random_table_option)
  end

  test "should destroy random_table_option" do
    assert_difference("RandomTableOption.count", -1) do
      delete random_table_option_url(@random_table_option)
    end

    assert_redirected_to random_table_options_url
  end
end
