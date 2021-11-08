class StaticPagesController < ApplicationController
    # localhost:3000/privacy?lang=en
    def privacy
        if params[:lang] == 'pl'
            render 'privacy_pl'
        elsif params[:lang] == 'es'
            render 'privacy_es'
        end
    end

    def current_time
        @nighttime = (DateTime.now.hour > 16 || DateTime.now.hour < 7)
    end
end
