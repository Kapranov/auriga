json.array!(@h2) do |h2|
  json.extract! h2, :mac, :ip, :abon_id, :tp, :def_gw, :vlan, :netmask, :'1dns', :'2dns', :sw_port, :blocked, :commnet
  json.url h2_url(h2, format: :json)
end
