class Sphinx
  attr_accessor :riddle1, :riddle2, :riddle3, :questions_right, :questions_wrong

  def initialize
    @riddle1 = 'What gets wetter and wetter the more it dries?'
    @riddle2 = 'What can travel around the world while staying in a corner?'
    @riddle3 = 'What gets broken without being held?'
    @questions_right = 0
    @questions_wrong = 0
  end

  # def choose_riddles
  #   riddle_hash = {
  #     :towel => 'What gets wetter and wetter the more it dries?',
  #     :stamp => 'What can travel around the world while staying in a corner?',
  #     :clock => 'What has hands but can not clap?',
  #     :coin => 'What has a head and a tail, but no body?',
  #     :promise => 'What gets broken without being held?',
  #   }
  #   3.times do
  #     riddle_hash.values[rand(1..10)]
  #   end
  # end

end
