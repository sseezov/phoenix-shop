defmodule ShopWeb.ProductHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use ShopWeb, :html

  embed_templates "product_html/*"
end
