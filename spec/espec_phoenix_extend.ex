defmodule ESpec.Phoenix.Extend do
  def model do
    quote do
      alias ThemePreview.Repo
    end
  end

  def controller do
    quote do
      alias ThemePreview
      import ThemePreview.Router.Helpers

      @endpoint ThemePreview.Endpoint
    end
  end

  def view do
    quote do
      import ThemePreview.Router.Helpers
    end
  end

  def channel do
    quote do
      alias ThemePreview.Repo

      @endpoint ThemePreview.Endpoint
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
