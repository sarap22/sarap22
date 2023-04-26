package Jpa_26Abril.Jpa_26Abril.controlador;

import Jpa_26Abril.Jpa_26Abril.entidad.productos;
import Jpa_26Abril.Jpa_26Abril.servicio.servicioProducto;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class controladorProducto {
    private servicioProducto servicioP;

    public controladorProducto(servicioProducto servicioP) {
        this.servicioP = servicioP;
    }
    @GetMapping("/mostrar")
    public List<productos> lista(){
        return  servicioP.mostrar();
    }
    @GetMapping("/traerRef/{codigo}")
    public productos ref(@PathVariable("codigo") String codigo){
        return servicioP.buscarRef(codigo);
    }
    @GetMapping("/traerCate/{cate}")
    public List<productos> Categoria(@PathVariable("cate") String cate){
        return servicioP.buscarCate(cate);
    }
    @PostMapping("/insertar")
    public String insertar(@RequestBody productos p){
        return servicioP.insertar(p);
    }
    @PutMapping("/actualizar/{codigo}")
    public String actualizar(@PathVariable("codigo") String codigo, @RequestBody productos p){
        return servicioP.actualizar(codigo,p);
    }
    @DeleteMapping("/eliminar/{codigo}")
    public String eliminar(@PathVariable("codigo") String codigo){
        return servicioP.eliminar(codigo);
    }
}
