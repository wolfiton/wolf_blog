defmodule WolfBlogWeb.Router do
  use WolfBlogWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", WolfBlogWeb do
    pipe_through :api
  end
end
