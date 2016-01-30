require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  criteria = false
  languages.each do |style, lang_name|
    lang_name.each do |name, type|
      name_s = name.to_sym
      if new_hash[name_s] == nil
          new_hash[name_s] = {}
      end
        type.each do |key, value|
        new_hash[name_s][:type] = value
          if new_hash[name_s][:style] == nil 
            new_hash[name_s][:style] = []
          end
          new_hash[name_s][:style] << style
        end
    end
  end
  return new_hash
end

