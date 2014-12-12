class H2 < ActiveRecord::Base

  def self.primary_key
    'mac'
  end

  def self.search(search, page)
    order('abon_id').where('h2.abon_id LIKE ? or h2.mac LIKE ? or h2.ip LIKE ? or h2.tp  LIKE ? or h2.sw_port LIKE ? or h2.vlan LIKE ? or h2.blocked LIKE ?',"%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%").paginate(page: page, per_page: 10)
  end

  def dns_one= value
    self[:'1dns'] = value
  end

  def dns_two= value
    self[:'2dns'] = value
  end

end
