require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  ###################################################################################
  #                                     Setup                                       #
  ###################################################################################
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:one)
    @user2 = users(:two)
  end

  ###################################################################################
  #                              Username Validations                               #
  ###################################################################################
  test 'username should be valid' do
    assert @user.valid?
  end

  test 'username should not contain special characters' do
    @user.username = 'invalidname!'
    assert_not @user.valid?
  end

  test 'username should not be blank' do
    @user.username = ''
    assert_not @user.valid?
  end

  test 'username should be at least 2 characters' do
    @user.username = 'a'
    assert_not @user.valid?
  end

  test 'username should not be larger than 16 characters' do
    @user.username = 'a' * 17
    assert_not @user.valid?
  end

  test 'username must be unique' do
    @user.username = @user2.username
    assert_not @user.valid?
  end

  ###################################################################################
  #                               Email Validations                                 #
  ###################################################################################
  test 'email should be valid' do
    assert @user.valid?
  end

  test 'email should not be blank' do
    @user.email = ''
    assert_not @user.valid?
  end

  test 'email should be correctly formatted' do
    @user.email = 'aaaa.com'
    assert_not @user.valid?
  end

  test 'email must be unique' do
    @user.email = @user2.email
    assert_not @user.valid?
  end

  ###################################################################################
  #                              Password Validations                               #
  ###################################################################################
  test 'password should be valid' do
    assert @user.valid?
  end

  test 'password should not be blank' do
    @user.password = ''
    assert_not @user.valid?
  end

  test 'password should be at least 6 characters' do
    @user.password = 'aaaaa'
    assert_not @user.valid?
  end
end
