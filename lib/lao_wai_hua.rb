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
  
  def self.generate(length=WORDS.length)
    words = []
	  while words.length < length
	    words += LaoWaiHua::WORDS[0, length]
	  end
	  words.join("")
  end

end

def LaoWaiHua(*args)
  LaoWaiHua.generate(*args)
end