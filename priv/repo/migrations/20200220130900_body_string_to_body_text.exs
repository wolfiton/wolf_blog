defmodule WolfBlog.Repo.Migrations.BodyStringToBodyText do
  use Ecto.Migration

  def change do
    alter table(:posts) do # alter will modify the posts table
      modify :body, :text # modifies the body column from string to text
    end
  end
end
