require "application_system_test_case"

class SnapsTest < ApplicationSystemTestCase
  setup do
    @snap = snaps(:one)
  end

  test "visiting the index" do
    visit snaps_url
    assert_selector "h1", text: "Snaps"
  end

  test "should create snap" do
    visit snaps_url
    click_on "New snap"

    fill_in "Color", with: @snap.color
    fill_in "Title", with: @snap.title
    click_on "Create Snap"

    assert_text "Snap was successfully created"
    click_on "Back"
  end

  test "should update Snap" do
    visit snap_url(@snap)
    click_on "Edit this snap", match: :first

    fill_in "Color", with: @snap.color
    fill_in "Title", with: @snap.title
    click_on "Update Snap"

    assert_text "Snap was successfully updated"
    click_on "Back"
  end

  test "should destroy Snap" do
    visit snap_url(@snap)
    click_on "Destroy this snap", match: :first

    assert_text "Snap was successfully destroyed"
  end
end
