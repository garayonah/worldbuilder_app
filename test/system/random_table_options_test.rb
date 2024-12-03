require "application_system_test_case"

class RandomTableOptionsTest < ApplicationSystemTestCase
  setup do
    @random_table_option = random_table_options(:one)
  end

  test "visiting the index" do
    visit random_table_options_url
    assert_selector "h1", text: "Random table options"
  end

  test "should create random table option" do
    visit random_table_options_url
    click_on "New random table option"

    fill_in "Option end", with: @random_table_option.option_end
    fill_in "Option start", with: @random_table_option.option_start
    fill_in "Random table", with: @random_table_option.random_table_id
    fill_in "Text", with: @random_table_option.text
    click_on "Create Random table option"

    assert_text "Random table option was successfully created"
    click_on "Back"
  end

  test "should update Random table option" do
    visit random_table_option_url(@random_table_option)
    click_on "Edit this random table option", match: :first

    fill_in "Option end", with: @random_table_option.option_end
    fill_in "Option start", with: @random_table_option.option_start
    fill_in "Random table", with: @random_table_option.random_table_id
    fill_in "Text", with: @random_table_option.text
    click_on "Update Random table option"

    assert_text "Random table option was successfully updated"
    click_on "Back"
  end

  test "should destroy Random table option" do
    visit random_table_option_url(@random_table_option)
    click_on "Destroy this random table option", match: :first

    assert_text "Random table option was successfully destroyed"
  end
end
