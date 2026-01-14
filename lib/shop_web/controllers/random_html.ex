defmodule ShopWeb.RandomHTML do
  use ShopWeb, :html

  def random(assigns) do
    ~H"""
    <h1>This is random!</h1>
    """
  end
end
