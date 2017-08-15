class Education < ApplicationRecord
    validates :qualification, format: {with: /\A[a-zA-Z]+\z/ , message: "Only letters allowed"}
end
