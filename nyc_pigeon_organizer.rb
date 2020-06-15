require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  answer = Hash.new


#cycles thru the hash and takes the birds and associates them the 1st level keys
  data.each do |key,value|
    traits << key
    value.each do |description,birds|
      descriptions << description
      birds.each do |i|
        if answer.include?(i)
          answer[i][key] = []
        else
          answer[i]= {}
          answer[i][key]= []
        end
      end
    end
  end

#This will cycle thru the existing hash and append the descriptions to the new hash created above
  answer.select do |bird,trait|
    data.each do |first_key,first_value|
      first_value.each do |second_key,second_value|


            if second_value.include?(bird)

              answer[bird][first_key]<<second_key.to_s
            end
      end
    end
  end

end
