#!/bin/bash

v=`python -c "import sys; v = 1 if sys.version_info >= (2,7,9) else 0; print v"`

if [[ $v -eq 0 ]]
then
    easy_install --user pip
fi

pip install --user virtualenv
pip install --user virtualenvwrapper
