# Assumptions:
# 1. All characters in string s exist in string t
# 2. String t will not have reptitive characters

def sortByStrings(s, t)
  s.chars.sort { |a, b| t.index(a) <=> t.index(b) }.join
end
