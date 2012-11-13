Refinery::Core::Engine.routes.draw do

  namespace :feedsucker, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :feeds, :except => :show do
        collection do
          post :update_positions
        end
      end
    end

    resources :feeds, :only => [:index, :show]
  end


end
