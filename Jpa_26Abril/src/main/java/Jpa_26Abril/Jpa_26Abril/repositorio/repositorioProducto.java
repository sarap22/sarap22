package Jpa_26Abril.Jpa_26Abril.repositorio;

import Jpa_26Abril.Jpa_26Abril.entidad.productos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

//la interfaz interactua
//todo el proceso de mysql
@Repository
public interface repositorioProducto extends JpaRepository<productos,String> {
    List<productos> findByCategoria(String cate); //metodo abstracto

}
