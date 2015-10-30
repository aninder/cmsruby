module Admin
  class MenusController < ApplicationController
    before_action :set_menu, only: [:edit, :update, :destroy]
    def index
      @menus = Menu.all
    end

    def new
      @menu = Menu.new
    end

    def create
      @menu = Menu.new menu_params
      if @menu.save
        redirect_to admin_menus_path, notice:"menu created"
      else
        render :new
      end
    end

    def update
      if @menu.update_attributes(menu_params)
        redirect_to admin_menus_path  , notice:"Menu updated"
       else
        render :edit
      end
    end

    def edit
    end

    def destroy
      if @menu.delete
        redirect_to admin_menus_path, notice:"Menu #{@menu.name} deleted"
      else
        redirect_to admin_menus_path, alert:"Menu was not deleted"
      end
    end

    private

    def menu_params
      params.require('menu').permit(:name,menu_items_attributes:[:title,:url,:_destroy,:id ])
    end

    def set_menu
      @menu = Menu.find(params[:id])
    end

  end
end