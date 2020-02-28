defmodule WolfBlogWeb.Types.PostTypes do
  use Absinthe.Schema.Notation

  @desc "Post fields that can be interrogated(get)"
  object :post do
    @desc "The post id"
    field :id, :id
    @desc "The title of the post"
    field :title, :string
    @desc "The post body"
    field :body, :string
  end

end
