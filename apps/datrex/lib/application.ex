defmodule Datrex.Application do
  @moduledoc """
  Documentation for `Datrex Application`.
  """
  use Application 
  
  def start(_type, _args) do
    children = [
      Datrex.Repo,
      Datrex.Telemetry,
      {Phoenix.PubSub, name: Datrex.PubSub},
    ]
  end
  



end
