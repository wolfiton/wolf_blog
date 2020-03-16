defmodule WolfBlogWeb.Resolvers.UserResolver do
  alias WolfBlog.Accounts

  def list_all_users(_, _, _) do
    {:ok, Accounts.list_users()}
  end
end
