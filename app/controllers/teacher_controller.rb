class TeacherController < ApplicationController
  def showTeacher
    if (params[:name] == "ma" || params[:name] =="zh")
      render "#{params[:name]}.html"
    else
      render "public/404.html" 
    end
  end
end
