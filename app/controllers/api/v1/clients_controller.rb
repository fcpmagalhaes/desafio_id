module Api
    module V1
        class ClientsController < Api::V1::ApiController

            before_action :set_client, only: [:show, :update, :destroy]
            before_action :require_authorization!, only: [:show, :update, :destroy]

            def index
                clients = current_user.clients.order('created_at DESC');
                render json: {status: 'SUCESS', message: 'Displayed clients', data: clients}, status: :ok
            end

            def show
                render json: {status: 'SUCESS', message: 'Client displayed', data: @client}, status: :ok
            end

            def create
				client = Client.new(client_params.merge(user: current_user))
				if client.save
					render json: {status: 'SUCCESS', message:'Client saved', data:client},status: :ok
				else
					render json: {status: 'ERROR', message:'Client not saved', data:client.errors},status: :unprocessable_entity
				end
            end
            
			def destroy
				@client.destroy
				render json: {status: 'SUCCESS', message:'Client deleted', data: @client},status: :ok
            end
            
            def update
                if @client.update_attributes(client_params)
                    render json: {status: 'SUCCESS', message:'client updated', data: @client},status: :ok
                else
                    render json: {status: 'ERROR', message:'client not updated', data: @client.errors},status: :unprocessable_entity
                end
            end
            
			private
            def set_client
                @client = Client.find(params[:id])
            end

            def client_params
				params.require(:client).permit(:name, :email)
            end
            
            def require_authorization!
                unless current_user == @client.user
                render json: {}, status: :forbidden
                end
            end
        end
    end
end