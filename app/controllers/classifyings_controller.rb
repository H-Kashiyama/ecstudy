class ClassifyingsController < ApplicationController
  
  def index
     @classfyings = Classifying.all
  end

  def show
     @classfyings = Classifying.all #サイドバー表示用
     @classifying = Classifying.find(params[:id])
     @esentences = @classifying.esentences.page(params[:page]) 
    
  end

  def new
    @classifying = Classifying.new
  end

  def create
     @classifying = Classifying.new(classifying_params)
    if @classifying.save
      flash[:success] = 'カテゴリーが追加されました。'
      redirect_to root_path
    else
      flash.now[:danger] = 'カテゴリーが追加されませんでした'
      render :new
    end
  end

   def edit
      @classifying = Classifying.find(params[:id]) 
  end

  def update
    @classifying = Classifying.find(params[:id]) 
    if @classifying.update(classifying_params)
      flash[:success] = 'カテゴリーは正常に更新されました'
      redirect_to root_path
    else
      flash.now[:danger] = 'カテゴリーは更新されませんでした'
      render :edit
    end
  end

  def destroy
    @classifying = Classifying.find(params[:id]) 
    @classifying.destroy

    flash[:success] = 'カテゴリーは正常に削除されました'
    redirect_to classifyings_url
 
  end
  
 private
  
  def classifying_params
    params.require(:classifying).permit(:classname)
     
  end
end
