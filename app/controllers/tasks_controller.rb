class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)

        if @task.save
            redirect_to('/tasks/index')
        else
            render('/tasks/new')
        end
    end

    def edit
        @task = Task.find_by(params[:id])
    end

    def update
        @task = Task.find_by(params[:id])
        if @task.update(task_params)
            redirect_to('/tasks/index')
        else
            render('tasks/#{@task.id}edit')
        end
    end

    def destroy
        @task = Task.find_by(params[:id])
        @task.destroy
        redirect_to('/tasks/index')
    end

    private
    def task_params
        params[:task].permit(:title)
    end
end
