defmodule Arc.Ecto.Mixfile do
  use Mix.Project

  @version "0.12.0"

  def project do
    [
      app: :arc_ecto,
      version: @version,
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps(),

      # Hex
      description: description(),
      package: package()
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [extra_applications: [:logger, :waffle, :ecto, :eex]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp description do
    """
    An integration with Arc and Ecto.
    """
  end

  defp package do
    [
      maintainers: ["Rafael Arcanjo"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/NeoArcanjo/arc_ecto"},
      files: ~w(mix.exs README.md lib)
    ]
  end

  defp deps do
    [
      {:igniter, "~> 0.5", only: [:dev, :test]},
      {:ecto, "~> 3.0"},
      {:ex_doc, "~> 0.37.0", only: :dev},
      {:mock, "~> 0.3", only: :test},
      {:waffle, "~> 1.1.9", only: :test}
    ]
  end
end
