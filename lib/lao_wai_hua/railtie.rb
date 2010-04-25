require 'rails'
module LaoWaiHua
  class Railtie < Rails::Railtie
    railtie_name :lao_wai_hua
    
    rake_tasks do
      load "tasks/lao_wai_hua.rake"
    end
  end
end
