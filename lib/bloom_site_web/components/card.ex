defmodule BloomSiteWeb.Components.Card do
  use Phoenix.Component

  def card(assigns) do
    ~H"""
    <figure class={[
      "relative w-64 cursor-pointer overflow-hidden rounded-xl border transition-all p-4",
      "border-gray-200 bg-neutral-50-50 hover:bg-neutral-100 text-zinc-500",
      "dark:border-gray-50 dark:bg-gray-50 dark:hover:bg-gray-50"
    ]}>
      <div class="flex flex-row items-center gap-2">
        <img class="rounded-full" width="32" height="32" alt="" src="https://picsum.photos/64" />
        <div class="flex flex-col">
          <figcaption class="text-sm font-medium dark:text-white">
            <%= @name %>
          </figcaption>
          <p class="text-xs font-medium dark:text-white"><%= @username %></p>
        </div>
      </div>
      <blockquote class="mt-2 text-sm"><%= @body %></blockquote>
    </figure>
    """
  end
end
