class PowersController < ApplicationController
  before_action :set_power, only: [:show, :edit, :update, :destroy]

    def index
      @powers = Power.all
    end

    def new
      @power = Power.new
    end

    def create
      @power = current_user.powers.build(power_params)
      if params[:back]
        render :new
      else
        if @power.save
          redirect_to powers_path, notice: "ちからを作成しました！"
        else
          render :new
        end
      end
    end

    def show
    end

    def edit
    end

    def update
      if @power.update(power_params)
        redirect_to powers_path, notice: "ちからを編集しました！"
      else
        render :edit
      end
    end

    def destroy
      @power.destroy
      redirect_to powers_path, notice: "ちからを削除しました！"
    end

    def confirm
      @power = current_user.powers.build(power_params)
      render :new if @power.invalid?
    end

    private

    def power_params
      params.require(:power).permit(:genre, :power, :address, :latitude, :longitude)
    end

    def set_power
      @power = Power.find(params[:id])
    end
end
