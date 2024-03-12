package logica;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import logica.Partido;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2024-03-11T22:38:18")
@StaticMetamodel(Resultado.class)
public class Resultado_ { 

    public static volatile SingularAttribute<Resultado, String> nombreEquipoL;
    public static volatile SingularAttribute<Resultado, Integer> penalesAtajados;
    public static volatile SingularAttribute<Resultado, Integer> tarjetasRojas_recibidas;
    public static volatile SingularAttribute<Resultado, String> nombreEquipoV;
    public static volatile SingularAttribute<Resultado, Integer> penalesConvertidos;
    public static volatile SingularAttribute<Resultado, Boolean> miEquipoLocal;
    public static volatile SingularAttribute<Resultado, Integer> idResultado;
    public static volatile SingularAttribute<Resultado, Integer> tarjetasAmarillas_recibidas;
    public static volatile SingularAttribute<Resultado, Integer> golesRecibidos;
    public static volatile SingularAttribute<Resultado, Integer> tarjetasAmarillas_provocadas;
    public static volatile SingularAttribute<Resultado, Integer> tarjetasRojas_provocadas;
    public static volatile SingularAttribute<Resultado, Integer> penalesErrados;
    public static volatile SingularAttribute<Resultado, Integer> golesConvertidos;
    public static volatile SingularAttribute<Resultado, Integer> penalesRecibidos;
    public static volatile SingularAttribute<Resultado, Partido> partido;

}