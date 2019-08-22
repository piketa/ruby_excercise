def smartPrint(*args)
  array = []
  args.collect! do |arg|
    if arg.instance_of?(Hash)
      arg.each do |key, value|
        array << key
        array << value
      end
    elsif arg.instance_of?(Array)
      arg.each do |value|
        array << value
      end
    else
      array << arg
    end
  end

  puts array.join(" ")
end

smartPrint(["Ruby"], "the", ["Programming", "Language"])
smartPrint(["Agile", "Web", "Development"], "with", { :Rails => 5.0 })

