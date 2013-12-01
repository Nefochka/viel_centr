module VielHelper
  def set_active_if(item, active_item)
    item.to_s == active_item.to_s ? 'active' : nil
  end
end
