Rails.application.routes.draw do
  resources :type_of_assignments
  resources :professions
  resources :type_of_assistances
  resources :study_grades
  resources :skin_colors
  resources :nose_shapes
  resources :mouth_shapes
  resources :eye_colors
  resources :blood_types
  resources :civil_states
  get 'prueba/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
