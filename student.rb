class CodeClanStudent
  def initialize(name, cohort, fav_prog_language)
    @name = name
    @cohort = cohort
    @fav_lang = fav_prog_language
  end

  def get_name
    @name
  end

  def get_cohort
    @cohort
  end

 #  def set_name(name)
 #    @name = name
 #  end
 #
 #  def set_cohort(cohort)
 #    @cohort = cohort
 #  end
 #
 #  def talk
 #    "#{@name} can talk."
 #  end
 #
 #  def say_favourite_language
 #    "I love #{@fav_lang}"
 # end
end
