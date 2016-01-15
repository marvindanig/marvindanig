# == Route Map
#
# Prefix Verb URI Pattern     Controller#Action
#   home GET  /home(.:format) redirect(301, /)
#   root GET  /               high_voltage/pages#show {:id=>"home"}
#   page GET  /*id            high_voltage/pages#show
#

Rails.application.routes.draw do

  # mount Monologue::Engine, at: '/blog'

end
