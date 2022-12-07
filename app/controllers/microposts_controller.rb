class MicropostsController < ApplicationController
    def create 
        @user = User.find(params[:user_id])
        @micropost = @user.microposts.create(comments_params)
        redirect_to user_path(@user)
    end

    private
    def comments_params 
        params.require(:micropost).permit(:title,:body)
    end
end
