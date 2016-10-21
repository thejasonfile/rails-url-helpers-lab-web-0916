class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def show_status
    if self.active == true
      @status = "active"
    else
      @status = "inactive"
    end
  end

  def change_status
    current_status = self.active
    self.active = !current_status
    self.save
  end
end