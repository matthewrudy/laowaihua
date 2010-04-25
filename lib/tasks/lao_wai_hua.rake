desc "Generate some LaoWaiHua with optional LENGTH"
task :laowaihua => :environment do
  require "lao_wai_hua"
  lwh_args = [ENV["LENGTH"]].compact
  puts LaoWaiHua(*lwh_args)
end