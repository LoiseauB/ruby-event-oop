require 'time'
require 'pry'

class Event
  attr_accessor :start_date
  attr_accessor :duraion
  attr_accessor :title
  attr_accessor :attendess
  attr_accessor :end_date

  def initialize(start_date, duration, title, attendess_list)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendess = attendess_list
  end

  def postpone_24h
    @start_date = @start_date + 86400
  end

  def end_date
    @end_date = @start_date + @duration*60
  end

  def is_past?
    start_date<Time.now
  end

  def is_future?
    !is_past?
  end

  def is_soon?
    (start_date - Time.now) <= (30*60)
  end

  def to_s
    puts ">Titre : #{@title}"
    puts ">Date de début : #{@start_date.strftime("%H:%M:%S %d/%m/%Y")}"
    puts ">Durée : #{@duration} minutes"
    puts ">Invités : #{@attendess.join(', ')}"
  end

end

#binding.pry