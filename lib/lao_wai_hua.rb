# encoding: UTF-8
module LaoWaiHua

  WORDS = %w(
   一 位 爷 爷 他 姓 顾 ，
   上 街 打 醋 又 买 布 。
   买 了 布 ， 打 了 醋 ，
   回 头 看 见 鹰 抓 兔 。
   放 下 布 ， 搁 下 醋 ，
   上 前 去 追 鹰 和 兔 ，
   飞 了 鹰 ， 跑 了 兔 。
   打 翻 醋 ， 醋 湿 布
  )

  PUNCTUATION = %w( ，  。 )

  WORDS_WITHOUT_PUNCTUATION = WORDS.select{|word| !PUNCTUATION.include?(word)}

  class << self

    # return a string of *length* taken from the provided tongue twister
    # defaults to the full length of the text
    def generate(length=WORDS.length)
  	  words = []
  	  while words.length < length
  		  words += WORDS[0, length]
  	  end
  	  words.join("")
    end

    # return a random word (excluding punctuation) from our text
    def random_word()
  	  WORDS_WITHOUT_PUNCTUATION[rand(WORDS_WITHOUT_PUNCTUATION.length)]
    end

    # return a string or random words of the provided *length*
    def random(length)
  	  words = []
      next_punctuation = nil

    	1.upto(length) do
    	  next_punctuation ||= rand(3)+2
    	  if next_punctuation == 0
    	    next_punctuation = nil
    	    words << random_punctuation
    	  else
    	    next_punctuation -= 1
    	    words << random_word
    	  end
    	end
    	words.join("")
    end

    protected

    def random_punctuation()
      PUNCTUATION[rand(PUNCTUATION.length)]
    end

  end
end

def LaoWaiHua(*args)
  LaoWaiHua.generate(*args)
end

if defined?(Rails)
  require 'lao_wai_hua/railtie'
end
