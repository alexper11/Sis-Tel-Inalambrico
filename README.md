# Sis-Tel-Inalambrico
Sistema de telecomunicaciones inalámbrico que simula las partes más esenciales de un sistema real de este tipo.

El sistema de comunicaciones representa la infraestructura a través del cual se transporta la información desde una fuente hacia un destino y de acuerdo a esta infraestructura
se podrá prestar diferentes servicios a los usuarios. En este caso en particular se implementa un sistema de comunicaciones inalámbrico con una modulación
M-Aria y un canal AWGN. La transmisión de datos en diferentes medios puede ser modelada tal como se presenta en la siguiente figura, este esquema brinda una representación de 
los módulos que un sistema de comunicaciones inalámbrico digital debería tener, además de unos módulos adicionales que ayudarán en la comprensión del comportamiento del sistema
de comunicaciones.

![image](https://user-images.githubusercontent.com/69607558/156948002-f5c69f17-5658-46a2-af0b-799cfdc603b6.png)

En el esquema anterior se emplea en primer lugar la fuente de bits, este módulo es de gran importancia ya que este se encarga de generar los datos que serán transmitidos por el
canal. Posteriormente la información en forma binaria procedente de la fuente emplea una técnica de modulación para que sea posible la transmisión de información y haya un mejor
aprovechamiento del canal. Seguidamente al modulador se emplea un filtro conformador de pulsos encargado de disminuir la interferencia intersímbolos (ISI) que surgirá debido a la
presencia de AWGN y un efecto Rayleigh en el canal. Luego de que la señal sufra afectación por parte de los efectos del canal es necesario realizar un proceso de ecualización para
obtener una mejoría adicional con respecto a la ISI presente en el sistema. Una vez que la señal haya pasado por todos los anteriores módulos se realiza un proceso de demodulación
para recuperar los bits que han sido transmitidos y de esta manera llegar a un destino donde se interpretará la información que ha pasado por el sistema de comunicaciones
