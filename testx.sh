#!bin/bash
read -a arr
len=${#arr[*]}
pos=1
for ((i=len-1;i>0;i--))do
  for  ((j=0;j<i;j++))do
     if [ $((10#${arr[j]})) -ge $((10#${arr[j+pos]})) ];then
        ((tmp=arr[j]))
        ((arr[j]=arr[j+pos]))
        ((arr[j+pos]=tmp))
     fi
  done
done
for ((k=0;k<len;k++))do
echo ${arr[k]}
done
