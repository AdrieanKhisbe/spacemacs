## Makefile --- Spacemacs master makefile
##
## Copyright (c) 2012-2014 Sylvain Benner
## Copyright (c) 2014-2015 Sylvain Benner & Contributors
##
## Author: Sylvain Benner <sylvain.benner@gmail.com>
## URL: https://github.com/syl20bnr/spacemacs
##
## This file is not part of GNU Emacs.
##
## License: GPLv3

CASK ?= cask

EMACS_DIR = $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
TEST_NAME = `basename $(TEST_DIR) | tr a-z A-Z`

all: test

test: unit_tests func_tests

unit_tests:
	$(CASK) exec ert-runner

func_tests:

.PHONY: test unit_tests func_tests
