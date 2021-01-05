class MainMenusController < ApplicationController
  def index
    @main_menus = MainMenu.all
  end
end
