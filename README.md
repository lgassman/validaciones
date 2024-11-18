

## validaciones

Programa de referencia para probar el issue de manejo de error en el onTick

Hay un bug cuando se lanza un error desde un onTick o desde un schedule en el game.
El error es mal manejado y se vuelve a intentar la acción, cosa que no es correcto, ya que degrada mucho la perfomance y
puede tener efectos no deseados.

En este programa hay un objeto clock con un método tick para ser invocado cada un segundo. Es un objeto de referencia.
Hay una clase model que, similarmente al reloj tiene un método "action" que también cuenta, pero inmediamente lanza excepción.
En el programa se instancian dos modelos, uno es invocado desde un schedule y el otro en un onTick cada 1 segundo. 
Además se incluye otro onTick para el clock de referencia.

Al ejecutar se esperaría que los el clock y el modelo de onTick  mantengan el mismo valor en sus contadores. El modelo
ejecutado en el schedule debería quedar en 1.  Sin embargo, se ve como los modelos que lanzan
error incrementan su valor a una velocidad muy superior al clock, exponiendo así la falla.


![validaciones](https://github.com/lgassman/validaciones/blob/main/validaciones.gif)
