class TeacherClock < ApplicationRecord
  before_create :generate_teacher_logged_time
  before_validation :store_teacher_logged_time_before_initial_validation

  validates :teacher_name, presence: true, allow_nil: false
  validates :teacher_clocked_in, inclusion: [true, false], allow_nil: false
  validates :teacher_logged_time, presence: true, allow_nil: false

  private
    def generate_teacher_logged_time
      self.teacher_logged_time = DateTime.now
    end

    def store_teacher_logged_time_before_initial_validation
      if self.id == nil
        generate_teacher_logged_time
      end
    end
end
