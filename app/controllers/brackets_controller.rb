class BracketsController < ApplicationController
  before_action :authenticate_user!, except: []

  def index
  end

end
