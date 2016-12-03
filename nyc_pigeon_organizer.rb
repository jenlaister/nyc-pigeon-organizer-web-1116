require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)

    organized_pigeons = {}


    data[:gender].each do |gender, pigeon|
     pigeon.each do |name|
       organized_pigeons[name]= {:color => [],:gender => [], :lives =>[]}
       end
      #  binding.pry
     end

     data.each do |key, hash| # color, etc, hash
       hash.each do |type, name| # purple, array
         name.each do |pigeon| # name array, each name
           if organized_pigeons[pigeon]
             organized_pigeons[pigeon][key] << type.to_s
           end
         end
       end
     end
organized_pigeons
end
