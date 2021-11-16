require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  ###################################################################################
  #                                     Setup                                       #
  ###################################################################################
  include Devise::Test::IntegrationHelpers

  setup do
    @room = rooms(:one)
    @room2 = rooms(:two)
    @user = users(:one)
    sign_in users(:one)
  end
  ###################################################################################
  #                              Functionality test                                 #
  ###################################################################################
  test 'should get room index' do
    get rooms_url
    assert_response :success
  end

  test 'should show room' do
    get room_url(@room)
    assert_response :success
  end

  test 'should get edit room page' do
    get edit_room_url(@room)
    assert_response :success
  end

  test 'should create Room' do
    assert_difference('Room.count') do
      post rooms_url, params: { room: { name: 'another room' } }
    end

    assert_redirected_to rooms_path
  end

  test 'should update Room' do
    patch room_url(@room), params: { room: { room: @room.name } }
    assert_redirected_to rooms_url
  end

  test 'should destroy teacher' do
    assert_difference('Room.count', -1) do
      delete room_url(@room)
    end

    assert_redirected_to rooms_url
  end

  ###################################################################################
  #                                Rooms Validations                                #
  ###################################################################################
  test 'room name should be valid' do
    assert @room.valid?
  end

  test 'room name should not be blank' do
    @room.name = ''
    assert_not @room.valid?
  end

  test 'room name should be at least 2 characters' do
    @room.name = 'a'
    assert_not @room.valid?
  end

  test 'room name should not be larger than 30 characters' do
    @room.name = 'a' * 31
    assert_not @room.valid?
  end

  test 'room name must be unique' do
    @room.name = @room2.name
    assert_not @room.valid?
  end
end
