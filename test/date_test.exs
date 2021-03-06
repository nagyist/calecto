defmodule DateTest do
  use ExUnit.Case

  @calecto_date %Calecto.Date{day: 29, month: 7, year: 2015}
  @calendar_date %Calendar.Date{day: 29, month: 7, year: 2015}
  @string_date "2015-07-29"
  @map_date %{"day" => "29", "month" => "7", "year" => "2015"}
  @tuple_date {2015, 7, 29}


  test "dump Date" do
    assert Calecto.Date.dump(@calendar_date) == {:ok, @tuple_date}
    assert Calecto.Date.dump(@calecto_date) == {:ok, @tuple_date}
  end

  test "load Date" do
    assert Calecto.Date.load(@tuple_date) == {:ok, @calendar_date}
  end

  test "cast Date" do
    assert Calecto.Date.cast(@calendar_date) == {:ok, @calendar_date}
    assert Calecto.Date.cast(@calecto_date) == {:ok, @calendar_date}
    assert Calecto.Date.cast(@string_date) == {:ok, @calendar_date}
    assert Calecto.Date.cast(@map_date) == {:ok, @calendar_date}
    assert Calecto.Date.cast(@tuple_date) == {:ok, @calendar_date}
  end

  test "cast bang Date" do
    assert Calecto.Date.cast!(@calendar_date) == @calendar_date
    assert Calecto.Date.cast!(@calecto_date) == @calendar_date
  end
end
