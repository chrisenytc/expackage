defmodule ExPackage.Mixfile do
  use Mix.Project

  @name "ExPackage"

  @description """
    A example of a Elixir package
  """

  @version "0.1.0"

  @repo "https://github.com/chrisenytc/expackage"

  def project do
    [app: :expackage,
     version: @version,
     elixir: "~> 1.0",
     name: @name,
     description: @description,
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     source_url: @repo]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    []
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    []
  end

  defp package do
    [ maintainers: ["Christopher EnyTC"],
      licenses: ["MIT"],
      links: %{"Github" => @repo} ]
  end
end
