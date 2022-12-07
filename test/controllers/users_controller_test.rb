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
      get root_path
    assert_response :success
    end

    test "create new user" do
      user = User.new(name:"asdasda",email:"qwewqeqw")
      assert user.save, "Something is missing."
    end
end
