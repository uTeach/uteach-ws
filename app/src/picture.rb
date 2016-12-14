class Picture
  attr_accessor :picture

  def initialize picture
    @picture = picture
  end

  def large_size
    @picture.url(:large) if @picture.exists?
  end

  def medium_size
    @picture.url(:medium) if @picture.exists?
  end

  def thumb_size
    @picture.url(:thumb) if @picture.exists?
  end
end