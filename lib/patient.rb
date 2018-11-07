class Patient
  attr_reader :name
#   #new
#   initializes with a name (FAILED - 8)
# #new_appointment
#   given a doctor and date, creates a new appointment belonging to that patient (FAILED - 9)
# .all
#   knows about all patients (FAILED - 10)
# #appointments
#   has many doctors through appointments (FAILED - 11)
# #doctors
#   has many doctors through appointments (FAILED - 12)
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |app|
      app.patient == self
    end
  end

  def doctors
    array = []
    Appointment.all.each do |app|
      if app.patient == self
        array << app.doctor
      end
    end
    array
  end

  def self.all
    @@all
  end

end
