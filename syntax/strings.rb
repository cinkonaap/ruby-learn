# single-quoted strings are not much interpreted
# sq will contain 5 characters
sq = 'abc\n'

# double-quoted strings are processed
# dq will contains 4 characters
dq = 'abc\n'

# multiline strings are written inside %Q{} or %q{}
# %Q acts like double quoted string, and %q acts as single quoted string
ml = %Q{
Siema Siema\n
jestem tu
ludzi tłum
}



