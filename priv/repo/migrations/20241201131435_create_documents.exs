defmodule Lawyer.Repo.Migrations.CreateDocuments do
  use Ecto.Migration

  def change do
    create table(:documents) do
      add :title, :string
      add :content, :text
      add :category, :string

      timestamps(type: :utc_datetime)
    end
  end
end
