package logica;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import logica.Partido;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2024-02-28T20:58:52")
@StaticMetamodel(Resultado.class)
public class Resultado_ { 

    public static volatile SingularAttribute<Resultado, String> nombreEquipoL;
    public static volatile SingularAttribute<Resultado, Integer> tarjetasAmarillas_recibidas;
    public static volatile SingularAttribute<Resultado, Integer> golesEquipoLocal;
    public static volatile SingularAttribute<Resultado, Integer> tarjetasAmarillas_provocadas;
    public static volatile SingularAttribute<Resultado, Integer> tarjetasRojas_provocadas;
    public static volatile SingularAttribute<Resultado, Integer> tarjetasRojas_recibidas;
    public static volatile SingularAttribute<Resultado, String> nombreEquipoV;
    public static volatile SingularAttribute<Resultado, Integer> golesEquipoVisitante;
    public static volatile SingularAttribute<Resultado, Partido> partido;
    public static volatile SingularAttribute<Resultado, Integer> idResultado;

}