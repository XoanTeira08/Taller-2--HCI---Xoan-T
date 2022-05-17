<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PagVerInventario.aspx.vb" Inherits="Taller_2__HCI___Xoan_T.PagVerInventario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ver Inventario</title>
    <!--ESTILO-->
    <link href="Estilo.css" rel="stylesheet" />
</head>
<body>
    <!--ENCABEZADO-->
    <div class="encabezado">
        <a class="contacto" href="PagPrincipal.aspx"><img class="logo" src="Img/adcomsolution sin borde3.png"/></a>
        <h1 class="titulo">AdComSolution</h1>
    </div>
    <form id="form1" runat="server">
        <div>
        </div>
        <!--Controla la base de datos-->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [inventario] WHERE [Placa1] = ?" InsertCommand="INSERT INTO [inventario] ([Placa1], [Placa2], [Activo], [Fecha], [Marca], [Modelo], [Serie], [Factura], [Provedor], [Monto]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [inventario]" UpdateCommand="UPDATE [inventario] SET [Placa2] = ?, [Activo] = ?, [Fecha] = ?, [Marca] = ?, [Modelo] = ?, [Serie] = ?, [Factura] = ?, [Provedor] = ?, [Monto] = ? WHERE [Placa1] = ?">
            <DeleteParameters>
                <asp:Parameter Name="Placa1" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Placa1" Type="String" />
                <asp:Parameter Name="Placa2" Type="String" />
                <asp:Parameter Name="Activo" Type="String" />
                <asp:Parameter Name="Fecha" Type="String" />
                <asp:Parameter Name="Marca" Type="String" />
                <asp:Parameter Name="Modelo" Type="String" />
                <asp:Parameter Name="Serie" Type="String" />
                <asp:Parameter Name="Factura" Type="String" />
                <asp:Parameter Name="Provedor" Type="String" />
                <asp:Parameter Name="Monto" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Placa2" Type="String" />
                <asp:Parameter Name="Activo" Type="String" />
                <asp:Parameter Name="Fecha" Type="String" />
                <asp:Parameter Name="Marca" Type="String" />
                <asp:Parameter Name="Modelo" Type="String" />
                <asp:Parameter Name="Serie" Type="String" />
                <asp:Parameter Name="Factura" Type="String" />
                <asp:Parameter Name="Provedor" Type="String" />
                <asp:Parameter Name="Monto" Type="Decimal" />
                <asp:Parameter Name="Placa1" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <!------------------------------>
        <!--Tabla de editar y eliminar-->
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Placa1" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="313px" Width="1179px">
            <Columns>
                <asp:BoundField DataField="Placa1" HeaderText="Placa1" ReadOnly="True" SortExpression="Placa1" />
                <asp:BoundField DataField="Placa2" HeaderText="Placa2" SortExpression="Placa2" />
                <asp:BoundField DataField="Activo" HeaderText="Activo" SortExpression="Activo" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                <asp:BoundField DataField="Modelo" HeaderText="Modelo" SortExpression="Modelo" />
                <asp:BoundField DataField="Serie" HeaderText="Serie" SortExpression="Serie" />
                <asp:BoundField DataField="Factura" HeaderText="Factura" SortExpression="Factura" />
                <asp:BoundField DataField="Provedor" HeaderText="Provedor" SortExpression="Provedor" />
                <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </form>
</body>
</html>
