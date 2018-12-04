# #!/bin/sh

ergodic(){
  for fullname in `ls $1`
  do
    name=${fullname%.*}
    ext=${fullname##*.}
    if [ "$ext"x = "md"x ]
    then
      echo "$1+$name".docx
      pandoc $1/$name.md -o "$1+$name".docx
    else
      echo "找不到md文件"
    fi
  done
}

#!/bin/sh  
md_to_pdf(){  
    for file2 in `ls -a $1`  
    do
        if [ x"$file2" != x"." -a x"$file2" != x".." ];then  
            if [ -d "$1/$file2" ];then
                ergodic "$1/$file2"
                md_to_pdf "$1/$file2"  
            fi  
        fi  
    done  
}  

md_to_pdf .
