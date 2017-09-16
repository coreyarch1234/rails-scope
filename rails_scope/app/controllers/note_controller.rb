class NoteController < ApplicationController
  def index
      @test_json = {"title": "Manu Prakash Goes to Vegas", "author": "Manu Prakash"}
      render :json => @test_json
  end

  def create
  end
end
