Rails.application.routes.draw do
  
  root 'static_pages#guest'
  
  get 'static_pages/guest'
  
  get 'static_pages/course'
  
  get 'static_pages/coordinator'
  

end
