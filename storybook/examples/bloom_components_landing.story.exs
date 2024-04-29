defmodule Storybook.Examples.BloomComponentsLanding do
  use PhoenixStorybook.Story, :example
  import BloomSiteWeb.Components.CodeSnippet
  import BloomSiteWeb.Components.GlowButton
  import BloomSiteWeb.Components.Hero
  import BloomSiteWeb.Components.GradientText

  def doc do
    "The landing page for Bloom. Some styles aren't exactly right yet because of Storybook."
  end

  defstruct [:id, :first_name, :last_name]

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <.hero>
      <img src="/images/bloom.png" class="w-[160px] mx-auto" />
      <.gradient_text from_color="rose-400" to_color="purple-500">Bloom</.gradient_text>
      <:subtitle>
        The opinionated extension to Phoenix Core Components. Install each component using the command line in seconds.
      </:subtitle>
      <:actions>
        <.link href="/storybook">
          <.glow_button>
            Components
          </.glow_button>
        </.link>
      </:actions>
    </.hero>

    <div class="mx-auto flex justify-center my-12">
      <.code_snippet>
        mix bloom.install code_snippet
      </.code_snippet>
    </div>
    """
  end
end
