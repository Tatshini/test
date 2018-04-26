FROM store/oracle/database-instantclient:12.2.0.1
WORKDIR /home
ENTRYPOINT ["sqlplus", "C##DEVOPS/devops123@52.226.133.58:1521/cdb1", "@chat_DB.sql"]
