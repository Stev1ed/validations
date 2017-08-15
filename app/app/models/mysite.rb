class Mysite < ApplicationRecord
    validates :website, exclusion: {in: %w(www.google.ie), message: "Subdomain %{value} is not permitted."}
end
