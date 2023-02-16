
# Tipos de Kernel y Su diferencia

## **_¿Que es un Kernel?_**

El Kernel es el primer programa que carga despeues del boot loader cuando iniciamos un sistema. El Kernel esta cargado en memoria hasta que el Sistema Operativo es apagado.

## **Sus tipos :**

## **Monolithic Kernels**

En este modelo los servicios de usuario y los servicios de kernel se encuentran en el mismo espacio de memoria. De esta manera el tamaño del Kernel. Como no se encuentran separados los procesos  entonces la ejecucion .

## **Microkernel**

El modelo de servicios de usuario y de kernel se encuentran implementados en diferentes espacios . Esto reduce el tamaño del Kernel  y tambien el tamaño del sistema Operativo. 

La comunicacion se realiza a traves de parseo de mensajes para reducir la velocidad de ejecucion. 

## **Hybrid Kernel**

Tiene la convinacion del Kernel Monolitico y el MicroKernel ya que utuilza la velocidad del Monolitico y la modularidad del Microkernel 

Algunos servicioscomo la red de pila o el sistema de archivos corren en el espacio del Kernel para reducir  la sobrecarga del rendimiento.

## **NanoKernel**

El nombre sugiere que el codigo del kernel es muy pequeño , lo cual signigica que el codigo de ejecucion se encuentra en los privilegios del modo del hardware es muy pequeño.

## **Exokernel**

Este tipo es un Kernek de sistema operativo desarrollado por el MIT . EN este tipo , la proteccion de recursos viene de la administracion que nos permite realizar configuraciones de las especificaciones de aplicacion.

# User vs Kernel Mode

## **User Mode**

Cuando un programa se inicia en un sistema operativo, digamos Windows, entonces inicia el programa en modo de usuario. Y cuando un programa en modo usuario solicita ejecutarse, Windows crea un proceso y un espacio de direcciones virtuales (espacio de direcciones para ese proceso). Los programas en modo de usuario tienen menos privilegios que las aplicaciones en modo de usuario y no se les permite acceder directamente a los recursos del sistema. Por ejemplo, si una aplicación en modo de usuario desea acceder a los recursos del sistema, primero tendrá que pasar por el kernel del sistema operativo mediante syscalls.

## **Kernel Mode**

El kernel es el programa central en el que se basan todos los demás componentes del sistema operativo, se utiliza para acceder a los componentes de hardware y programar qué procesos deben ejecutarse en un sistema informático y cuándo, y también administra la interacción del software y el hardware de la aplicación. Por lo tanto, es el programa más privilegiado, a diferencia de otros programas puede interactuar directamente con el hardware. Cuando los programas que se ejecutan en modo de usuario necesitan acceso al hardware, por ejemplo, cámara web, primero tiene que pasar por el kernel mediante un syscall, y para llevar a cabo estas solicitudes, la CPU cambia del modo de usuario al modo kernel en el momento de la ejecución. Después de completar finalmente la ejecución del proceso, la CPU vuelve a cambiar al modo de usuario.