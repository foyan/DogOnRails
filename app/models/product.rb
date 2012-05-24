class Product < ActiveRecord::Base
  default_scope :order => 'Title'
  
  has_many :line_items
  
  before_destroy :ensure_not_referenced_by_any_line_item
  
  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true
  validates :title, length: {minimum: 2, message: "must have at least 2 characters"}
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)$}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
  
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Damn. We got line items.')
      return false
    end
    
  end
end
