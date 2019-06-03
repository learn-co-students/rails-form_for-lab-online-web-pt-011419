class SchoolClassesController < ActionController::Base


  def new
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.new(class_params)
    @class.save
    redirect_to school_class_path(@class)
  end

  def update
  @class = SchoolClass.find(params[:id])
  @class.update(class_params)
  redirect_to school_class_path(@class)
  end

  def edit
    @class = SchoolClass.find(params[:id])
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  private

  def class_params
    params.require(:school_class).permit!
  end



end
