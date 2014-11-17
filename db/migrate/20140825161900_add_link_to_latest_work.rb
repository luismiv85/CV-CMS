class AddLinkToLatestWork < ActiveRecord::Migration
  def change
  		add_column :admin_latest_works, :link, :string
  end
end
