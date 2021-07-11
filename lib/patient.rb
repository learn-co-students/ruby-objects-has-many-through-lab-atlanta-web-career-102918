class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end

  def self.all 
    @@all
  end

  def appointments
    appointments = Appointment.all.find_all {|a| a.patient == self}
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def doctors
    doctors = self.appointments.collect {|a| a.doctor}.uniq
  end
end