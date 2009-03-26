class Object
  alias noisy_original_method_missing method_missing
  def method_missing(sym, *args, &block)
    puts "You Fool!  You don't have '#{sym}' defined!"
    noisy_original_method_missing(sym, *args, &block)
  end
end

