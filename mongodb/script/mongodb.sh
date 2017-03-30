  #!/bin/bash
    index=$(echo $@ | tr " " ".")

    status=$(echo "db.serverStatus().${index}" |/usr/local/mongodb/bin/mongo   admin |sed -n '3p')

    #check if the output contains "NumberLong"
    if [[ "$status" =~ "NumberLong"   ]];then
            echo $status|sed -n 's/NumberLong(//p'|sed -n 's/)//p'
    else
            echo $status
    fi