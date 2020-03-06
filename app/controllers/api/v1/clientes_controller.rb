module Api
    module V1
        class ClientesController < ApplicationController
           
            def index
                    clientes = Cliente.order('created_at DESC');
                    render json: {status: 'SUCESS', message: 'Clientes carregados', data:clientes}, status: :ok
            end

            def show
                cliente = Cliente.find(params[:id])
                render json: {status: 'SUCESS', message: 'Cliente carregado', data:cliente}, status: :ok
            end

            def create
				cliente = Cliente.new(cliente_params)
				if cliente.save
					render json: {status: 'SUCCESS', message:'cliente salvo', data:cliente},status: :ok
				else
					render json: {status: 'ERROR', message:'cliente não salvo', data:cliente.errors},status: :unprocessable_entity
				end
            end
            
			def destroy
				cliente = Cliente.find(params[:id])
				cliente.destroy
				render json: {status: 'SUCCESS', message:'Cliente deletado', data:cliente},status: :ok
            end
            
            def update
                cliente = Cliente.find(params[:id])
                if cliente.update_attributes(cliente_params)
                    render json: {status: 'SUCCESS', message:'cliente atualizado', data:cliente},status: :ok
                else
                    render json: {status: 'ERROR', message:'cliente não atualizado', data:cliente.errors},status: :unprocessable_entity
                end
            end
            
			private
			def cliente_params
				params.permit(:nome, :email)
			end
        end
    end
end