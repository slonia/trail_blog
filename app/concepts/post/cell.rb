class Post::Cell < Cell::Concept
  property :title
  property :created_at
  def show
    render
  end

  private

    def title_link
      link_to title, model
    end
end
