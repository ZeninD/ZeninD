class AddVoutesCountToItems < ActiveRecord::Migration
  def change
    add_column :items, :voutes_count, :integer, defoult: 0
  end
end
