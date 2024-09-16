class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(deadline: :desc)
  end

  def show
    @task = Task.find_by(id: params[:id])
  end
  
  def new
    
  end

  def create
    @task = Task.new(content: params[:content], deadline: params[:deadline], tag: params[:tag])
    
    if @task.save
      redirect_to("/tasks/index")
    else
      flash[:notice] = "エラー: 作成に失敗しました"
    end

  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    @task = Task.find_by(id: params[:id])
    
    if @task.update(task_params)
      flash[:notice] = "内容を変更しました"
      redirect_to("/tasks/index")
    else
      flash[:notice] = "エラー: 編集内容を保存できませんでした"
    end

  end

  def destroy
    @task = Task.find_by(id: params[:id])
    @task.destroy
    redirect_to("/tasks/index")
  end

  private
  def task_params
    params.require(:task).permit(:content, :deadline)
  end

end
