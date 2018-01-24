class TopicsController < ApplicationController
  def index
    if current_user.manager.present?
      @topics = Topic.where(managers_allow: nil)
      @q = @topics.ransack(params[:q])
      @topics = @q.result
    elsif current_user.representative.present?
      @topics = Topic.where(managers_allow: true, repres_allow: nil)
      @q = @topics.ransack(params[:q])
      @topics = @q.result
    else
      redirect_to :new_topic
    end
    


  end

  def checkboxes
    activated_ids = params[:activated].collect {|id| id.to_i} if params[:activated]
    if activated_ids
      if_accept = params[:commit]=='Akceptuj'
      
      if current_user.manager.present?
        activated_ids.each do |id|
          r = Topic.find_by_id(id)
          r.managers_allow = if_accept
          r.save
        end
      elsif current_user.representative.present?
        activated_ids.each do |id|
          r = Topic.find_by_id(id)
          r.repres_allow = if_accept
          r.save
        end
      end
      
      flash[:notice] = "(#{activated_ids.count}) tematów zostało poprawnie #{if_accept ? 'zaakceptowanych' : 'odrzuconych'}"
    end
    redirect_to :topics
  end


  def new
  	@topic = Topic.new()
  end

  def create
    @topic = Topic.new(permitted_params.merge(teacher: Teacher.first))
    if @topic.save
      flash[:success] = "Temat został poprawnie dodany"
      redirect_to :new_topic
    else
      flash[:danger] = @topic.errors.full_messages
      render :new
    end
  end


  private

  def permitted_params
    params.require(:topic).permit(:attending_number, :title, :if_eng, :studies_type)
  end
end