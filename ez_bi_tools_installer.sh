#!/bin/bash
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    python_local="/home/$USER/.local/lib/python2.7/site-packages"
    bi_tools_path="/home/$USER/bi_tools"
    cd "/home/$USER"
elif [[ "$OSTYPE" == "msys" ]]; then
    python_local="C:/Users/$USERNAME/AppData/Local/Continuum/anaconda2/Lib/site-packages"
    bi_tools_path="C:/Users/$USERNAME/bi_tools"
    cd "C:/Users/$USER"
fi

if [ -d "$python_local/bi_tools" ]; then
  mkdir -p "$python_local/bi_tools"
fi

cp -TRv "$bi_tools_path" "$python_local/bi_tools"

echo "bi_tools installation is complete"
