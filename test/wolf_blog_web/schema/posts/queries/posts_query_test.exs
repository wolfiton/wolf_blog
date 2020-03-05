defmodule WolfBlogWeb.Schema.Posts.Queries.PostsQueryTest do
  use WolfBlogWeb.ConnCase, async: true

  alias WolfBlog.AbsintheHelpers

  alias WolfBlog.Blog.Post
  alias WolfBlog.Repo


  @query """
    {
      posts {
        title
      }
    }
  """

  describe "Testing the Posts Query" do
    test "Should get all posts(1 of 1)", context do

      absinthe_title =  "Absinthe is great"
      absinthe_body =  "Absinthe can really make working with Phoenix and Graphql much easier.The big advantage is that you can also test the code."

      %Post{title: absinthe_title , body: absinthe_body} |> Repo.insert() 

      res = context.conn
        |> post("/graphql", AbsintheHelpers.query_skeleton(@query, "posts"))

      assert json_response(res, 200)["data"]["posts"] == [%{"title" => "Absinthe is great"}]
    end
  end
end
