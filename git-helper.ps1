#
#Changes not staged for commit
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