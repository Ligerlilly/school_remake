class Lesson < ActiveRecord::Base
  belongs_to :section
  belongs_to :chapter

  def next
    if (self == Lesson.last)
      Lesson.first
    else
      next_lesson = Lesson.where("id > (?)", self.id).first
    end
  end
  def previous
    if (self != Lesson.first)
      Lesson.where("id < (?)", self.id).last
    else
      Lesson.last
    end
  end
end
