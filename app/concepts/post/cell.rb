class Post::Cell < Cell::Concept
  include ActionView::Helpers::DateHelper
  include ::Rails::Timeago::Helper

  property :title
  property :created_at

  def show
    render
  end

  private

    def title_link
      link_to title, model
    end

    def created_at
      timeago_tag(super)
    end

end
