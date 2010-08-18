
class RestaurantesController < ApplicationController

    def index
        @restaurantes = Restaurante.all
    end

    def show
        @restaurante = Restaurante.find params[:id]
        @action = ''
        render :template => 'restaurantes/edit.html'
    end

    def new
        r = Restaurante.new params
        if r
            redirect_to :action => 'show', :id => r.id
        else
            render :text => "Error"
        end
    end

    def edit
        if params[:id]
            @restaurante = Restaurante.find(params[:id])
            @action = 'show'
            @actionName = 'Editar'
        else
            @restaurante = Restaurante.new
            @action = 'new'
            @actionName = 'Cadastrar'
        end
    end

    def change
        r = Restaurante.find( params[:id] )
        if r.update_attributes params[:restaurante]
            redirect_to :action => 'show', :id => r
        else
            render text => "Error"
        end
    end

    def delete
        Restaurante.destroy params[:id]
        redirect_to :action => 'index'
    end

end



