Rails.application.routes.draw do
  resources :current_issues do
    collection do
      post :confirm
    end
  end

  resources :ideas do
    collection do
      post :confirm
    end
  end
end
