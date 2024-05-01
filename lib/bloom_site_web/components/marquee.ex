defmodule BloomSiteWeb.Components.Marquee do
  use Phoenix.Component

  attr(:pause_on_hover, :boolean, default: false)
  attr(:repeat, :integer, default: 4)
  attr(:vertical, :boolean, default: false)
  attr(:reverse, :boolean, default: false)
  attr(:class, :string, default: "")

  slot(:inner_block, required: true)

  def marquee(assigns) do
    assigns =
      assigns
      |> assign(:repeat, assigns[:repeat] || 4)
      |> assign(:vertical, assigns[:vertical] || false)
      |> assign(:pause_on_hover, assigns[:pause_on_hover] || false)
      |> assign(:reverse, assigns[:reverse] || false)

    ~H"""
    <div
      :if={@repeat > 0}
      class={[
        "group flex overflow-hidden p-2 [--duration:40s] [--gap:1rem] [gap:var(--gap)]",
        @vertical && "flex-col",
        !@vertical && "flex-row",
        @class
      ]}
    >
      <%= for _ <- 0..(@repeat - 1) do %>
        <div
          class={[
            "flex shrink-0 justify-around [gap:var(--gap)]",
            @vertical && "flex-col animate-marquee-vertical",
            !@vertical && "flex-row animate-marquee",
            @pause_on_hover && "group-hover:[animation-play-state:paused]"
          ]}
          style={@reverse && "animation-direction: reverse;"}
        >
          <%= render_slot(@inner_block) %>
        </div>
      <% end %>
    </div>
    """
  end
end
