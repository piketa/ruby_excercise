module Mail
  attr_reader :sender, :recipient, :text, :date
 
  def send
    puts "#{@date = Time.now}: Sending a #{self.class} to #{self.recipient}."
  end
 
  def write(text)
    @text = text
  end
 
  def to_s
    "#{self.class} of #{@date}:\n\nDear #{@recipient},\n\n#{@text}\n\nSincerely,\n#{@sender}"
  end
end

class Postcard
  include Mail
  
  def initialize(sender, recipient)
    @sender, @recipient = sender, recipient
  end
end
 
card = Postcard.new("Matsui", "Everyone")
card.write("Did you forget my birthsday?")
card.send
puts "-" * 60
sleep(2)
puts card

