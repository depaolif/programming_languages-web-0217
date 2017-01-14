require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, langlist|
  	langlist.each do |lang, typehash|
  		if !new_hash[lang]
  			new_hash[lang] = typehash
  			new_hash[lang][:style] = [].push(style)
  		else
  			new_hash[lang][:style].push(style)
  		end
  	end
  end
  # binding.pry
  new_hash
end

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

reformat_languages(languages)