require "application_system_test_case"

class ClassSeatsTest < ApplicationSystemTestCase
  setup do
    @class_seat = class_seats(:one)
  end

  test "visiting the index" do
    visit class_seats_url
    assert_selector "h1", text: "Class Seats"
  end

  test "creating a Class seat" do
    visit class_seats_url
    click_on "New Class Seat"

    fill_in "Seat type", with: @class_seat.Seat_type
    fill_in "Class name", with: @class_seat.class_name
    check "Food service" if @class_seat.food_service
    fill_in "Leg room", with: @class_seat.leg_room
    fill_in "Price", with: @class_seat.price
    click_on "Create Class seat"

    assert_text "Class seat was successfully created"
    click_on "Back"
  end

  test "updating a Class seat" do
    visit class_seats_url
    click_on "Edit", match: :first

    fill_in "Seat type", with: @class_seat.Seat_type
    fill_in "Class name", with: @class_seat.class_name
    check "Food service" if @class_seat.food_service
    fill_in "Leg room", with: @class_seat.leg_room
    fill_in "Price", with: @class_seat.price
    click_on "Update Class seat"

    assert_text "Class seat was successfully updated"
    click_on "Back"
  end

  test "destroying a Class seat" do
    visit class_seats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class seat was successfully destroyed"
  end
end
