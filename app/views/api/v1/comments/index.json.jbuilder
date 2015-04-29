json.data(@data) { |d| json.extract!(d, :author, :text) }
