Rails.application.routes.draw do
  devise_for :users
  root to: 'sentences#index'

  resources :sentences do
    resources :pictures do
      resources :words
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#                     Prefix Verb   URI Pattern                                                                              Controller#Action
#           new_user_session GET    /users/sign_in(.:format)                                                                 devise/sessions#new
#               user_session POST   /users/sign_in(.:format)                                                                 devise/sessions#create
#       destroy_user_session DELETE /users/sign_out(.:format)                                                                devise/sessions#destroy
#          new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#         edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#              user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                            PUT    /users/password(.:format)                                                                devise/passwords#update
#                            POST   /users/password(.:format)                                                                devise/passwords#create
#   cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#      new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#     edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#          user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                            PUT    /users(.:format)                                                                         devise/registrations#update
#                            DELETE /users(.:format)                                                                         devise/registrations#destroy
#                            POST   /users(.:format)                                                                         devise/registrations#create
#                       root GET    /                                                                                        sentences#index
#     sentence_picture_words GET    /sentences/:sentence_id/pictures/:picture_id/words(.:format)                             words#index
#                            POST   /sentences/:sentence_id/pictures/:picture_id/words(.:format)                             words#create
#  new_sentence_picture_word GET    /sentences/:sentence_id/pictures/:picture_id/words/new(.:format)                         words#new
# edit_sentence_picture_word GET    /sentences/:sentence_id/pictures/:picture_id/words/:id/edit(.:format)                    words#edit
#      sentence_picture_word GET    /sentences/:sentence_id/pictures/:picture_id/words/:id(.:format)                         words#show
#                            PATCH  /sentences/:sentence_id/pictures/:picture_id/words/:id(.:format)                         words#update
#                            PUT    /sentences/:sentence_id/pictures/:picture_id/words/:id(.:format)                         words#update
#                            DELETE /sentences/:sentence_id/pictures/:picture_id/words/:id(.:format)                         words#destroy
#          sentence_pictures GET    /sentences/:sentence_id/pictures(.:format)                                               pictures#index
#                            POST   /sentences/:sentence_id/pictures(.:format)                                               pictures#create
#       new_sentence_picture GET    /sentences/:sentence_id/pictures/new(.:format)                                           pictures#new
#      edit_sentence_picture GET    /sentences/:sentence_id/pictures/:id/edit(.:format)                                      pictures#edit
#           sentence_picture GET    /sentences/:sentence_id/pictures/:id(.:format)                                           pictures#show
#                            PATCH  /sentences/:sentence_id/pictures/:id(.:format)                                           pictures#update
#                            PUT    /sentences/:sentence_id/pictures/:id(.:format)                                           pictures#update
#                            DELETE /sentences/:sentence_id/pictures/:id(.:format)                                           pictures#destroy
#                  sentences GET    /sentences(.:format)                                                                     sentences#index
#                            POST   /sentences(.:format)                                                                     sentences#create
#               new_sentence GET    /sentences/new(.:format)                                                                 sentences#new
#              edit_sentence GET    /sentences/:id/edit(.:format)                                                            sentences#edit
#                   sentence GET    /sentences/:id(.:format)                                                                 sentences#show
#                            PATCH  /sentences/:id(.:format)                                                                 sentences#update
#                            PUT    /sentences/:id(.:format)                                                                 sentences#update
#                            DELETE /sentences/:id(.:format)                                                                 sentences#destroy
