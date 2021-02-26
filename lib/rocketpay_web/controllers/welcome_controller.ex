defmodule RocketpayWeb.WelcomeController do
  use RocketpayWeb, :controller

  def index(conn, _params) do
    message = %{
      title: "Welcome to Rocketpay RESTful API created in Elixir!",
      message: "This API was created by Adriano Kerber following the lessons of Rafael Camarda on NLW#4 (Next Level Week of Rocketseat). We used Elixir, Phoenix Framework, Ecto, and other modules and frameworks to create this API",
      created: "2021-02-22"
    }

    conn
    |> put_status(:ok)
    |> json(message)
  end
end
