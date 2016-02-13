module PublicHelper
  ##
  # Meetups are held on the first tuesday of every month
  # Find the next meetup.
  # @return (DateTime) the date of the next meetup
  def next_meetup
    todays_date = DateTime.now
    while (next_tuesday = find_first_tuesday(todays_date)) < DateTime.now
      todays_date += 1.month
    end
    next_tuesday
  end

  private
    ##
    # Find the the first tuesday of the month
    # @param date (DateTime)
    # @return (DateTime) The date of the first tuesday
    def find_first_tuesday(date)
      date = date.beginning_of_month
      while date.strftime('%A') != 'Tuesday'
        date += 1.day
      end
      date
    end
end
