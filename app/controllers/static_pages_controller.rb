# frozen_string_literal: true

class StaticPagesController < ApplicationController
  # localhost:3000/privacy?lang=en
  def privacy
    case params[:lang]
    when 'pl'
      render 'privacy_pl'
    when 'es'
      render 'privacy_es'
    end
  end

  def current_time
    @nighttime = (DateTime.now.hour > 16 || DateTime.now.hour < 7)
  end
end
