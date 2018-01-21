class DemoController < ApplicationController

layout false 

  def index
    render('index')
  end

  def hello
    # render('hello')
    @array = [1,2,3,4,5]
    @id = params['id'].to_i
    @page = params[:page].to_i
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'hello')
  end

  def chs_weather
    redirect_to('http://forecast.weather.gov/MapClick.php?lon=-80.03678338623043&lat=32.88850361827346#.WmFlypM-dQJ')
  end

end
