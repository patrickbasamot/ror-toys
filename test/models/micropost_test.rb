require "test_helper"

class MicropostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should have comments" do
    #Line of code below automatically generates an ID.
    user = User.create(name:'patrick',email:"pb@gmail.com")

    #Used for this line to generate and test if our microposts is also working.
    post = user.microposts.new(title:"Hello",body:"asdasda")
    assert post.save, "Not save error"
  
  end
end
