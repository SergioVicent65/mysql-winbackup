# mysql-winbackup
MySQL backup automatization, with "auto-delete" old backups (3 days)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Instructions (English)

1º: Replace the entire route, that points to the "bin" directory on MySQL server default directory (cd command).

2º Replace the username and password on mysqldump line (be careful, the password has not spaces between the -p argument).

3º Change database name, it's the later argument after password field.

4º Replace the destination route (be careful, absolute route).

5º: Replace the destination route (on forfiles command), to check old backups and delete.

-Note:- If the scripts fail, uncomment the pause command (deleting "REM"), to check why the script fails.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Instructions (Spanish)

1º: Cambiar la ruta completa, que apunta a la carpeta "bin" de MySql server (en el cd).

2º: Cambiar el nombre de usuario y contraseña en la línea correspondiente al mysqldump. OJO: el user va separado con un espacio del -u , pero la contraseña va junta con el -p.

3º: Cambiar el nombre de la base de datos, es el campo posterior a la contraseña en el mysqldump. 

4º: Cambiar la ruta destino (ojo, que es una ruta completa) en la línea del mysqldump.

5º: Cambiar la ruta en la línea que comprueba las copias de seguridad antiguas (forfiles).

-Nota:- Si se sospecha que el script no funciona por alguna razón, solo hay que descomentar el pause del final (quitando el REM), así el script se parará y podemos ver los posibles fallos.


----------------------------------------------------------------------------------------------------------------------------------------------------------------------
