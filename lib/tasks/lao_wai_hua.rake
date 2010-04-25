desc "Generate some LaoWaiHua with optional LENGTH"
task :laowaihua => :environment do
  require "lao_wai_hua"
  args = []
  args << ENV["LENGTH"].to_i if ENV.has_key?("LENGTH")
  puts LaoWaiHua(*args)
end