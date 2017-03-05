class Post
  class Update < Create
    action :create

    contract do
      property :title, writeable: false
    end

  end
end
