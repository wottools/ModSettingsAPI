import py_compile
import sys
import getopt

print 'compiling ',sys.argv[1], ' to ', sys.argv[2]
py_compile.compile(sys.argv[1],sys.argv[2])
