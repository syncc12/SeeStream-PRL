class LessonsController < ApplicationController
  before_action :authenticate_user!
  #before_action :require_authorized_for_current_lesson, only: [:show]

  def show
  end

  private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

  # def current_enrollment
    # @current_enrollment ||= Enrollment.find(:user_id)
  # end

#   def require_authorized_for_current_lesson
#     if current_enrollment.include?(current_lesson.section.course)
#       #current_user.enrolled_in?(current_lesson)
#       #current_lesson.section.course
#     else
#       redirect_to '#', alert: 'Course enrollment required before viewing course lessons.'
#       #render plain: "Unauthorized", status: :unauthorized
#     end
#   end
end
