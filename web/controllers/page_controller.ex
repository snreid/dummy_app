defmodule Phoenixnew.PageController do
  use Phoenixnew.Web, :controller

  def index(conn, params) do
    IO.puts("Welcome to Members-API!")
    content = File.read!(params["file_path"])
		conn
		|> put_flash(:error, "DO NOT RENDER RAW HTML LIKE WE ARE!!")
    |> render "index.html", content: content, key: params["key"]
  end
end
