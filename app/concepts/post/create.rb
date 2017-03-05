class Post
  class Create < Trailblazer::Operation
    include Model
    model Post, :create

    contract do
      property :title
      property :body
      validates :title, presence: true
    end

    def process(params)
      validate(params[:post]) do |f|
        f.save
      end
    end
  end
end
