module ApplicationHelper
  def current_vet
    Vet.find_by(id: session[:vet_id])

  end

end
