class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  MONTHS = {
    1 => "January",
    2 => "February",
    3 => "March",
    4 => "April",
    5 => "May",
    6 => "June",
    7 => "July",
    8 => "August",
    9 => "September",
    10 => "October",
    11 => "November",
    12 => "December"
  }
  def readable_time
    date_arr = self.appointment_datetime.to_a
    "#{MONTHS[date_arr[4]]} #{date_arr[3]}, #{date_arr[5]} at #{date_arr[2]}:#{date_arr[1]}"
  end
end
