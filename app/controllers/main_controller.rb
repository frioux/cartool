class MainController < ApplicationController
  before_filter :login_required, :except => :show

  def main
  end

  def graphs
  end

  def todo
  end
end
