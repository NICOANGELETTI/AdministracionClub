package logica;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import logica.Jugador;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2024-03-07T12:25:36")
@StaticMetamodel(Presupuesto.class)
public class Presupuesto_ { 

    public static volatile SingularAttribute<Presupuesto, String> tipo_transaccion;
    public static volatile SingularAttribute<Presupuesto, Integer> monto;
    public static volatile SingularAttribute<Presupuesto, Integer> idPresupuesto;
    public static volatile SingularAttribute<Presupuesto, String> jugador;
    public static volatile SingularAttribute<Presupuesto, Jugador> jugadorOne;

}