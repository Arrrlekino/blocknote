class TodosController < ApplicationController

	def index
		@todos = Todo.all.order('created_at DESC')
	end	

	def new
	end
	def show
		@todo = Todo.find(params[:id])
	end	


	def create
		#render plain: params[:todo].inspect
		@todo = Todo.new(todo_params)
	
	if @todo.valid?
		@todo.save
		redirect_to @todo
	else
		render action: 'new'
	end
	end

	def edit
		@todo = Todo.find(params[:id])
	end

	def update
		@todo = Todo.find(params[:id])

		if @todo.update(todo_params)
		redirect_to @todo
	else
		render action: 'edit'
	end
	end

	def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to todos_path
  end
		
	private

	def todo_params
		params.require(:todo).permit(:title, :text, :datedo)
	end	
end
