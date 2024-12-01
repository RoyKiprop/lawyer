defmodule Lawyer.DocumentsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Lawyer.Documents` context.
  """

  @doc """
  Generate a document.
  """
  def document_fixture(attrs \\ %{}) do
    {:ok, document} =
      attrs
      |> Enum.into(%{
        category: "some category",
        content: "some content",
        title: "some title"
      })
      |> Lawyer.Documents.create_document()

    document
  end
end
