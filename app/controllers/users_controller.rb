class UsersController < ApplicationController
  def index
  end

  def show
    # @user = User.all
    @var = Authlogin.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to action: "index"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def bookissue
    render('BookIssue')
  end
  def userpage
    render('UserPage')
  end
  

  private
    def user_params
      params.require(:user).permit(:Fname, :Lname, :Email, :Phone, :Address, :Username, :Password, :Cnfpassword)
    end
end
