class Object
  def bullet_key
    "#{self.class}:#{self.primary_key_value}"
  end

  def primary_key_value
    if self.class.respond_to?(:primary_key) && [String, Symbol].include?(self.class.primary_key.class)
      self.send self.class.primary_key
    else
      self.id
    end
  end
end
