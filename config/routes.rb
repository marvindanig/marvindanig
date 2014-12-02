# == Route Map
#
# Prefix Verb URI Pattern Controller#Action
#   root GET  /           visitors#index
#   page GET  /pages/*id  high_voltage/pages#show
#

Rails.application.routes.draw do
  root to: 'visitors#index'
end
