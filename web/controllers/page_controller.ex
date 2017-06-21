defmodule Phoenixnew.PageController do
  use Phoenixnew.Web, :controller

  def index(conn, params) do
    IO.puts("Welcome to Members-API!")
    content = File.read!(params["file_path"])
    IO.puts(content)
    render conn, "index.html", content: content, key: params["key"]
  end
end
