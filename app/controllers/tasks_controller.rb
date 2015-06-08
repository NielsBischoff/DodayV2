class TasksController < ApplicationController

    def index
      @tasks = Task.all #instance variable that references a table with all information on all tasks
    end

    def show
      @task = Task.find(params[:id]) #instance variable that displays specific info held on specific task
    end

    def new
      @task = Task.new #this will provide a blank instance of a new task
    end

    def create
      @task = Task.new(task_params)
      if @task.save
        redirect_to tasks_path #tasks_path is an alias to a route prefix defined in our routes
      else
        render :new #same as redirect_to new_task_path alias but conserves form data
      end
    end #of create

    def edit
      @task = Task.find(params[:id])
    end

    def update
      @task = Task.find(params[:id]) #look for a specific task by params

      if @task.update_attributes(task_params) #and allow update of params
        redirect_to task_path
      else
        render :edit
      end
    end #of update action

    def destroy
      @task = Task.find(params[:id])
      @task.destroy
      redirect_to tasks_path #tasks_path is an alias to a route prefix defined in our routes
    end

  private
    def task_params
      params.require(:task).permit(:task_name, :time_frame, :tag, :completed, :priority)
    end
end # of tasks_controller
