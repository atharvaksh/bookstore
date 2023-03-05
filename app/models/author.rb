class Author < ApplicationRecord

    before_save :set_active

    def set_active
        self.is_active = true
    end
end
