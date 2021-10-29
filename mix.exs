defmodule ExpasswordAlgorithm.MixProject do
  use Mix.Project

  def project do
    [
      app: :expassword_algorithm,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      source_url: "https://github.com/julp/expassword",
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: ~W[logger]a
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:earmark, "~> 1.4", only: :dev},
      {:ex_doc, "~> 0.22", only: :dev},
    ]
  end

  defp description() do
    ~S"""
    The behaviour each ExPassword algorithm has to implement
    """
  end

  defp package() do
    [
      files: ~W[lib mix.exs README*],
      licenses: ~W[BSD],
      links: %{"GitHub" => "https://github.com/julp/expassword_algorithm"},
    ]
  end
end
