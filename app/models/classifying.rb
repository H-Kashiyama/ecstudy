class Classifying < ApplicationRecord
    has_many :esentences, dependent: :destroy
    # def esentences
    #     Esentence.where(id: self.esentence_id)
    # end
    validates :classname, presence: true, length: { maximum: 255 }
end
