# print-clang-ast-proj/Makefile
# Just recursively invokes sub-module builds.

all:
	$(MAKE) -C smbase
	$(MAKE) -C print-clang-ast
	@echo
	@echo "print-clang-ast-proj 'make' finished."

check:
	$(MAKE) -C smbase check
	$(MAKE) -C print-clang-ast check
	@echo
	@echo "print-clang-ast-proj 'make check' finished."

clean:
	$(MAKE) -C smbase clean
	$(MAKE) -C print-clang-ast clean
	@echo
	@echo "print-clang-ast-proj 'make clean' finished."

distclean:
	$(MAKE) -C smbase distclean
	$(MAKE) -C print-clang-ast distclean
	@echo
	@echo "print-clang-ast-proj 'make distclean' finished."

git-status:
	(cd smbase; git status)
	(cd print-clang-ast; git status)
	git status

# EOF
