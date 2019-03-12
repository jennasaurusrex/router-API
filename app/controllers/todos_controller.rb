class TodosController < ProtectedController
  # before_action :set_trip
  before_action :set_todo, only: [:show, :update, :destroy]

  # # GET /todos
  # def index
  #   @todos = Todos.all
  #
  #   render json: @todos
  # end
  #
  # # GET /todos/1
  # def show
  #   render json: @todo
  # end

  # POST /todos
  def create
    puts 'HIDHJKDHGKJLDFG'
    @todo = Todo.new(todo_params)

    if @todo.save
      render json: @todo, status: :created
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /todos/1 NOPE
  # def update
  #   if @todo.update(todo_params)
  #     render json: @todo
  #   else
  #     render json: @todo.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /todos/1
  def destroy
    @todo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = current_user.todos.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def todo_params
      params.require(:todo).permit(:title, :description, :trip_id)
    end

    # def set_trip
    #   @trip = current_user.trips.find(params[:trip_id])
    # end
end
