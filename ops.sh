#!/bin/bash

last_command=`cat ~/.bash_history | tail -n 1`;
#last_command='سعیخ شحف-لثف عحیشفث'

echo $last_command;

en_char=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
fa_char=(ش ذ ز ی ث ب ل ا ه ت ن م پ د خ ح ض ق س ف ع ر ص ط غ ظ)

for index in ${!en_char[*]}
do
	fa=`echo ${fa_char[index]}`
	en=`echo ${en_char[index]}`

	last_command=$(echo $last_command | sed 's/'"$fa"'/'"$en"'/g')
done

echo  " => $last_command"
eval "$last_command"
