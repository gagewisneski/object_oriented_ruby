class Electronics < Item
  attr_reader :battery
  def initialize(item_option)
    super
    @battery = item_option[:battery]
  end

end