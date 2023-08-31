defmodule Datrex.Repo do
  @moduledoc false
  use Ecto.Repo,
  otp_app: :datrex,
  adapter: Eco.Adapters.Postgres 
  
end
