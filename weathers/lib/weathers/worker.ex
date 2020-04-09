defmodule Weathers.Worker do
  use GenServer

  def start_link(initial_val) do
    GenServer.start_link(__MODULE__, initial_val, name: __MODULE__)
  end

  def init(initial_val) do
    Process.send_after(__MODULE__, :tick, 1000)
    {:ok, initial_val}
  end

  def handle_info(:tick, state) do
    spawn(Weathers.Worker, :run, [])
    Process.send_after(__MODULE__, :tick, 1000 * 60 * 60)

    {:noreply, state}
  end

  def run do
    {city_number, city} = Lwwsx.cities() |> Enum.random()
    {:ok, text} = Lwwsx.current_text(city_number)

    Weathers.Repo.insert(
      Weathers.Weather.changeset(%Weathers.Weather{}, %{city_number: city_number, city: city, text: text})
    )
  end
end
