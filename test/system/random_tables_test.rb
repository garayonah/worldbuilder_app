require "application_system_test_case"

class RandomTablesTest < ApplicationSystemTestCase
  setup do
    @random_table = random_tables(:one)
  end

  test "visiting the index" do
    visit random_tables_url
    assert_selector "h1", text: "Random tables"
  end

  test "should create random table" do
    visit random_tables_url
    click_on "New random table"

    fill_in "Description", with: @random_table.description
    fill_in "Die", with: @random_table.die
    fill_in "Name", with: @random_table.name
    click_on "Create Random table"

    assert_text "Random table was successfully created"
    click_on "Back"
  end

  test "should update Random table" do
    visit random_table_url(@random_table)
    click_on "Edit this random table", match: :first

    fill_in "Description", with: @random_table.description
    fill_in "Die", with: @random_table.die
    fill_in "Name", with: @random_table.name
    click_on "Update Random table"

    assert_text "Random table was successfully updated"
    click_on "Back"
  end

  test "should destroy Random table" do
    visit random_table_url(@random_table)
    click_on "Destroy this random table", match: :first

    assert_text "Random table was successfully destroyed"
  end
end
