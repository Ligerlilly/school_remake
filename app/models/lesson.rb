class Lesson < ActiveRecord::Base
  belongs_to :section
  belongs_to :chapter

  def next
    if (self == Lesson.last)
      Lesson.first
    else
      next_lesson = Lesson.where("number > (?)", self.number).first
    end
  end
end
