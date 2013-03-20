class Module
  def const_missing(n, *args)
    # Require all the parents first
    name.split("::").length.times do |x|
      next if x == 0
      parent = name.split('::').take(x).map(&:downcase).join('/')
      require parent rescue nil
    end

    # And then our constant
    constant = (name.split('::')[0..-2] + [n])
    path     = constant.map(&:downcase).join("/")
    require path

    const_get(constant.join('::'))
  end
end
