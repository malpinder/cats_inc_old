class AddMegaImportantFlagToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :mega_important, :boolean
  end
end
