class DailyTasksController < ApplicationController
  before_action :set_daily_task, only: %i[destroy]

  # GET /daily_tasks
  def index
    @daily_tasks = current_user.daily_tasks
  end

  # GET /daily_tasks/new
  def new
    @daily_task = DailyTask.new
  end

  # GET /daily_tasks/1/edit

  # POST /daily_tasks
  def create
    @daily_task = current_user.daily_tasks.build(daily_task_params)
    # authorize @daily_task

    respond_to do |format|
      if @daily_task.save
        format.html { redirect_to daily_tasks_path, notice: "Task was successfully created." }
        format.json { render :show, status: :created, location: dailiy_tasks_path }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_tasks/1
  def destroy
    # authorize @daily_task
    @daily_task.destroy!

    respond_to do |format|
      format.html { redirect_to daily_tasks_path, status: :see_other, notice: "Task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_daily_task
      @daily_task = DailyTask.find(params[:id])
    end

    def daily_task_params
      params.require(:daily_task).permit(:name, :get_till_done)
    end
end
