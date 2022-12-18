class HomeController < ApplicationController
  before_action :common_content, :only => [:index, :team]

  def common_content
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @corp_title = Faker::Job.title
    @corp_power = Faker::Company.bs

    @random_number = rand(1..999)
    @set_number = rand(1..4)
    @bg = rand(1..2)
    
    #randomly pick our avatar set
    case @set_number
    when 1
      @set = "set1"
    when 2
      @set = "set2"
    when 3
      @set = "set3"
    else
      @set = "set4"
    end

    #randomly pick our backgroun
    if @bg == 1
      @background = "bg1"
    else
      @background = "bg2"
    end

    @avatar = Faker::Avatar.image(slug: "my-own-slug", size: "300x300", format: "bmp", set: @set, bgset: @background)
  end

  def index
  end

  def team
  end
end
