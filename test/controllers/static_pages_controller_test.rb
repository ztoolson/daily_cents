require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "DailyCents"
  end

  test "should get home" do
    get home_url
    assert_response :success
  end

  test "should get about" do
    get about_url
    assert_response :success
  end
end
