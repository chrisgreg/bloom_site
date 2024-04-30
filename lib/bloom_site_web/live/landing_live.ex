defmodule BloomSiteWeb.LandingLive do
  use BloomSiteWeb, :live_view
  import BloomSiteWeb.Components.GlowButton
  import BloomSiteWeb.Components.CodeSnippet
  import BloomSiteWeb.Components.GradientText
  import BloomSiteWeb.Components.Hero
  import BloomSiteWeb.Components.BentoGrid

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
