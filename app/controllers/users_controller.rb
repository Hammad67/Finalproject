class UsersController < ApplicationController
  def index
    @user=User.all
  end
  def allusers
    @user=User.all
  end
  def show
    @user=User.find(params[:id])
  end
  def destroy
    @user=User.find(params[:id])
    if @user.destroy
      flash[:notice]="User is deleted Successfully"
      redirect_to @user
    end
  end
end
