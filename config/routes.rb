Rails.application.routes.draw do
  get "welcome/index"

  # route où tout visiteur a besoin que le helloWorldJob soit déclenché
  post "welcome/trigger_job"

  # où les visiteurs sont redirigés une fois que job a été appelé
  get "other/job_done"

  root to: "welcome#index"
end
