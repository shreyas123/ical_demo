require 'ri_cal'
module CreateIcall
  def create_icall_file(event)
    cal = RiCal.Calendar do |call|
      call.event do |event1|
        event1.summary     = "Mercury MA-6"
        event1.description = "#{event.description}"
        event1.dtstart     = event.start_date
        event1.dtend    = event.end_date
        event1.location    = "#{event.location}"
        event1.add_attendee  "#{event.attendees}"
        event1.url         = "http://nasa.gov"
        
      end
    end
    f = File.new("#{RAILS_ROOT}/public/icall/#{event.id}#{event.created_at.strftime("%Y%m%d%k%M%S")}.ics","w+")
    f.puts(cal)
    f.close
  end
  
  def subscribe_file(filename)
    
  end
  
  def update_icall_file(event)
    cal = RiCal.Calendar do |call|
      call.event do |event1|
        event1.summary     = "Mercury MA-6"
        event1.description = "#{event.description}"
        event1.dtstart     = event.start_date
        event1.dtend       = event.end_date
        event1.location    = "#{event.location}"
        event1.add_attendee  "#{event.attendees}"
        event1.url         = "http://nasa.gov"
      end
    end
    f = File.open("#{RAILS_ROOT}/public/icall/#{event.id}#{event.created_at.strftime("%Y%m%d%k%M%S")}.ics","w+")
    f.puts(cal)
    f.close
  end
  
end