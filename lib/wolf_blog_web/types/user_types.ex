defmodule WolfBlogWeb.Types.UserTypes do
  use Absinthe.Schema.Notation

  @desc "User fields that can be interrogated(get)"
  object :user do
    @desc "The user id"
    field :id, :id
    @desc "The username of the user"
    field :username, :string
    @desc "The password of the user"
    field :password, :string
  end
end
