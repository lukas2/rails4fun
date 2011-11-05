module ApplicationHelper

  def wisdom
    [
      "Sehen ist verstehen!",
      "Approachen macht glücklich!",
      "Rails ist super!"
    ]
  end

  def wise_words
    wisdom[rand(3)]
  end

end
