require "test_helper"

class UserFlowsTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  setup do
    @micropost = microposts :one
    @user = users :one
  end

  #User creation
  test "can create new user" do
    get "/users/new"
    assert_response :success
  
    post "/users",
      params: { user: { name: "can create", email: "ppatrickk@gmail.com" } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

  #Create new micropost from the pre-defined user in fixture.yml
  test 'can create micropost'do 
      post user_microposts_path(@user),
      params: { micropost: { title: "Kekw", body: "hello rails." } }
         assert_response :redirect
         follow_redirect!
         assert_response :success

  end
end
