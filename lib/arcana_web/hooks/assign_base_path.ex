defmodule ArcanaWeb.Hooks.AssignBasePath do
  @moduledoc false
  import Phoenix.Component, only: [assign: 3]

  def on_mount(:default, _params, session, socket) do
    {:cont, assign(socket, :base_path, session["base_path"] || "/arcana")}
  end
end
