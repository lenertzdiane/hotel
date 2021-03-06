# require 'pry'
module Hotel
  class Reservation
    attr_reader :id, :total_cost, :date1, :date2, :daterange, :room_number, :cost, :partyname

    def initialize(id, room_number, cost, date1, date2=nil, partyname = nil)
      @id = id
      @daterange = DateRange.new(date1, date2)
      @room_number = room_number
      @cost = cost
      @partyname = partyname
    end

    def get_cost
      @total_cost = (cost * @daterange.number_days)
    end

  end
#end of class
end

#end of module
