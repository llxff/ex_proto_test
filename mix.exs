defmodule ProtoTest.Mixfile do
  use Mix.Project

  def project do
    [
      app: :proto_test,
      version: "0.1.0",
      elixir: "~> 1.7",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(),
      deps: deps()
    ]
  end

  def application do
    [extra_applications: []]
  end

  defp elixirc_paths(), do: ["code", "priv/proto"]

  defp deps do
    [
      {:benchee, "~> 0.13"},
      {:exprotobuf, github: "coingaming/exprotobuf2"},
      {:protobuf, "~> 0.5"}
    ]
  end
end
