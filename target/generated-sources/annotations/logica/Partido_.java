package logica;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2024-03-07T12:25:36")
@StaticMetamodel(Partido.class)
public class Partido_ { 

    public static volatile SingularAttribute<Partido, Date> fecha;
    public static volatile SingularAttribute<Partido, String> arbitro;
    public static volatile SingularAttribute<Partido, String> lugar;
    public static volatile SingularAttribute<Partido, Integer> idPartido;
    public static volatile SingularAttribute<Partido, String> rival;
    public static volatile SingularAttribute<Partido, String> estadio;
    public static volatile SingularAttribute<Partido, Boolean> estadoPartido;

}