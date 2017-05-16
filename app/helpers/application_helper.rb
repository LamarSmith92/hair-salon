module ApplicationHelper
  def full_name user
    appointment.first_name + " " + appointment.last_name
  end
end
