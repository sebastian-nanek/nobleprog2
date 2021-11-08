class StaticPagesController < ApplicationController
    # localhost:3000/privacy?lang=en
    def privacy
        if params[:lang] == 'pl'
            render 'privacy_pl'
        elsif params[:lang] == 'es'
            render 'privacy_es'
        end
    end
end
