module Api
    module V1
        class TagClientesController < ApplicationController
           
            # def index
            #         tag_clientes = TagCliente.order(:cliente_id);
            #         render json: {status: 'SUCESS', message: 'Relacoes carregadas', data:tag_clientes}, status: :ok
            # end

            # def create
			# 	cliente = TagCliente.new(cliente_params)
			# 	if cliente.save
			# 		render json: {status: 'SUCCESS', message:'Relacao salvo', data:cliente},status: :ok
			# 	else
			# 		render json: {status: 'ERROR', message:'Relacao não salvo', data:cliente.errors},status: :unprocessable_entity
			# 	end
            # end
            
			# def destroy
			# 	cliente = TagCliente.find(params[:id])
			# 	cliente.destroy
			# 	render json: {status: 'SUCCESS', message:'Relacao deletado', data:cliente},status: :ok
            # end
            
            # def update
            #     cliente = TagCliente.where("field_1 = ? AND field_2 = ?", params[:tag_id],  params[:search_string]params[:id] params[:id])
            #     if cliente.update_attributes(cliente_params)
            #         render json: {status: 'SUCCESS', message:'Relacao atualizado', data:cliente},status: :ok
            #     else
            #         render json: {status: 'ERROR', message:'Relacao não atualizado', data:cliente.errors},status: :unprocessable_entity
            #     end
            # end
            
			# private
			# def cliente_params
			# 	params.permit(:tag_id, :cliente_id)
			# end
        end
    end
end