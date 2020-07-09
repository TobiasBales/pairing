# typed: strict

# rubocop:disable Layout/LineLength
# == Route Map
#
#                                Prefix Verb       URI Pattern                                                                              Controller#Action
#                                 teams GET        /teams(.:format)                                                                         teams#index
#                                       POST       /teams(.:format)                                                                         teams#create
#                              new_team GET        /teams/new(.:format)                                                                     teams#new
#                             edit_team GET        /teams/:id/edit(.:format)                                                                teams#edit
#                                  team GET        /teams/:id(.:format)                                                                     teams#show
#                                       PATCH      /teams/:id(.:format)                                                                     teams#update
#                                       PUT        /teams/:id(.:format)                                                                     teams#update
#                                       DELETE     /teams/:id(.:format)                                                                     teams#destroy
#                              sessions POST       /sessions(.:format)                                                                      sessions#create
#                                  root GET        /                                                                                        dashboard#index
#                       dashboard_index GET        /dashboard/index(.:format)                                                               dashboard#index
#                               pg_hero            /pghero                                                                                  PgHero::Engine
#                           sidekiq_web            /sidekiq                                                                                 Sidekiq::Web
#                new_admin_user_session GET        /admin/login(.:format)                                                                   active_admin/devise/sessions#new
#                    admin_user_session POST       /admin/login(.:format)                                                                   active_admin/devise/sessions#create
#            destroy_admin_user_session DELETE|GET /admin/logout(.:format)                                                                  active_admin/devise/sessions#destroy
#               new_admin_user_password GET        /admin/password/new(.:format)                                                            active_admin/devise/passwords#new
#              edit_admin_user_password GET        /admin/password/edit(.:format)                                                           active_admin/devise/passwords#edit
#                   admin_user_password PATCH      /admin/password(.:format)                                                                active_admin/devise/passwords#update
#                                       PUT        /admin/password(.:format)                                                                active_admin/devise/passwords#update
#                                       POST       /admin/password(.:format)                                                                active_admin/devise/passwords#create
#                            admin_root GET        /admin(.:format)                                                                         admin/dashboard#index
#                       admin_dashboard GET        /admin/dashboard(.:format)                                                               admin/dashboard#index
#        batch_action_admin_admin_users POST       /admin/admin_users/batch_action(.:format)                                                admin/admin_users#batch_action
#                     admin_admin_users GET        /admin/admin_users(.:format)                                                             admin/admin_users#index
#                                       POST       /admin/admin_users(.:format)                                                             admin/admin_users#create
#                  new_admin_admin_user GET        /admin/admin_users/new(.:format)                                                         admin/admin_users#new
#                 edit_admin_admin_user GET        /admin/admin_users/:id/edit(.:format)                                                    admin/admin_users#edit
#                      admin_admin_user GET        /admin/admin_users/:id(.:format)                                                         admin/admin_users#show
#                                       PATCH      /admin/admin_users/:id(.:format)                                                         admin/admin_users#update
#                                       PUT        /admin/admin_users/:id(.:format)                                                         admin/admin_users#update
#                                       DELETE     /admin/admin_users/:id(.:format)                                                         admin/admin_users#destroy
#              batch_action_admin_users POST       /admin/users/batch_action(.:format)                                                      admin/users#batch_action
#                           admin_users GET        /admin/users(.:format)                                                                   admin/users#index
#                                       POST       /admin/users(.:format)                                                                   admin/users#create
#                        new_admin_user GET        /admin/users/new(.:format)                                                               admin/users#new
#                       edit_admin_user GET        /admin/users/:id/edit(.:format)                                                          admin/users#edit
#                            admin_user GET        /admin/users/:id(.:format)                                                               admin/users#show
#                                       PATCH      /admin/users/:id(.:format)                                                               admin/users#update
#                                       PUT        /admin/users/:id(.:format)                                                               admin/users#update
#                                       DELETE     /admin/users/:id(.:format)                                                               admin/users#destroy
#                        admin_comments GET        /admin/comments(.:format)                                                                admin/comments#index
#                                       POST       /admin/comments(.:format)                                                                admin/comments#create
#                         admin_comment GET        /admin/comments/:id(.:format)                                                            admin/comments#show
#                                       DELETE     /admin/comments/:id(.:format)                                                            admin/comments#destroy
#                      new_user_session GET        /users/sign_in(.:format)                                                                 devise/sessions#new
#                          user_session POST       /users/sign_in(.:format)                                                                 devise/sessions#create
#                  destroy_user_session DELETE     /users/sign_out(.:format)                                                                devise/sessions#destroy
#                     new_user_password GET        /users/password/new(.:format)                                                            devise/passwords#new
#                    edit_user_password GET        /users/password/edit(.:format)                                                           devise/passwords#edit
#                         user_password PATCH      /users/password(.:format)                                                                devise/passwords#update
#                                       PUT        /users/password(.:format)                                                                devise/passwords#update
#                                       POST       /users/password(.:format)                                                                devise/passwords#create
#              cancel_user_registration GET        /users/cancel(.:format)                                                                  devise/registrations#cancel
#                 new_user_registration GET        /users/sign_up(.:format)                                                                 devise/registrations#new
#                edit_user_registration GET        /users/edit(.:format)                                                                    devise/registrations#edit
#                     user_registration PATCH      /users(.:format)                                                                         devise/registrations#update
#                                       PUT        /users(.:format)                                                                         devise/registrations#update
#                                       DELETE     /users(.:format)                                                                         devise/registrations#destroy
#                                       POST       /users(.:format)                                                                         devise/registrations#create
#         rails_postmark_inbound_emails POST       /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST       /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST       /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#   rails_mandrill_inbound_health_check GET        /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#health_check
#         rails_mandrill_inbound_emails POST       /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#          rails_mailgun_inbound_emails POST       /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET        /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST       /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#     new_rails_conductor_inbound_email GET        /rails/conductor/action_mailbox/inbound_emails/new(.:format)                             rails/conductor/action_mailbox/inbound_emails#new
#    edit_rails_conductor_inbound_email GET        /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                        rails/conductor/action_mailbox/inbound_emails#edit
#         rails_conductor_inbound_email GET        /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH      /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT        /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE     /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST       /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET        /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET        /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET        /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT        /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST       /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
#
# Routes for PgHero::Engine:
#                     space GET  (/:database)/space(.:format)                     pg_hero/home#space
#            relation_space GET  (/:database)/space/:relation(.:format)           pg_hero/home#relation_space
#               index_bloat GET  (/:database)/index_bloat(.:format)               pg_hero/home#index_bloat
#              live_queries GET  (/:database)/live_queries(.:format)              pg_hero/home#live_queries
#                   queries GET  (/:database)/queries(.:format)                   pg_hero/home#queries
#                show_query GET  (/:database)/queries/:query_hash(.:format)       pg_hero/home#show_query
#                    system GET  (/:database)/system(.:format)                    pg_hero/home#system
#                 cpu_usage GET  (/:database)/cpu_usage(.:format)                 pg_hero/home#cpu_usage
#          connection_stats GET  (/:database)/connection_stats(.:format)          pg_hero/home#connection_stats
#     replication_lag_stats GET  (/:database)/replication_lag_stats(.:format)     pg_hero/home#replication_lag_stats
#                load_stats GET  (/:database)/load_stats(.:format)                pg_hero/home#load_stats
#          free_space_stats GET  (/:database)/free_space_stats(.:format)          pg_hero/home#free_space_stats
#                   explain GET  (/:database)/explain(.:format)                   pg_hero/home#explain
#                      tune GET  (/:database)/tune(.:format)                      pg_hero/home#tune
#               connections GET  (/:database)/connections(.:format)               pg_hero/home#connections
#               maintenance GET  (/:database)/maintenance(.:format)               pg_hero/home#maintenance
#                      kill POST (/:database)/kill(.:format)                      pg_hero/home#kill
# kill_long_running_queries POST (/:database)/kill_long_running_queries(.:format) pg_hero/home#kill_long_running_queries
#                  kill_all POST (/:database)/kill_all(.:format)                  pg_hero/home#kill_all
#        enable_query_stats POST (/:database)/enable_query_stats(.:format)        pg_hero/home#enable_query_stats
#                           POST (/:database)/explain(.:format)                   pg_hero/home#explain
#         reset_query_stats POST (/:database)/reset_query_stats(.:format)         pg_hero/home#reset_query_stats
#              system_stats GET  (/:database)/system_stats(.:format)              redirect(301, system)
#               query_stats GET  (/:database)/query_stats(.:format)               redirect(301, queries)
#                      root GET  /(:database)(.:format)                           pg_hero/home#index
# rubocop:enable Layout/LineLength

# frozen_string_literal: true

Rails.application.routes.draw do
  resources :teams
  resources :sessions, only: [:create]
  root to: 'dashboard#index'
  get 'dashboard/index'

  mount PgHero::Engine, at: 'pghero'
  mount Sidekiq::Web => '/sidekiq'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
require 'sidekiq/web'
if Rails.env.production?
  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(username),
                                                ::Digest::SHA256.hexdigest(ENV['SIDEKIQ_USERNAME'])) &
      ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(password),
                                                  ::Digest::SHA256.hexdigest(ENV['SIDEKIQ_PASSWORD']))
  end
end
