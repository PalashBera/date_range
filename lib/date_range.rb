require "active_support/core_ext/integer"
require "active_support/core_ext/date_time"

class DateRange
  UNITS = %w[minute hour day week month year].freeze

  class << self
    UNITS.each do |unit|
      define_method :"current_#{unit}" do
        start_date = DateTime.now.public_send("beginning_of_#{unit}")
        end_date = DateTime.now.public_send("end_of_#{unit}")

        [start_date, end_date]
      end

      define_method :"last_#{unit}" do |value = 1|
        start_date = (DateTime.now - (value - 1).public_send(unit)).public_send("beginning_of_#{unit}")
        end_date = DateTime.now.public_send("end_of_#{unit}")

        [start_date, end_date]
      end

      define_method :"previous_#{unit}" do |value = 1|
        start_date = (DateTime.now - value.public_send(unit)).public_send("beginning_of_#{unit}")
        end_date = (DateTime.now - 1.public_send(unit)).public_send("end_of_#{unit}")

        [start_date, end_date]
      end

      define_method :"next_#{unit}" do |value = 1|
        start_date = DateTime.now.public_send("beginning_of_#{unit}")
        end_date = (DateTime.now + (value - 1).public_send(unit)).public_send("end_of_#{unit}")

        [start_date, end_date]
      end

      define_method :"upcoming_#{unit}" do |value = 1|
        start_date = (DateTime.now + 1.public_send(unit)).public_send("beginning_of_#{unit}")
        end_date = (DateTime.now + value.public_send(unit)).public_send("end_of_#{unit}")

        [start_date, end_date]
      end
    end

    def today
      current_day
    end

    def yesterday
      previous_day
    end

    def tomorrow
      upcoming_day
    end

    def custom(start_date = nil, end_date = nil)
      return [start_date, end_date] unless start_date && end_date

      start_date = start_date.beginning_of_day
      end_date = end_date.end_of_day

      [start_date, end_date]
    end
  end
end
