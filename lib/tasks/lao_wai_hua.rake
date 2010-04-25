task :laowaihua do
  lwh_args = [ENV["LENGTH"]].compact
  puts LaoWaiHua(*lwh_args)
end