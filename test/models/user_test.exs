defmodule EctoPhoenix.UserTest do
  use EctoPhoenix.ModelCase

  alias EctoPhoenix.User

  @valid_attrs %{bio: "some bio", email: "some email", name: "some name", number_of_pets: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
