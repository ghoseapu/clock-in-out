require 'test_helper'

class TeacherClockTest < ActiveSupport::TestCase
  test 'teacher_name should be at least of 1 character' do
    teacher_clock = TeacherClock.new({
      teacher_name: '',
      teacher_clocked_in: true,
      teacher_logged_time: DateTime.now,
    })
    assert_not teacher_clock.valid?, 'Teacher clock event valid with no name'
  end

  test 'teacher_logged_time should be present and should be a DateTime object' do
    teacher_clock = TeacherClock.new({
      teacher_name: 'name',
      teacher_logged_time: DateTime.now,
    })

    assert_not teacher_clock.valid? 'New teacher clock event invalid with teacher_logged_time generated'
  end
  
  test 'teacher_clocked_in should be present and should be a boolean' do
    teacher_clock = TeacherClock.new({
      teacher_name: 'name',
      teacher_clocked_in: true,
    })

    assert teacher_clock.valid?, 'Teacher clock event valid with no teacher_clocked_in'

    teacher_clock = TeacherClock.new({
      teacher_name: 'name',
      teacher_clocked_in: true,
      teacher_logged_time: DateTime.now,
    })
    datetime = teacher_clock.teacher_logged_time
    # simulating an udpate (clock event alreadyb exists)
    teacher_clock.id = 1
    
    assert teacher_clock.valid?, 'Update clock event invalid with valid teacher_logged_time'
    assert teacher_clock.teacher_logged_time == datetime, 'Clock event validation with teacher_logged_time overwrites teacher_logged_time'
  end
end
