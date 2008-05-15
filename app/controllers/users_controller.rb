class UsersController < ApplicationController
  layout 'default'
  before_filter :not_logged_in_required, :only => [:new, :create]
  before_filter :login_required, :only => [:show, :edit, :update]
  before_filter :check_administrator_role, :only => [:index, :destroy, :enable]

  def index
    @users = User.find(:all)
  end

  def show
    @user = current_user
  end

  def new
    @user = User.new
  end

  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem


  # render new.rhtml
  def new
  end

  def create
    cookies.delete :auth_token
    @user = User.new(params[:user])
    @user.save!
    flash[:notice] = "Thanks for signing up for the CarTool!  Check your email to activate your account."
    redirect_to login_path
  rescue ActiveRecord::RecordInvalid
    flash[:error] = "There was a problem creating your account."
    render :action => 'new'
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "User updated"
      redirect_to :action => 'show', :id => current_user
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.update_attribute(:enabled, false)
      flash[:notice] = "User disabled"
    else
      flash[:error] = "There was a problem disabling this user."
    end
    redirect_to :action => 'index'
  end

  def enable
    @user = User.find(params[:id])
    if @user.update_attribute(:enabled, true)
      flash[:notice] = "User enabled"
    else
      flash[:error] = "There was a problem enabling this user."
    end
    redirect_to :action => 'index'
  end

end
