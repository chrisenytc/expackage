defmodule ExPackageTest do
  use ExUnit.Case

  test "should return a hello message" do
    assert ExPackage.awesome "Livia" == "Hello Livia"
  end
end
