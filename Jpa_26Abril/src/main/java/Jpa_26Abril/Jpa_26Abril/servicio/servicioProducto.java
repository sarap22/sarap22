package Jpa_26Abril.Jpa_26Abril.servicio;

import Jpa_26Abril.Jpa_26Abril.entidad.productos;
import Jpa_26Abril.Jpa_26Abril.repositorio.repositorioProducto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class servicioProducto {
    private repositorioProducto repositorioP;

    //de tipo repositorio(como se llama el repositorio)
    public servicioProducto(repositorioProducto repositorioP) {
        this.repositorioP = repositorioP;
    }

    public List<productos> mostrar() {
        return repositorioP.findAll();
    }

    public productos buscarRef(String codigo) {
        if (repositorioP.findById(codigo).isPresent())
            return repositorioP.findById(codigo).get();
            //.get()es para el id
        else
            return null;
    }

    public List<productos> buscarCate(String cate) {
        return repositorioP.findByCategoria(cate);
    }

    public String insertar(productos p) {
        if (repositorioP.findById(p.getCodigo()).isPresent())
            return "El producto ya existe";
        else {
            repositorioP.save(p);
            return "Insertado";
        }
    }

    public String actualizar(String codigo, productos p) {
        productos id;
        if (repositorioP.findById(codigo).isPresent()) {
            id = repositorioP.findById(codigo).get();
            id.setCodigo(p.getCodigo());
            id.setNombre(p.getNombre());
            id.setCategoria(p.getCategoria());
            id.setPrecio(p.getPrecio());
            id.setCantidad(p.getCantidad());
            repositorioP.save(id);
            return "Producto actualizado";

        } else return null;

    }
    public String eliminar(String codigo) {
        if (repositorioP.findById(codigo).isPresent()) {
            repositorioP.deleteById(codigo);
            return "Eliminado";
        }else return null;
    }
}
