
# Thin Makefile intended for a modular and flexible Makefile compliant.
#  ..intended for a massive test driven or short cycle development.
#

# General complier options
# default is suitable for common GNU/Linux compiler and C99 standard
COMPILER=gcc
STD=c99
WARN=-Wall
INCLUDE_DIR="-I."
COMPILE=$(COMPILER) -std=$(STD) $(WARN) $(INCLUDE_DIR)

# Usefully variables for testing. Use make argument to set the target file. It will build and execute it!
#
# - Name of target file to build and test
#    for example building a client
CURRENT_TEST_SOURCE=client.c
CURRENT_TEST_OUT=client

# Task will generate the target file
$(CURRENT_TEST_SOURCE): 
	$(COMPILE) -o $(CURRENT_TEST_OUT) $(CURRENT_TEST_SOURCE)



# All is the task for a 'make' without arguments
#  default is the target variable
all: $(CURRENT_TEST_SOURCE)
	$(CURRENT_TEST_SOURCE)
# 

# - List of binaries generated.. and to clean!
#    for example client and server binaries
OUTFILES=client server

clean:
	rm -f $(OUTFILES)
