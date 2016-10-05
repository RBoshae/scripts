#!/bin/sh

touch $1.cc
touch $1.hh

#add content to .hh file

echo "#ifndef "$1"__hh" >> $1.hh
echo "#define "$1"__hh" >> $1.hh

echo "\nclass $1\n" >> $1.hh
echo "{\n" >> $1.hh
echo "\tpublic:\n\t$1 ();\n\t ~$1();\n\n\tprivate:\n};\n#endif" >> $1.hh

#end of adding content to .hh file


#add content to .cc file
echo "#include \"./$1.hh\"" >> $1.cc
echo "\n$1::$1()\n{}\n\n$1::~$1()\n{}" >> $1.cc
#end of adding content to .cc file
