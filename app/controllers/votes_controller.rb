class VotesController < ApplicationController
    before_action :set_live, only: %i[create destroy]

    def create
       Vote.create! live: @live, user: current_user

       redirect_to lives_path, notice: "Voto Registrado."
    end

    def destroy
    	@live.destroy!

       redirect_to lives_path, notice: "Voto Removido."
    end


    private
    
    def set_live
        @live = Live.find(params[:live_id])
    end
end