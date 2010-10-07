class Event < ActiveRecord::Base
  has_one :feedback, :dependent => :destroy
  validates_presence_of :name
  before_save :init_feedback
  
  def init_feedback
    self.feedback = Feedback.create
    feedback.save
  end 
end
