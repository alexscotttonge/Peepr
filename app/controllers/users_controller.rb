class UsersController < Clearance::UsersController

  def show
    user = User.find(params[:id])
    render locals: { user: user,
                     peeps: user.peeps }
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
