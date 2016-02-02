require 'test_helper'

class DrawControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/index"
    assert_response :success
  end
  test "should get show" do
    list_of_good_urls = %w! trails ding4 di5ng tr8or !
    list_of_bad_urls  = %w! train-s ding-4 ding- !

    list_of_good_urls.each do |url|
      get "/#{url}"
      assert_response :success
    end

    list_of_bad_urls.each do |url|
      get "/#{url}"
      assert_redirected_to "/"
    end
  end

end
