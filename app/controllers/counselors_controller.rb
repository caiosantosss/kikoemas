class CounselorsController < ApplicationController
  after_action :set_as_read, only: [:bookings]
  def dashboard
    @counselor = current_counselor
    @students = User.all
    @emotions = DailyEmotion.emotions.keys
    @daily_reports = DailyEmotion.all
    authorize current_counselor
    @past = current_counselor.bookings.where('start_time < ?', Time.now)
    @past_students = @past.map { |booking| booking.user }.uniq
    @past_student_session = @past_students.map do |student|
      past = student.bookings.where('start_time < ?', Time.now)
      most_recent = past.order(:start_time).first
      [student, most_recent]
    end
  end

  def bookings
    @new_bookings = current_counselor.bookings.where('date >= ?', Date.today).where("suggested = ?", false).where(emergency: nil)
                                     .where("counselor_read = ?", false).sort_by(&:start_time)
    @upcoming = current_counselor.bookings.where("suggested = ?", false).where('start_time > ?', Time.now)
                                 .sort_by(&:start_time)
    @past = current_counselor.bookings.where('start_time < ?', Time.now)
    @past_students = @past.map { |booking| booking.user }.uniq
    @past_student_session = @past_students.map do |student|
      past = student.bookings.where('start_time < ?', Time.now)
      most_recent = past.order(:start_time).first
      [student, most_recent]
    end
    @today = current_counselor.bookings.where(start_time: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
    @this_week = current_counselor.bookings.where('start_time BETWEEN ? AND ?', Time.now.beginning_of_week, Time.now.end_of_week)
  end

  def set_as_read
    current_counselor.bookings.update_all(counselor_read: true)
  end
end
