require "test_helper"

class UserTest < ActiveSupport::TestCase
  
   # test "should not save user without email" do
   # user = User.new
   # assert_not user.save, "Saved the user without a email"
  #end

  #test "should report error" do
    # some_undefined_variable is not defined elsewhere in the test case
    #assert_raises(NameError) do
      #some_undefined_variable
    #end
  #end


  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
    end
  test "email addresses should be unique" do
      duplicate_user = @user.dup
      @user.save
      assert_not duplicate_user.valid?
  end
end
