defmodule Lawyer.Documents.Document do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "documents" do
    field :title, :string
    field :category, :string
    field :content, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(document, attrs) do
    document
    |> cast(attrs, [:title, :content, :category])
    |> validate_required([:title, :content, :category])
  end
end
