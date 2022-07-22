class User < ApplicationRecord
  # == Constants ============================================================
  
  # == Extensions ===========================================================

  # == Attributes ===========================================================

  # == Relationships ========================================================

  ## association one-to-many
  has_many :posts

  # == Validations ==========================================================

  validates :email, presence:     true,
                    uniqueness:   true
  validates :password, presence: true

  # == Scopes ===============================================================

  # == Callbacks ============================================================

  # == Class Methods ========================================================

  # == Instance Methods =====================================================
end
