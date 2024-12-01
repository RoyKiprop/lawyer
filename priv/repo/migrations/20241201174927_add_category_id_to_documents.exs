defmodule Lawyer.Repo.Migrations.AddCategoryIdToDocuments do
  use Ecto.Migration

  def change do
    alter table(:documents) do
      add :category_id, references(:categories)
    end

    alter table(:documents) do
      remove :category
    end

    create index(:documents, [:category_id])
  end
end
