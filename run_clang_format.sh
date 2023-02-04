find . -regex '.*\.\(h\|hh\|hpp\|cu\|c\|cc\|cpp\|cxx\)' -exec clang-format -style=file -i {} \;
