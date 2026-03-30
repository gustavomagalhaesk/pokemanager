module TrainersHelper
  def type_color(type)
    if type.downcase.include?("grass") or type.downcase.include?("bug")
      "success"
    elsif type.downcase.include?("electric")
      "warning"
    elsif type.downcase.include?("fire")
      "danger"
    elsif type.downcase.include?("water")
      "info"
    elsif type.downcase.include?("fairy")
      "pink"
    end
  end
end
