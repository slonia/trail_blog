class Post::Cell < Cell::Concept
  include ActionView::Helpers::DateHelper
  include ::Rails::Timeago::Helper

  property :title
  property :created_at

  def show
    render
  end

  def classes
    classes = ["large-3", "columns"]
    classes << "end" if options[:last] == model
    classes
  end

  private

    def title_link
      link_to title, model
    end

    def created_at
      timeago_tag(super)
    end
  class Grid < Cell::Concept
    def show
      latest = Post.latest
      concept('post/cell', collection: latest, last: latest.last)
    end
  end
end
