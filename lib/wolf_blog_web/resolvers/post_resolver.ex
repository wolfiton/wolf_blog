defmodule WolfBlogWeb.Resolvers.PostResolver do
  alias WolfBlog.Blog

  def list_all_posts(_, _, _) do
    {:ok, Blog.list_posts()}
  end
end
