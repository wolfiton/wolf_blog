defmodule WolfBlogWeb.Schema.Posts.Queries.PostsQueryTest do
  use WolfBlogWeb.ConnCase, async: true

  setup "Start the seeder for testing data" do
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

      data = get(build_conn(), "/api", query: @query)
      IO.puts("Here is the data start")
      IO.inspect(data)
      IO.puts("Here is the data end")
      assert json_response(data, 200) == %{
        "data" => %{
          "posts" => [
              %{"title" => "Absinthe is great"}
            ]
          }
        }
    end
  end
end
