defmodule ArcanaWeb.DashboardLive do
  @moduledoc """
  Redirects to the Documents page.

  This module previously contained the monolithic dashboard with tab switching.
  It has been replaced by separate LiveView pages for each tab:

  - `/documents` - ArcanaWeb.DocumentsLive
  - `/collections` - ArcanaWeb.CollectionsLive
  - `/search` - ArcanaWeb.SearchLive
  - `/ask` - ArcanaWeb.AskLive
  - `/evaluation` - ArcanaWeb.EvaluationLive
  - `/maintenance` - ArcanaWeb.MaintenanceLive
  - `/info` - ArcanaWeb.InfoLive
  """
  use Phoenix.LiveView

  @impl true
  def mount(_params, session, socket) do
    base_path = session["base_path"] || "/arcana"
    {:ok, push_navigate(socket, to: "#{base_path}/documents")}
  end

  @impl true
  def render(assigns) do
    ~H""
  end
end
