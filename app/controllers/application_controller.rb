class ApplicationController < ActionController::Base  # Inherit from ActionController this Class
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================

  def homepage
    render({ :template => "game_templates/rules.html.erb"})
  end 
   
  def play_rock
    @comp_move = ["rock", "paper", "scissors"].sample
    if @comp_move == "rock" 
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    elsif @comp_move == "scissors"
      @outcome = "won"
    end
    # write a ton of code
    #render({ :plain => rand(100)})
    #redirect_to("https://www.wikipedia.org")
    #render({ :html => "<h1>Hello, World!</h1>".html_safe})
    render({ :template => "game_templates/user_rock.html.erb"}) 
    # create a folder and also a file wihich is embedded ruby template
    
  end

  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample
    if @comp_move == "rock" 
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    end

    render({ :template => "game_templates/user_paper.html.erb"})
  end

  def play_scissor
    @comp_move = ["rock", "paper", "scissors"].sample
    if @comp_move == "rock" 
      @outcome = "lost"
    elsif @comp_move == "paper"
      @outcome = "won"
    elsif @comp_move == "scissors"
      @outcome = "tied"
    end

    render({ :template => "game_templates/user_scissor.html.erb"})
  end
end

