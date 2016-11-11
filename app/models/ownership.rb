class Ownership < ActiveRecord::Base
  belongs_to :user, class_name: "User"
  belongs_to :item, class_name: "Item"
  
  def self.ranking(limits = 10)
    ids = self.group(:item_id).order("count_item_id desc").limit(limits).count(:item_id).keys
    Item.find(ids).sort_by do |o|
      ids.index(o.id)
    end
  end
end
