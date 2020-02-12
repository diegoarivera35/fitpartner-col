class CreateDatos < ActiveRecord::Migration[6.0]
  def change
    create_table :datos do |t|
      t.string :genero            
      t.boolean :sedentario            
      t.boolean :moderado            
      t.boolean :activo             
      t.integer :altura            
      t.integer :peso              
      t.integer :cintura             
      t.integer :cuello         
      t.integer :cadera      
      t.timestamps
    end
  end
end
