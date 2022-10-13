class UsersController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :age, :introduction))
    if @user.save
      flash[:notice] = "#{@user.name}さんのユーザー新規登録が完了しました"
      redirect_to :users
    else
      render "new"
    end 
  end

  def show
    @user = User.find(params[:id])
    @post = Post.new
    @posts = @user.posts
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    
    if @user.update(params.require(:user).permit(:name, :email, :age, :introduction))
      flash[:notice] = "#{@user.name}さんの登録情報の編集が完了しました。"
      redirect_to :users
    else
      render "edit"
    end   
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "#{@user.name}さんのユーザー登録を削除しました"
    redirect_to :users
  end
end
