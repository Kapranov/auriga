class H2Serializer < ActiveModel::Serializer
  attributes :id, :mac, :ip, :abon_id, :tp, :def_gw, :vlan, :netmask, :"1dns", :"2dns", :sw_port, :blocked, :comment
end
