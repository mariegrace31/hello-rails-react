class RootController < ApplicationController
  def index; end

  def greeting
    random_greeting = Greeting.order('RANDOM()').first
    @greeting_message = random_greeting&.message || 'Default Greeting'

    respond_to do |format|
      format.html { render plain: @greeting_message }
      format.text { render plain: @greeting_message }
    end
  end
end
