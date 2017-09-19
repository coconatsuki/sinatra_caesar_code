class Caesar

  def initialize(sentence, shift)
    @sentence = sentence
    @shift = shift
  end

  def cipher
    message = @sentence
    @shift.times do
      message = ciphering(message)
    end
    message
  end

  private

  def ciphering(sentence)
    sentence.tr('a-yzA-YZ0-89', 'b-zaB-ZA1-90')
  end
end
