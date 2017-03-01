<!DOCTYPE html>
<html lang="en">

<body>

<div id="page-wrapper">
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Listado de Clientes
                </div>
                <?php if($mensaje){ ?>
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <?php echo $mensaje ;?><a href="#" class="alert-link"></a>.
                    </div>
                <?php } ?>
                <?php if($mensaje_error){ ?>
                    <div class="alert alert-error alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <?php echo $mensaje_error ;?><a href="#" class="alert-link"></a>.
                    </div>
                <?php } ?>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="dataTable_wrapper">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                            <tr>

                                <th>Apelido</th>
                                <th>Nombres</th>
                                <th>DNI</th>
                                <th>Fecha Nac.</th>
                                <th>Estado</th>
                                <th>&nbsp;</th>
                            </tr>
                            </thead>

                            <tbody>
                            <?php if($result){
                                foreach ($result as $v) { ?>
                                    <tr class="odd gradeX">

                                        <td><?php echo $v->apellido; ?></td>
                                        <td><?php echo $v->nombre; ?></td>
                                        <td><?php echo $v->dni; ?></td>
                                        <td><?php echo $v->fecha_nacimiento; ?></td>
                                        <td><?php echo ($v->cod_estado=='A')?"Alta":"Baja"; ?></td>
                                        <td>
                                            <a href="controlador.php?action=edita_persona&id_persona=<?php echo $v->id_persona; ?>"><img src="img/edit.png"/></a>
                                            <img  onclick="eiminaCliente('<?php echo (int)$v->id_persona ?>')" style="cursor: pointer;" src="img/delete.png"/>
                                        </td>
                                    </tr>
                                <?php }} ?>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.table-responsive -->

                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->

    <!-- /.row -->
</div>
<?php include 'footer.php'; ?>
<!-- /#wrapper -->

<!-- jQuery -->

