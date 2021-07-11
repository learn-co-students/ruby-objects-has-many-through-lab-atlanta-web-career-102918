class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all 
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end

  def appointments
    appointments = Appointment.all.find_all {|a| a.doctor == self}
  end

  def patients
    patients = self.appointments.collect {|a| a.patient}.uniq
  end
end