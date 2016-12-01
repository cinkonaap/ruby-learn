# you can catch exceptions with `begin/rescue` statement
begin
  dbzero = 1 / 0 # throws expection
rescue
  puts('whoops')
end

# you can also specify which type of errors you want to catch
begin
  dbzero = 1 / 0 # throws expection
rescue ZeroDivisionError
  puts('whoops')
end

# to raise an error
raise ZeroDivisionError

# raising error with string as parameter, it will create RuntimeException
raise 'This is wrong'
