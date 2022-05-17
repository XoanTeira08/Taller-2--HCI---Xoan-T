Imports System.Data
Imports System.Data.OleDb
Public Class Login
    Inherits System.Web.UI.Page
    Dim conexion As New OleDbConnection
    Dim comandos As New OleDbCommand
    Dim adaptador As New OleDbDataAdapter
    Dim lector As OleDbDataReader
    Dim consulta As String

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            conexion.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=C:\Users\xoant\Documents\Materias\HCI\Proyectos\Taller 2- HCI - Xoan T\Taller 2- HCI - Xoan T\PRIDE.mdb"
            conexion.Open()
        Catch ex As Exception
            MsgBox("Error al conectar")
        End Try
    End Sub
    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        consulta = "SELECT User, Pass FROM Tabla1 WHERE User= '" & txtUsuario.Text &
            "'AND Pass= '" & txtContra.Text & "'"
        comandos = New OleDbCommand(consulta, conexion)
        adaptador.SelectCommand = comandos
        lector = comandos.ExecuteReader
        If lector.HasRows = True Then
            Sesion_Iniciada = True
            Response.Redirect("PagAgregarInventario.aspx")
        Else
            lblMensaje.Text = "Usuario o contraseña no validos"
        End If
        conexion.Close()
    End Sub

End Class