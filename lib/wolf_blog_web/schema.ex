defmodule WolfBlogWeb.Schema do
  use Absinthe.Schema
  alias WolfBlogWeb.Resolvers.PostResolver
  alias WolfBlogWeb.Resolvers.UserResolver

  import_types(WolfBlogWeb.Types.PostTypes)
  import_types(WolfBlogWeb.Types.UserTypes)

  query do
    @desc "list_all_posts"
    field :posts, list_of(:post) do
      resolve(&PostResolver.list_all_posts/3)
    end

    @desc "list_all_users"
    field :users, list_of(:user) do
      resolve(&UserResolver.list_all_users/3)
    end
  end
end
