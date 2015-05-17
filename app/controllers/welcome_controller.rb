class WelcomeController < ApplicationController

  def index
    @contact = Contact.new
  end

  def test
  end
end
