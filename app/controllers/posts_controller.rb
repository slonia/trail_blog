class PostsController < ApplicationController
  def new
    @form = form Post::Create
  end

  def create
    run Post::Create do |op|
      return redirect_to op.model
    end
    render action: :new
  end

  def edit
    @form = form Post::Update
    render action: :new
  end
end
