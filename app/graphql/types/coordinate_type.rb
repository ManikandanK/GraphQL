class Types::CoordinateType < Types::BaseObject
  description "Coordinate Details"
  field :langidude, Float, null: false
  field :lattidude, Float, null: true
  
  def langidude
    object.first
  end

  def lattidude
    object.last
  end
end