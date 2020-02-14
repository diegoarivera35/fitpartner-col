class RemoveSedentario < ActiveRecord::Migration[6.0]
  def change
    remove_column :datos, :sedentario
    remove_column :datos, :moderado
    remove_column :datos, :activo
    add_column :datos, :actividad, :string
  end
end
