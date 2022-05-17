<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Taller_2__HCI___Xoan_T.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!--Fuente-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <!--Estilo-->
    <link href="Estilo.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body oncontextmenu="return false">
	<!--Login-->
    <form id="form1" runat="server">
        <div class="login">
		<div class="login-screen">
			<div class="app-title">
				<h1>Login</h1>
                <img class="usuario-icono"src="Img/usuario%20(1).png" />
			</div>
			<!--Usuario-->
			<div class="login-form">
				<div class="control-group">
				    <asp:TextBox ID="txtUsuario" placeholder="Usuario" runat="server"></asp:TextBox>
&nbsp;<label class="login-field-icon fui-user" for="login-name"></label></div>
				<!--Contraseña-->
				<div class="control-group">
				    <asp:TextBox ID="txtContra" type="password" placeholder="Contraseña" runat="server"></asp:TextBox>
&nbsp;<label class="login-field-icon fui-lock" for="login-pass"></label></div>
					<!--Boton de ingresar-->
				<asp:Button ID="btnIngresar" class="btn btn-primary btn-large btn-block" runat="server" Text="Iniciar Sesion" />
				<!--Label con el mensaje-->
				<asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
			</div>
		</div>
	</div>
    </form>
</body>
</html>
