require 'test_helper'

class TestblogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testblog = testblogs(:one)
  end

  test "should get index" do
    get testblogs_url
    assert_response :success
  end

  test "should get new" do
    get new_testblog_url
    assert_response :success
  end

  test "should create testblog" do
    assert_difference('Testblog.count') do
      post testblogs_url, params: { testblog: { Email: @testblog.Email, Message: @testblog.Message, Title: @testblog.Title } }
    end

    assert_redirected_to testblog_url(Testblog.last)
  end

  test "should show testblog" do
    get testblog_url(@testblog)
    assert_response :success
  end

  test "should get edit" do
    get edit_testblog_url(@testblog)
    assert_response :success
  end

  test "should update testblog" do
    patch testblog_url(@testblog), params: { testblog: { Email: @testblog.Email, Message: @testblog.Message, Title: @testblog.Title } }
    assert_redirected_to testblog_url(@testblog)
  end

  test "should destroy testblog" do
    assert_difference('Testblog.count', -1) do
      delete testblog_url(@testblog)
    end

    assert_redirected_to testblogs_url
  end
end
