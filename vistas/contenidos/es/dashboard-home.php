<!-- Page header -->
<div class="full-box page-header">
    <h3 class="text-start roboto-condensed-regular text-uppercase">
        <i class="fab fa-dashcube fa-fw"></i> &nbsp; DASHBOARD
    </h3>
    <p class="lead">
        ¡Bienvenido <strong><?php echo $_SESSION['nombre_sto']." ".$_SESSION['apellido_sto'];?></strong>! Este es el panel principal del sistema acá podrá encontrar atajos para acceder a los distintos listados de cada módulo del sistema.
    </p>
</div>

<!-- Content -->
<div class="full-box tile-container">
    <?php
        if($_SESSION['cargo_sto']=="Administrador"){
            $total_categorias=$ins_login->datos_tabla("Normal","categoria","categoria_id",0); 
    ?>
    <a href="<?php echo SERVERURL.DASHBOARD; ?>/category-list/" class="tile">
        <div class="tile-tittle">Categorías</div>
        <div class="tile-icon">
            <i class="fas fa-tag fa-fw"></i>
            <p><?php echo $total_categorias->rowCount(); ?> Registradas</p>
        </div>
    </a>
    <?php 
            $total_categorias->closeCursor();
            $total_categorias=$ins_login->desconectar($total_categorias);
        }
    ?>
    <?php 
        $total_productos=$ins_login->datos_tabla("Normal","producto","producto_id",0);
    ?>
    <a href="<?php echo SERVERURL.DASHBOARD; ?>/product-list/" class="tile">
        <div class="tile-tittle">Productos</div>
        <div class="tile-icon">
            <i class="fas fa-box-open fa-fw"></i>
            <p><?php echo $total_productos->rowCount(); ?> Registrados</p>
        </div>
    </a>
    <?php
        $total_productos->closeCursor();
        $total_productos=$ins_login->desconectar($total_productos);

        if($_SESSION['cargo_sto']=="Administrador"){
            $total_usuarios=$ins_login->datos_tabla("Normal","usuario WHERE usuario_id!='1' AND usuario_id!='".$_SESSION['id_sto']."'","usuario_id",0);
    ?>
    <a href="<?php echo SERVERURL.DASHBOARD; ?>/admin-list/" class="tile">
        <div class="tile-tittle">Administradores</div>
        <div class="tile-icon">
            <i class="fas fa-user-secret fa-fw"></i>
            <p><?php echo $total_usuarios->rowCount(); ?> Registrados</p>
        </div>
    </a>
    <?php 
            $total_usuarios->closeCursor();
            $total_usuarios=$ins_login->desconectar($total_usuarios);
        }
    ?>
</div>