# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

def comentarios(comentavel)
    comentarios = "<div id='comentarios'>"
    comentarios << "<h3>Comentarios</h3>"
    comentarios << render (:partial => "comentarios/comentario",
                            :collection => comentavel.comentarios)
    comentarios << "</div>"
end

end
