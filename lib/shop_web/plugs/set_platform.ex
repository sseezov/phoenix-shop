defmodule ShopWeb.Plugs.SetPlatform do
  import Plug.Conn
  def init(default_platform), do: default_platform

  @valid_platforms ["nintendo-switch", "pc", "ps5", "xbox"]

  def call(%Plug.Conn{:params => %{"platform" => platform}} = conn, _default_platform)
      when platform in @valid_platforms do
    conn
    |> assign(:platform, platform)
    |> put_resp_cookie("platform", platform, max_age: :timer.hours(24) * 30)
  end

  def call(%Plug.Conn{} = conn, default_platform) do
    conn
    |> assign(:platform, default_platform)
  end
end
