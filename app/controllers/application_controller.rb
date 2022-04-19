class ApplicationController < ActionController::Base  # Inherit from ActionController this Class
  layout(false)

  # Add your actions below this line
  # ================================

  def play_rock
    # write a ton of code
    #render({ :plain => rand(100)})
    #redirect_to("https://www.wikipedia.org")
    #render({ :html => "<h1>Hello, World!</h1>".html_safe})
    render({ :template => "game_templates/user_rock.html.erb"}) # create a folder and also a file wihich is embedded ruby template
    
  end
end

