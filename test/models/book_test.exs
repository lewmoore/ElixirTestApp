defmodule Testapp.BookTest do
  use Testapp.ModelCase

  alias Testapp.Book

  @valid_attrs %{author: "some author", title: "some title"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Book.changeset(%Book{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Book.changeset(%Book{}, @invalid_attrs)
    refute changeset.valid?
  end
end
