python3 -V 2>1 1>/dev/null
if [ $? -eq 0 ]
then
	python3 -c "import docx" 2>1 1>/dev/null
	if [ $? -eq 0 ]
	then
		echo Есть docx
	else
		echo Устанавливаем docx
		pip install python-docx 2>1 1>/dev/null
	fi
	python3 makerrors.py
else 
	echo no py
fi