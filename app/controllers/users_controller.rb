class UsersController < ApplicationController
  def show
    @completed_items = current_user.items.completed
  end
end
