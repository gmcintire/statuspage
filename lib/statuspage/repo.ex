defmodule Statuspage.Repo do
  use Ecto.Repo,
    otp_app: :statuspage,
    adapter: Ecto.Adapters.Postgres
end
