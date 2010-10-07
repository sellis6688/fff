class Feedback < ActiveRecord::Base
  belongs_to :events
  
  def feast
    feast = self.read_attribute(:feast)
    return feast if feast
    self.feast = 0
  end
  
  def famine
    famine = self.read_attribute(:famine)
    return famine if famine
    self.famine = 0
  end
  
  def members_only
    members_only = self.read_attribute(:members_only)
    return members_only if members_only
    self.members_only = 0
  end
  
end
