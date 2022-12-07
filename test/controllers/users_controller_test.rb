require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end


#### SAMPLE TEST SCRIPT ####
  #test "should get help" do
    #get static_pages_help_url
    #assert_response :success
    #end

    test "index" do
      get "/"
    assert_response :success
    end

    test "create" do
      get '/users/new'
    assert_response :success
    end

  
end
