defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
        users = [
          %{id: 1, name: "Ashley", email: "ashley@gmail.com"},
          %{id: 2, name: "Lenna", email: "lenna@gmail.com"}
        ]
        # render(conn, :users, users: users, layout: false)
        json(conn, %{users: users})
  end

end
