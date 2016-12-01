# Pathname - path manipulation
pn = Pathnname.new('/usr')
pn.each_filename # will iterate through components of path
pn.each_entry # will iterate for all contents in directory (even `.` and `..`)

# TODO: something about File class
