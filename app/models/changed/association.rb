module Changed
  class Association < ApplicationRecord
    belongs_to :audit
    belongs_to :associated, polymorphic: true

    enum kind: %i[add remove]

    validates :name, presence: true

    scope :ordered, -> { order(id: :desc) }
  end
end
