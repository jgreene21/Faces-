class FacesController < ApplicationController
  def index
    @faces = Face.all
   end
   
   def show
    @face = Face.find(params[:id])
   end
   
   def new
    @face = Face.new
   end
  
   def create
     @face = Face.new(faces_params)
  
     if @face.save
       redirect_to faces_path
     else
       render :new
     end
   end
  
   def edit
    @face = Face.find(params[:id])
  end
   
   def update
     @face = Face.find(params[:id])
  
     if @face.update(faces_params)
       redirect_to faces_path
     else
       render :edit
     end
   end
   
   def destroy
     Face.find(params[:id]).destroy
     redirect_to faces_path 
   end
    
   private
     def faces_params
       params.require(:face).permit(:first_name, :last_name, :age, :hair_color, :eye_color, :gender, :alive)
     end
  

end 
