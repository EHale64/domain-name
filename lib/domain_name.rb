class DomainName
    def domain_name(url)
        regex = /[a-zA-Z0-9-]+/
        words = url.scan(regex)
        start = ["http", "www", "https"]
        words.find do |word|
            !start.include?(word)
        end
    end
end