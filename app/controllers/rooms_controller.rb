class RoomsController < ApplicationController
  def index
  end

  def new
  end

  def create
    Room.create(room_params)
  end
end