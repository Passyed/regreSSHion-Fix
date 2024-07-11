Se ha detecta una vulnerabilidad en el componente OpenSSH. 
  ------------------------------------------------------------------------------------
Versiones de OpenSSH afectadas:

- Anteriores a 4.4p1, a menos que estén parcheadas para CVE-2006-5051 y CVE-2008-4109;

- Desde 4.4p1 hasta la anterior a 8.5p1, no son vulnerables debido a un parche aplicado para CVE-2006-5051;

- Desde 8.5p1 hasta la anterior a 9.8p1 sin contar con la versión 9.8p1.

 ------------------------------------------------------------------------------------
Como se la version de OpenSSH que tengo? Puedes utilizar el siguiente comando para obtener la version de OpenSSH en tu servidor: `ssh -V`
 ------------------------------------------------------------------------------------
Esta vulnerabilidad posibilitaría la ejecución remota de código, no autenticado (RCE), con privilegios de root en el servidor de OpenSSH.

Se ha asignado el identificador CVE-2024-6387 para esta vulnerabilidad.
 ------------------------------------------------------------------------------------
24racks Cloud ha preparado un parche para esa vulnerabilidad con el cual actualizar a la versión segura de OpenSSH 9.8p1.

Como ejecutar el script?

git clone https://github.com/Passyed/regreSSHion-Fix.git

cd regreSSHion-Fix

chmod +x regreSSHion-Fix.sh

./regreSSHion-Fix.sh
 ------------------------------------------------------------------------------------
Una vez ejecutado e actualizado OpenSSH verificar la versión utilizando `ssh -V`
