defmodule Lawyer.Repo do
  use Ecto.Repo,
    otp_app: :lawyer,
    adapter: Ecto.Adapters.Postgres
end
