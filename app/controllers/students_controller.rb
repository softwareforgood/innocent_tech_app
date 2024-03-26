# frozen_string_literal: true

class StudentsController < ApplicationController
  # TO DO: Scope to single educator
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
end
