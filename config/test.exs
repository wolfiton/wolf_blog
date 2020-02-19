use Mix.Config

# Configure your database
config :wolf_blog, WolfBlog.Repo,
  username: "dan",
  password: "postgres",
  database: "wolf_blog_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :wolf_blog, WolfBlogWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
