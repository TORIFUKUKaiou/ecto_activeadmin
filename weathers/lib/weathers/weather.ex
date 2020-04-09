defmodule Weathers.Weather do
  use Ecto.Schema
  import Ecto.Changeset

  schema "weathers" do
    field(:city_number, :integer)
    field(:city, :string)
    field(:text, :string)

    timestamps()
  end

  def changeset(weather, attrs) do
    weather
    |> cast(attrs, [:city_number, :city, :text])
    |> validate_required([:city_number, :city, :text])
  end
end
