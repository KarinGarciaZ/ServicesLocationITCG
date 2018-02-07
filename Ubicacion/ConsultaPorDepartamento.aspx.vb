Imports System.Data
Imports System.Data.SqlClient
Public Class ConsultaPorDepartamento
    Inherits System.Web.UI.Page

    Public MiArticulo As New Oeraciones1.Oeraciones1

    Private Sub RadioButtonList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadioButtonList1.SelectedIndexChanged
        Select Case (RadioButtonList1.SelectedValue)
            Case "E"
                mvDatos.SetActiveView(View1)
            Case "D"
                mvDatos.SetActiveView(View2)
            Case "O"
                mvDatos.SetActiveView(View3)
        End Select
    End Sub

    Protected Sub btnEdificio_Click(sender As Object, e As EventArgs) Handles btnEdificio.Click
        Dim table As New DataTable("Table")

        table.Columns.Add("Departamento", Type.GetType("System.String"))




        Dim conexion As New SqlConnection(ConfigurationManager.ConnectionStrings("UbicacionConnectionString").ConnectionString)
        conexion.Open()
        Dim comando As New SqlCommand(String.Format("EXEC ConsultaPorEdificio {0}", DropDownList2.SelectedValue), conexion)
        Dim Lector As SqlDataReader
        Lector = comando.ExecuteReader
        While Lector.Read
            table.Rows.Add(Lector(0).ToString)
        End While

        GridView1.DataSource = table
        GridView1.DataBind()

        Dim a As TableCellCollection
        MsgBox(GridView1.Rows.Count)
        MsgBox(table.Rows.Count)
        Lector.Close()
        conexion.Close()
    End Sub

    Private Sub ConsultaPorDepartamento_Load(sender As Object, e As EventArgs) Handles Me.Load
        MiArticulo.ConnectionString = ConfigurationManager.ConnectionStrings("UbicacionConnectionString").ConnectionString
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        MiArticulo.idP = 1
        MiArticulo.Leer()
        GridView1.DataSource = MiArticulo.table
        GridView1.DataBind()
    End Sub
End Class