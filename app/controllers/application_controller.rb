class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :request_path
  def request_path
      @path = controller_path + '#' + action_name
      def @path.is(*str)
          str.map{|s| self.include?(s)}.include?(true)
      end
  end
  # <% if @path.is('pages#index') %>
  #   <a href="#">コントローラがpagesで、アクションがindexの時</a>
  # <% end %>

  protected
    def configure_permitted_parameters
    added_attrs = [ :name, :email, :password, :password_confirmation,:nationality,:image]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    end
end
