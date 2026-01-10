defmodule ShopWeb.Plugs.SetPlatform do
  def init(opts), do: opts

  def call(%Plug.Conn{} = conn, _opts) do
    IO.inspect('module plug is working')

    conn
  end
end
