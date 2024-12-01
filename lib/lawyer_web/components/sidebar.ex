defmodule BlogsWeb.Sidebar do
  use Phoenix.Component

  def admin_sidebar(assigns) do
    ~H"""
    <div class="hidden md:block fixed left-0 top-0 h-screen w-64 bg-[#0d1238] border-r-2 px-5">
      <div class="pb-6">
        <%= for link <- admin_links() do %>
          <.admin_link name={link.name} link={link.link} icon={link.icon} />
        <% end %>
      </div>
    </div>
    """
  end

  defp admin_links do
    [
      %{
        name: "HOME",
        link: "/",
        icon: "bi bi-house-fill"
      },
      %{
        name: "DASHBOARD",
        link: "/dashboard",
        icon: "fa-solid fa-gauge-high"
      },
      %{
        name: "DOCUMENTS",
        link: "/documents",
        icon: "fa-solid fa-newspaper"
      },

    ]
  end

  defp admin_link(assigns) do
    ~H"""
    <div class="w-full p-4 text-base text-white hover:text-black hover:bg-gray-100 rounded-md transition-colors duration-200">
      <.link navigate={@link} class="flex items-center space-x-3">
        <i class={@icon}></i>
        <span><%= @name %></span>
      </.link>
    </div>
    """
  end
end
