class ClickbaitValidator < ActiveModel::Validator 
  def validate(record) 
    test=["Won't Believe", "Secret", "Top [number]","Guess"]
    test.each { |index|
    if record.title.include?(index)
       return
     end
      record.errors[:clickbait]<< "not valid"
    }
  end
end