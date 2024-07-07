class Book < ApplicationRecord
  validates :title, presence: [ message: "は必須項目です" ]
  validates :body, presence: [ message: "は必須項目です" ]
end
