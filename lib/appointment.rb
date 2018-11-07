class Appointment
    attr_reader :patient, :doctor, :date
#   .all
#   knows about all appointments that have been created (FAILED - 4)
# #new
#   initializes with a patient, doctor, and date (FAILED - 5)
# #patient
#   belongs to a patient (FAILED - 6)
# #doctor
#   belongs to a doctor (FAILED - 7)
  @@all = []
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    
    @@all
  end
end
