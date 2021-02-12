Rails.application.routes.draw do


  resources :sessions, only: [:new, :create, :destroy]

  root 'tops#index'



  resources :current_issues do
    collection do
      post :confirm
    end
  end


  # resources :ideas do
  #      collection do
  #        post :confirm
  #      end
  #  end

  # resources :current_issues do
  #   resources :ideas do
  #     collection do
  #       post :confirm
  #     end
  #   end
  # end

  # get '/ideas/new/:current_issue_id', to: 'ideas#new', as: :new_idea


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

  resources :future_visions do
    resources :comments
  end

  resources :powers do
    collection do
      post :confirm
    end
  end

  resources :users, only: [:new, :create, :show, :edit, :update]

  resources :conversations do
    resources :messages
  end

  resources :issue_ideas, only: [:create, :destroy]

  resources :vision_ideas, only: [:create, :destroy]

  resources :idea_powers, only: [:create, :destroy]

end
