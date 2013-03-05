AmpleRails::Application.routes.draw do
  
  ###---------------------------------------------------- Static Routes
  
  match 'static/:permalink', :to => 'pages#static'
  
end
