# Assumptions:
# k in k[encoded_string] is guaranteed to be positive
# k < 10

def decodeString(s)
  decoded = false
  while !decoded
    cb_idx = s.index(']')
    if cb_idx.nil?
      decoded = true
    else
      ob_idx = s.rindex('[')
      s[ob_idx-1..cb_idx] = repeat(s[ob_idx-1].to_i, s[ob_idx+1...cb_idx])
    end
  end

  s
end

def repeat(num_repeats, string)
  string * num_repeats
end
