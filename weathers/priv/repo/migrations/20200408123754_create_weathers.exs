defmodule Weathers.Repo.Migrations.CreateWeathers do
  use Ecto.Migration

  def change do
    create table(:weathers) do
      add :city_number, :integer, null: false
      add :city, :string, null: false
      add :text, :text, null: false

      timestamps()
    end
  end
end
