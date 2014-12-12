class CreateH2 < ActiveRecord::Migration
  def change
    create_table :h2 do |t|
      t.string :mac
      t.string :ip
      t.integer :abon_id
      t.string :tp
      t.string :def_gw
      t.integer :vlan
      t.string :netmask
      t.string :1dns
      t.string :2dns
      t.integer :sw_port
      t.string :blocked
      t.string :comment
    end
  end
end
