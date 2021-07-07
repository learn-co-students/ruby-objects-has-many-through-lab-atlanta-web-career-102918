class Doctor

  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#   #new_appointment
#   given a date and a patient, creates a new appointment (FAILED - 1)
# #appointments
#   has many appointments (FAILED - 2)
# #patients
#   has many patients, through appointments (FAILED - 3)

  def appointments

    Appointment.all.select do |app|

      app.doctor == self
    end
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def patients

    array = []
    Appointment.all.each do |app|
      if app.doctor == self

        array << app.patient
      end
    end
    array
  end

end
