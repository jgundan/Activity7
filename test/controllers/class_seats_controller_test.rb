require 'test_helper'

class ClassSeatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_seat = class_seats(:one)
  end

  test "should get index" do
    get class_seats_url
    assert_response :success
  end

  test "should get new" do
    get new_class_seat_url
    assert_response :success
  end

  test "should create class_seat" do
    assert_difference('ClassSeat.count') do
      post class_seats_url, params: { class_seat: { Seat_type: @class_seat.Seat_type, class_name: @class_seat.class_name, food_service: @class_seat.food_service, leg_room: @class_seat.leg_room, price: @class_seat.price } }
    end

    assert_redirected_to class_seat_url(ClassSeat.last)
  end

  test "should show class_seat" do
    get class_seat_url(@class_seat)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_seat_url(@class_seat)
    assert_response :success
  end

  test "should update class_seat" do
    patch class_seat_url(@class_seat), params: { class_seat: { Seat_type: @class_seat.Seat_type, class_name: @class_seat.class_name, food_service: @class_seat.food_service, leg_room: @class_seat.leg_room, price: @class_seat.price } }
    assert_redirected_to class_seat_url(@class_seat)
  end

  test "should destroy class_seat" do
    assert_difference('ClassSeat.count', -1) do
      delete class_seat_url(@class_seat)
    end

    assert_redirected_to class_seats_url
  end
end
