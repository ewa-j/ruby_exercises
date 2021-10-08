require "date"

MONTHS = { "january" => 1, "february" => 2, "march" => 3, "april" => 4, "may" => 5, "june" => 6, "july" => 7, "august" => 8, "september" => 9, "october" => 10, "november" => 11, "december" => 12 }

class Person
  attr_reader :name, :day, :month, :birthday

  def initialize(name, day, month)
    @name = name
    @day = day.to_s
    @month = month
    @birthday = Time.mktime(Time.now.year, MONTHS[@month], @day)
  end

  def year_end
    Time.mktime(Time.now.year, 12, 31)
  end

  def calculate
    if @birthday > Time.now and @birthday < year_end
      today = Date.parse(Time.now.strftime("%Y%m%d"))
      birthday = Time.mktime(Time.now.year, MONTHS[@month], @day)
      b = Date.parse(birthday.strftime("%Y%m%d"))
      result = (b - today).to_i
      result.to_s
    else
      today = Date.parse(Time.now.strftime("%Y%m%d"))
      birthday = Time.mktime((Time.now.year + 1), MONTHS[@month], @day)
      b = Date.parse(birthday.strftime("%Y%m%d"))
      result = (b - today).to_i
      result.to_s
    end
  end
end
