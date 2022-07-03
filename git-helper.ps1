#
# 主要是方便自己判断哪些git仓库还有更改没有提交到云端的。
# 适合喜欢在一个根目录下存放所有代码的人
# 执行完后ctrl+f搜一下有没有下面英文的就可以判断了
# Changes not staged for commit
#
#
#
#




Start-Transcript   #写入日志文件
$alldir = Get-ChildItem -Directory

foreach ($dir in $alldir){ #对每个文件夹执行下面的命令
    cd $dir
    $newalldir = Get-ChildItem -Directory -s -h

    foreach ($newdir in $newalldir){
        if ($newdir.Name -eq '.git'){
        echo "[+]Find Git repository-----------------------------"
        echo $dir.Name
        git status 
        echo "[-]------------------------------------------------"
        break
    }
    }

    
    cd ..
}


Stop-Transcript # 
