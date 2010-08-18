
class ComentariosController < ApplicationController

    def destroy
        @comentario = Comentario.find params[:id]
        @comentario.destroy

        respond_to do |format|
            format.html { redirect_to(comentarios_url) }
            format.xml { head:ok }
            format.js do
                render :update do |page|
                    page.visual_effect :fade, "comentario_#{params[:id]}"
                end
            end
        end
    end

end


