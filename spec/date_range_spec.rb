require "spec_helper"

describe DateRange do
  describe "#current_minute" do
    it "should return current minute start and end" do
      start_date, end_date = DateRange.current_minute

      expect(start_date).to eq(DateTime.now.beginning_of_minute)
      expect(end_date).to eq(DateTime.now.end_of_minute)
    end
  end

  describe "#current_hour" do
    it "should return current hour start and end" do
      start_date, end_date = DateRange.current_hour

      expect(start_date).to eq(DateTime.now.beginning_of_hour)
      expect(end_date).to eq(DateTime.now.end_of_hour)
    end
  end

  describe "#current_day" do
    it "should return current day start and end" do
      start_date, end_date = DateRange.current_day

      expect(start_date).to eq(DateTime.now.beginning_of_day)
      expect(end_date).to eq(DateTime.now.end_of_day)
    end
  end

  describe "#current_week" do
    it "should return current week start and end" do
      start_date, end_date = DateRange.current_week

      expect(start_date).to eq(DateTime.now.beginning_of_week)
      expect(end_date).to eq(DateTime.now.end_of_week)
    end
  end

  describe "#current_month" do
    it "should return current month start and end" do
      start_date, end_date = DateRange.current_month

      expect(start_date).to eq(DateTime.now.beginning_of_month)
      expect(end_date).to eq(DateTime.now.end_of_month)
    end
  end

  describe "#current_year" do
    it "should return current year start and end" do
      start_date, end_date = DateRange.current_year

      expect(start_date).to eq(DateTime.now.beginning_of_year)
      expect(end_date).to eq(DateTime.now.end_of_year)
    end
  end

  describe "#last_minute" do
    context "when we are not passing any argument" do
      it "should return last minute start and end" do
        start_date, end_date = DateRange.last_minute

        expect(start_date).to eq(DateTime.now.beginning_of_minute)
        expect(end_date).to eq(DateTime.now.end_of_minute)
      end
    end

    context "when we are passing argument" do
      it "should return last 2 minute start and end" do
        start_date, end_date = DateRange.last_minute(2)

        expect(start_date).to eq((DateTime.now - 1.minute).beginning_of_minute)
        expect(end_date).to eq(DateTime.now.end_of_minute)
      end
    end
  end

  describe "#last_hour" do
    context "when we are not passing any argument" do
      it "should return last hour start and end" do
        start_date, end_date = DateRange.last_hour

        expect(start_date).to eq(DateTime.now.beginning_of_hour)
        expect(end_date).to eq(DateTime.now.end_of_hour)
      end
    end

    context "when we are passing argument" do
      it "should return last 2 hour start and end" do
        start_date, end_date = DateRange.last_hour(2)

        expect(start_date).to eq((DateTime.now - 1.hour).beginning_of_hour)
        expect(end_date).to eq(DateTime.now.end_of_hour)
      end
    end
  end

  describe "#last_day" do
    context "when we are not passing any argument" do
      it "should return last day start and end" do
        start_date, end_date = DateRange.last_day

        expect(start_date).to eq(DateTime.now.beginning_of_day)
        expect(end_date).to eq(DateTime.now.end_of_day)
      end
    end

    context "when we are passing argument" do
      it "should return last 2 day start and end" do
        start_date, end_date = DateRange.last_day(2)

        expect(start_date).to eq((DateTime.now - 1.day).beginning_of_day)
        expect(end_date).to eq(DateTime.now.end_of_day)
      end
    end
  end

  describe "#last_week" do
    context "when we are not passing any argument" do
      it "should return last week start and end" do
        start_date, end_date = DateRange.last_week

        expect(start_date).to eq(DateTime.now.beginning_of_week)
        expect(end_date).to eq(DateTime.now.end_of_week)
      end
    end

    context "when we are passing argument" do
      it "should return last 2 week start and end" do
        start_date, end_date = DateRange.last_week(2)

        expect(start_date).to eq((DateTime.now - 1.week).beginning_of_week)
        expect(end_date).to eq(DateTime.now.end_of_week)
      end
    end
  end

  describe "#last_month" do
    context "when we are not passing any argument" do
      it "should return last month start and end" do
        start_date, end_date = DateRange.last_month

        expect(start_date).to eq(DateTime.now.beginning_of_month)
        expect(end_date).to eq(DateTime.now.end_of_month)
      end
    end

    context "when we are passing argument" do
      it "should return last 2 month start and end" do
        start_date, end_date = DateRange.last_month(2)

        expect(start_date).to eq((DateTime.now - 1.month).beginning_of_month)
        expect(end_date).to eq(DateTime.now.end_of_month)
      end
    end
  end

  describe "#last_year" do
    context "when we are not passing any argument" do
      it "should return last year start and end" do
        start_date, end_date = DateRange.last_year

        expect(start_date).to eq(DateTime.now.beginning_of_year)
        expect(end_date).to eq(DateTime.now.end_of_year)
      end
    end

    context "when we are passing argument" do
      it "should return last 2 year start and end" do
        start_date, end_date = DateRange.last_year(2)

        expect(start_date).to eq((DateTime.now - 1.year).beginning_of_year)
        expect(end_date).to eq(DateTime.now.end_of_year)
      end
    end
  end

  describe "#previous_minute" do
    context "when we are not passing any argument" do
      it "should return previous minute start and end" do
        start_date, end_date = DateRange.previous_minute

        expect(start_date).to eq((DateTime.now - 1.minute).beginning_of_minute)
        expect(end_date).to eq((DateTime.now - 1.minute).end_of_minute)
      end
    end

    context "when we are passing argument" do
      it "should return previous 2 minute start and end" do
        start_date, end_date = DateRange.previous_minute(2)

        expect(start_date).to eq((DateTime.now - 2.minute).beginning_of_minute)
        expect(end_date).to eq((DateTime.now - 1.minute).end_of_minute)
      end
    end
  end

  describe "#previous_hour" do
    context "when we are not passing any argument" do
      it "should return previous hour start and end" do
        start_date, end_date = DateRange.previous_hour

        expect(start_date).to eq((DateTime.now - 1.hour).beginning_of_hour)
        expect(end_date).to eq((DateTime.now - 1.hour).end_of_hour)
      end
    end

    context "when we are passing argument" do
      it "should return previous 2 hour start and end" do
        start_date, end_date = DateRange.previous_hour(2)

        expect(start_date).to eq((DateTime.now - 2.hour).beginning_of_hour)
        expect(end_date).to eq((DateTime.now - 1.hour).end_of_hour)
      end
    end
  end

  describe "#previous_day" do
    context "when we are not passing any argument" do
      it "should return previous day start and end" do
        start_date, end_date = DateRange.previous_day

        expect(start_date).to eq((DateTime.now - 1.day).beginning_of_day)
        expect(end_date).to eq((DateTime.now - 1.day).end_of_day)
      end
    end

    context "when we are passing argument" do
      it "should return previous 2 day start and end" do
        start_date, end_date = DateRange.previous_day(2)

        expect(start_date).to eq((DateTime.now - 2.day).beginning_of_day)
        expect(end_date).to eq((DateTime.now - 1.day).end_of_day)
      end
    end
  end

  describe "#previous_week" do
    context "when we are not passing any argument" do
      it "should return previous week start and end" do
        start_date, end_date = DateRange.previous_week

        expect(start_date).to eq((DateTime.now - 1.week).beginning_of_week)
        expect(end_date).to eq((DateTime.now - 1.week).end_of_week)
      end
    end

    context "when we are passing argument" do
      it "should return previous 2 week start and end" do
        start_date, end_date = DateRange.previous_week(2)

        expect(start_date).to eq((DateTime.now - 2.week).beginning_of_week)
        expect(end_date).to eq((DateTime.now - 1.week).end_of_week)
      end
    end
  end

  describe "#previous_month" do
    context "when we are not passing any argument" do
      it "should return previous month start and end" do
        start_date, end_date = DateRange.previous_month

        expect(start_date).to eq((DateTime.now - 1.month).beginning_of_month)
        expect(end_date).to eq((DateTime.now - 1.month).end_of_month)
      end
    end

    context "when we are passing argument" do
      it "should return previous 2 month start and end" do
        start_date, end_date = DateRange.previous_month(2)

        expect(start_date).to eq((DateTime.now - 2.month).beginning_of_month)
        expect(end_date).to eq((DateTime.now - 1.month).end_of_month)
      end
    end
  end

  describe "#previous_year" do
    context "when we are not passing any argument" do
      it "should return previous year start and end" do
        start_date, end_date = DateRange.previous_year

        expect(start_date).to eq((DateTime.now - 1.year).beginning_of_year)
        expect(end_date).to eq((DateTime.now - 1.year).end_of_year)
      end
    end

    context "when we are passing argument" do
      it "should return previous 2 year start and end" do
        start_date, end_date = DateRange.previous_year(2)

        expect(start_date).to eq((DateTime.now - 2.year).beginning_of_year)
        expect(end_date).to eq((DateTime.now - 1.year).end_of_year)
      end
    end
  end

  describe "#next_minute" do
    context "when we are not passing any argument" do
      it "should return next minute start and end" do
        start_date, end_date = DateRange.next_minute

        expect(start_date).to eq(DateTime.now.beginning_of_minute)
        expect(end_date).to eq(DateTime.now.end_of_minute)
      end
    end

    context "when we are passing argument" do
      it "should return next 2 minute start and end" do
        start_date, end_date = DateRange.next_minute(2)

        expect(start_date).to eq(DateTime.now.beginning_of_minute)
        expect(end_date).to eq((DateTime.now + 1.minute).end_of_minute)
      end
    end
  end

  describe "#next_hour" do
    context "when we are not passing any argument" do
      it "should return next hour start and end" do
        start_date, end_date = DateRange.next_hour

        expect(start_date).to eq(DateTime.now.beginning_of_hour)
        expect(end_date).to eq(DateTime.now.end_of_hour)
      end
    end

    context "when we are passing argument" do
      it "should return next 2 hour start and end" do
        start_date, end_date = DateRange.next_hour(2)

        expect(start_date).to eq(DateTime.now.beginning_of_hour)
        expect(end_date).to eq((DateTime.now + 1.hour).end_of_hour)
      end
    end
  end

  describe "#next_day" do
    context "when we are not passing any argument" do
      it "should return next day start and end" do
        start_date, end_date = DateRange.next_day

        expect(start_date).to eq(DateTime.now.beginning_of_day)
        expect(end_date).to eq(DateTime.now.end_of_day)
      end
    end

    context "when we are passing argument" do
      it "should return next 2 day start and end" do
        start_date, end_date = DateRange.next_day(2)

        expect(start_date).to eq(DateTime.now.beginning_of_day)
        expect(end_date).to eq((DateTime.now + 1.day).end_of_day)
      end
    end
  end

  describe "#next_week" do
    context "when we are not passing any argument" do
      it "should return next week start and end" do
        start_date, end_date = DateRange.next_week

        expect(start_date).to eq(DateTime.now.beginning_of_week)
        expect(end_date).to eq(DateTime.now.end_of_week)
      end
    end

    context "when we are passing argument" do
      it "should return next 2 week start and end" do
        start_date, end_date = DateRange.next_week(2)

        expect(start_date).to eq(DateTime.now.beginning_of_week)
        expect(end_date).to eq((DateTime.now + 1.week).end_of_week)
      end
    end
  end

  describe "#next_month" do
    context "when we are not passing any argument" do
      it "should return next month start and end" do
        start_date, end_date = DateRange.next_month

        expect(start_date).to eq(DateTime.now.beginning_of_month)
        expect(end_date).to eq(DateTime.now.end_of_month)
      end
    end

    context "when we are passing argument" do
      it "should return next 2 month start and end" do
        start_date, end_date = DateRange.next_month(2)

        expect(start_date).to eq(DateTime.now.beginning_of_month)
        expect(end_date).to eq((DateTime.now + 1.month).end_of_month)
      end
    end
  end

  describe "#next_year" do
    context "when we are not passing any argument" do
      it "should return next year start and end" do
        start_date, end_date = DateRange.next_year

        expect(start_date).to eq(DateTime.now.beginning_of_year)
        expect(end_date).to eq(DateTime.now.end_of_year)
      end
    end

    context "when we are passing argument" do
      it "should return next 2 year start and end" do
        start_date, end_date = DateRange.next_year(2)

        expect(start_date).to eq(DateTime.now.beginning_of_year)
        expect(end_date).to eq((DateTime.now + 1.year).end_of_year)
      end
    end
  end

  describe "#upcoming_minute" do
    context "when we are not passing any argument" do
      it "should return upcoming minute start and end" do
        start_date, end_date = DateRange.upcoming_minute

        expect(start_date).to eq((DateTime.now + 1.minute).beginning_of_minute)
        expect(end_date).to eq((DateTime.now + 1.minute).end_of_minute)
      end
    end

    context "when we are passing argument" do
      it "should return upcoming 2 minute start and end" do
        start_date, end_date = DateRange.upcoming_minute(2)

        expect(start_date).to eq((DateTime.now + 1.minute).beginning_of_minute)
        expect(end_date).to eq((DateTime.now + 2.minute).end_of_minute)
      end
    end
  end

  describe "#upcoming_hour" do
    context "when we are not passing any argument" do
      it "should return upcoming hour start and end" do
        start_date, end_date = DateRange.upcoming_hour

        expect(start_date).to eq((DateTime.now + 1.hour).beginning_of_hour)
        expect(end_date).to eq((DateTime.now + 1.hour).end_of_hour)
      end
    end

    context "when we are passing argument" do
      it "should return upcoming 2 hour start and end" do
        start_date, end_date = DateRange.upcoming_hour(2)

        expect(start_date).to eq((DateTime.now + 1.hour).beginning_of_hour)
        expect(end_date).to eq((DateTime.now + 2.hour).end_of_hour)
      end
    end
  end

  describe "#upcoming_hour" do
    context "when we are not passing any argument" do
      it "should return upcoming hour start and end" do
        start_date, end_date = DateRange.upcoming_hour

        expect(start_date).to eq((DateTime.now + 1.hour).beginning_of_hour)
        expect(end_date).to eq((DateTime.now + 1.hour).end_of_hour)
      end
    end

    context "when we are passing argument" do
      it "should return upcoming 2 hour start and end" do
        start_date, end_date = DateRange.upcoming_hour(2)

        expect(start_date).to eq((DateTime.now + 1.hour).beginning_of_hour)
        expect(end_date).to eq((DateTime.now + 2.hour).end_of_hour)
      end
    end
  end

  describe "#upcoming_week" do
    context "when we are not passing any argument" do
      it "should return upcoming week start and end" do
        start_date, end_date = DateRange.upcoming_week

        expect(start_date).to eq((DateTime.now + 1.week).beginning_of_week)
        expect(end_date).to eq((DateTime.now + 1.week).end_of_week)
      end
    end

    context "when we are passing argument" do
      it "should return upcoming 2 week start and end" do
        start_date, end_date = DateRange.upcoming_week(2)

        expect(start_date).to eq((DateTime.now + 1.week).beginning_of_week)
        expect(end_date).to eq((DateTime.now + 2.week).end_of_week)
      end
    end
  end

  describe "#upcoming_month" do
    context "when we are not passing any argument" do
      it "should return upcoming month start and end" do
        start_date, end_date = DateRange.upcoming_month

        expect(start_date).to eq((DateTime.now + 1.month).beginning_of_month)
        expect(end_date).to eq((DateTime.now + 1.month).end_of_month)
      end
    end

    context "when we are passing argument" do
      it "should return upcoming 2 month start and end" do
        start_date, end_date = DateRange.upcoming_month(2)

        expect(start_date).to eq((DateTime.now + 1.month).beginning_of_month)
        expect(end_date).to eq((DateTime.now + 2.month).end_of_month)
      end
    end
  end

  describe "#upcoming_year" do
    context "when we are not passing any argument" do
      it "should return upcoming year start and end" do
        start_date, end_date = DateRange.upcoming_year

        expect(start_date).to eq((DateTime.now + 1.year).beginning_of_year)
        expect(end_date).to eq((DateTime.now + 1.year).end_of_year)
      end
    end

    context "when we are passing argument" do
      it "should return upcoming 2 year start and end" do
        start_date, end_date = DateRange.upcoming_year(2)

        expect(start_date).to eq((DateTime.now + 1.year).beginning_of_year)
        expect(end_date).to eq((DateTime.now + 2.year).end_of_year)
      end
    end
  end

  describe "#today" do
    it "should return today start and end" do
      start_date, end_date = DateRange.today

      expect(start_date).to eq(DateTime.now.beginning_of_day)
      expect(end_date).to eq(DateTime.now.end_of_day)
    end
  end

  describe "#yesterday" do
    it "should return yesterday start and end" do
      start_date, end_date = DateRange.yesterday

      expect(start_date).to eq(DateTime.now.yesterday.beginning_of_day)
      expect(end_date).to eq(DateTime.now.yesterday.end_of_day)
    end
  end

  describe "#tomorrow" do
    it "should return tomorrow start and end" do
      start_date, end_date = DateRange.tomorrow

      expect(start_date).to eq(DateTime.now.tomorrow.beginning_of_day)
      expect(end_date).to eq(DateTime.now.tomorrow.end_of_day)
    end
  end

  describe "#custom" do
    context "when we are not passing any argument" do
      it "should return nil for start date and end date" do
        start_date, end_date = DateRange.custom

        expect(start_date).to eq(nil)
        expect(end_date).to eq(nil)
      end
    end

    context "when we are passing argument" do
      it "should return start date and end date" do
        start_date, end_date = DateRange.custom(DateTime.now, DateTime.now.tomorrow)

        expect(start_date).to eq(DateTime.now.beginning_of_day)
        expect(end_date).to eq(DateTime.now.tomorrow.end_of_day)
      end
    end
  end
end
