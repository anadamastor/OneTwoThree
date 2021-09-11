class UsersController < ApplicationController

  def index
    if params[:query].present?
      @users = User.search_by_address(params[:query])
    else
      @users = User.where.not(latitude: nil, longitude: nil)
      if params[:event].present?
        @event = params[:event]
      end
      if params[:group].present?
        @group = params[:group]
      end
    @events = Event.all
    end
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
  end

  def show
    @user = User.find(params[:id])
    @reviews = Review.all
    @receiver = @user
    @event = params[:event]
    @group = params[:group]
    # session[:dancer_id] = @user.id
    @marker =
      {
        lat: @user.latitude,
        lng: @user.longitude
      }
  end

  def user_params
    params.require(:query)
  end
end
