###
#
#  Sort integer arguments (ascending) 
#
###

result = []
integer_args = ARGV.select { |arg| arg =~ /^-?[0-9]+$/ }

integer_args.each do |arg|
    i_arg = arg.to_i

    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        if result[i] <= i_arg
            i += 1
        else
            result.insert(i, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
end

puts result
