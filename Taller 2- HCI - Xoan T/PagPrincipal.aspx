<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PagPrincipal.aspx.vb" Inherits="Taller_2__HCI___Xoan_T.PagPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ADCOM Solutions</title>
    <link href="Estilo.css" rel="stylesheet" />
</head>
<body oncontextmenu="return false">
    <form id="form1" runat="server">
        <div class="encabezado">
        <a class="contacto" href="PagPrincipal.aspx"><img class="logo" src="Img/adcomsolution sin borde3.png"/></a>
        <h1 class="titulo">AdComSolution</h1>
          </div>
            <div class="enlaces">
                <div class="agregar">
                <a href="Login.aspx"><img class="icono" src="Img/Agregar%20Inventario.png" />
                    <h2 class="subtitulo"> Editar Inventario</h2>
                    </a>
                </div>
                <div class="ver">
                <a href="PagVerInventario.aspx"><img class="icono" src="Img/Ver%20Inventario.png"/>
                    <h2 class="subtitulo"> Ver inventario</h2>
                </a>
                </div>
            </div>
    </form>
</body>
</html>
