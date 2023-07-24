#nessa classe realizo a configuração do parametros das api´s 
module Rest
    class EnumerationsVrPat
        include HTTParty

        base_uri CONFIG['base_uri']
    
        def get_response()
            self.class.get("/api-web/comum/enumerations/VRPAT")
        end
    end
end