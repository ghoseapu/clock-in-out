require "application_system_test_case"

class TeacherClocksTest < ApplicationSystemTestCase
  setup do
    @teacher_clock = teacher_clocks(:one)
  end

  test "visiting the index" do
    visit teacher_clocks_url
    assert_selector "h1", text: "Teacher Clocks"
  end

  test "creating a Teacher clock" do
    visit teacher_clocks_url
    click_on "New Teacher Clock"

    check "Teacher clocked in" if @teacher_clock.teacher_clocked_in
    fill_in "Teacher logged time", with: @teacher_clock.teacher_logged_time
    fill_in "Teacher name", with: @teacher_clock.teacher_name
    click_on "Create Teacher clock"

    assert_text "Teacher clock was successfully created"
    click_on "Back"
  end

  test "updating a Teacher clock" do
    visit teacher_clocks_url
    click_on "Edit", match: :first

    check "Teacher clocked in" if @teacher_clock.teacher_clocked_in
    fill_in "Teacher logged time", with: @teacher_clock.teacher_logged_time
    fill_in "Teacher name", with: @teacher_clock.teacher_name
    click_on "Update Teacher clock"

    assert_text "Teacher clock was successfully updated"
    click_on "Back"
  end

  test "destroying a Teacher clock" do
    visit teacher_clocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teacher clock was successfully destroyed"
  end
end
