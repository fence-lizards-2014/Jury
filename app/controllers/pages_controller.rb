class PagesController < ApplicationController

  def main
    @user = User.new
  end

  def test

  end

  def dashboard
    @mycases = Case.all

  end

end

