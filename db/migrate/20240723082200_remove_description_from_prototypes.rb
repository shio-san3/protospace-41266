class RemoveDescriptionFromPrototypes < ActiveRecord::Migration[7.0]
  def change
    if column_exists?(:prototypes, :name)
      remove_column :prototypes, :name, :string
    end
  end

  def change
    if column_exists?(:prototypes, :description)
      remove_column :prototypes, :description, :text
    end
  end
end
