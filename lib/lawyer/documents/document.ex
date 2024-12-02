defmodule Lawyer.Documents.Document do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "documents" do
    field :title, :string
    field :content, :string

    belongs_to :category, Lawyer.Categories.Category

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(document, attrs) do
    document
    |> cast(attrs, [:title, :content, :category_id])
    |> validate_required([:title, :content, :category_id])
  end
end
