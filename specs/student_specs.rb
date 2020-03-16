require('minitest/autorun')
require('minitest/reporters')

require_relative('../student.rb')

class TestCodeClanStudent < MiniTest::Test
  def setup
    @codeclanstudent = CodeClanStudent.new('Jimmy', 'G18', 'Ruby')
  end

  def test_get_name
    assert_equal('Jimmy', @codeclanstudent.get_name)
  end

  def test_get_cohort
    assert_equal('G18', @codeclanstudent.get_cohort)
  end

  def test_set_name
    @codeclanstudent.set_name('Eddie')
    assert_equal('Eddie', @codeclanstudent.get_name)
  end

  def test_set_cohort
    @codeclanstudent.set_cohort('E30')
    assert_equal('E30', @codeclanstudent.get_cohort)
  end

  def test_talk
    assert_equal('Jimmy can talk.', @codeclanstudent.talk)
  end

  # def test_favourite_languge
  #   assert_equal('I love Ruby', @codeclanstudent.say_favourite_language)
  # end
end
