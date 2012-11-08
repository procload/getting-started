AmpleRails::Application.routes.draw do
  
  ###---------------------------------------------------- Static Routes
  
  get 'static/:action', :to => 'application'
  
end
