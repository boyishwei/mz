class ClassController < ApplicationController
  def showClass
    if (params[:name] == "kds" || params[:name] =="mz")
      render "class_#{params[:name]}.html"
    else
      render "public/404.html" 
    end

  end
end
