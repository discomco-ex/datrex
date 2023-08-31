defmodule Datrex.RepoTest do
  use ExUnit.Case

  alias Datrex.Repo

  @moduletag :capture_log

  doctest Repo

  test "module exists" do
    assert is_list(Repo.module_info())
  end
end
