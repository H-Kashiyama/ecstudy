class EsentencesController < ApplicationController
    
def index
   
     @classifying = Classifying.find(params[:id])
     @esentences = @classifying.esentences.page(params[:page]) 

end

def show
     
     @esentence = Esentence.find(params[:id])
     @cls_id = @esentence.classifying_id
     
end
    
 def new
    
     @esentence = Esentence.new(classifying_id: params[:classifying_id])
 end 
 
 def create
  
   @esentence = Esentence.new(esentence_params)
   @cls_id = @esentence.classifying_id
   
    if @esentence.save
      flash[:success] = '正常に投稿されました'
      redirect_to classifying_path(cls_id: @cls_id)
      #redirect_to classifyings_url(classifying_id: params[:classifying_id])
      #redirect_to controller: :classifyings, action: :show, id: params[:id]
      #controller: :users, action: :show, id: 1 
      #redirect_to controller: 'コントローラ名, action: アクション名, id: id
    else
      flash.now[:danger] = '投稿されませんでした'
      render :new
    end
  end
  
 def edit
    
      @esentence = Esentence.find(params[:id]) 
      
  end

  def update
   @esentence = Esentence.find(params[:id]) 
    if @esentence.update(esentence_params)
      flash[:success] = '内容は正常に更新されました'
      redirect_to @esentence
    else
      flash.now[:danger] = '内容は更新されませんでした'
      render :edit
    end
  end

  def destroy
    @esentence = Esentence.find(params[:id]) 
    @cls_id = @esentence.classifying_id
    @esentence.destroy
    
    flash[:success] = '内容は正常に削除されました'
    #redirect_to root_path
    
    redirect_to classifying_path(@cls_id)
 
  end


private
  
  def esentence_params
    params.require(:esentence).permit(:esentence, :memo, :classifying_id)
  end
end
