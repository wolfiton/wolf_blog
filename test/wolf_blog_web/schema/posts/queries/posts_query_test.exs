defmodule WolfBlogWeb.Schema.Posts.Queries.PostsQueryTest do
  use WolfBlogWeb.ConnCase, async: true


  setup do
    WolfBlog.Seeder.power_up()
  end


  @query """
    {
      posts {
        title
      }
    }
  """

  describe "Testing the Posts Query" do
    test "Should get all posts(1 of 1)" do

      conn = build_conn()

      res = get conn, "/graphql", query: @query


      assert json_response(res, 200)["data"]["posts"] == [%{"title" => "Absinthe is great"}]
      IO.inspect(json_response(res, 200), label: "myres")
    end
  end
end
