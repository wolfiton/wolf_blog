defmodule WolfBlogWeb.Router do
  use WolfBlogWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward("/api", Absinthe.Plug,  schema: WolfBlogWeb.Schema)

    forward("/graphiql", Absinthe.Plug.GraphiQL, schema: WolfBlogWeb.Schema, interface: :playground)

  end
end
