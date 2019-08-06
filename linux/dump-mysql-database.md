# How to dump mysql database to a file

Try the following:

    mysqldump -umysqluser -p dbname | pv | gzip > dbname$(date +%Y-%m-%d-%H.%M.%S).sql.gz
    

