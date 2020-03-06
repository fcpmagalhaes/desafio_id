module Api
    module V1
        class TagsController < ApplicationController
            
            def index
                    tags = Tag.order('created_at DESC');
                    render json: {status: 'SUCESS', message: 'Tags carregadas', data:tags}, status: :ok
            end

            def show
                tag = Tag.find(params[:id])
                render json: {status: 'SUCESS', message: 'Tag carregada', data:tag}, status: :ok
            end

            def create
				tag = Tag.new(tag_params)
				if tag.save
					render json: {status: 'SUCCESS', message:'tag salva', data:tag},status: :ok
				else
					render json: {status: 'ERROR', message:'tag não salva', data:tag.errors},status: :unprocessable_entity
				end
            end
            
			def destroy
				tag = Tag.find(params[:id])
				tag.destroy
				render json: {status: 'SUCCESS', message:'Tag deletada', data:tag},status: :ok
            end
            
            def update
                tag = Tag.find(params[:id])
                if tag.update_attributes(tag_params)
                    render json: {status: 'SUCCESS', message:'tag atualizada', data:tag},status: :ok
                else
                    render json: {status: 'ERROR', message:'tag não atualizada', data:tag.errors},status: :unprocessable_entity
                end
            end
            
			private
			def tag_params
				params.permit(:titulo, :cor)
			end
        end
    end
end