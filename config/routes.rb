Rails.application.routes.draw do

  root 'tops#index'
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

  resources :future_visions do
    collection do
      post :confirm
    end
  end

  resources :powers do
    collection do
      post :confirm
    end
  end
end
