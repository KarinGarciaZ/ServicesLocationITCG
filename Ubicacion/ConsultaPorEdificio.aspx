<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ConsultaPorEdificio.aspx.vb" Inherits="Ubicacion.ConsultaPorEdificio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="nombre" HeaderText="Edificio" SortExpression="nombre" />
                <asp:BoundField DataField="nombre1" HeaderText="Departamento" SortExpression="nombre1" />
                <asp:BoundField DataField="nombre2" HeaderText="Oficina" SortExpression="nombre2" />
                <asp:BoundField DataField="encargado" HeaderText="Encargado" SortExpression="encargado" />
                <asp:BoundField DataField="tramites" HeaderText="Tramites" SortExpression="tramites" />
            </Columns>
        </asp:GridView>
    </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UbicacionConnectionString %>" SelectCommand="select Edificios.nombre, Departamentos.nombre, Oficinas.nombre, Oficinas.encargado, Oficinas.tramites from Oficinas inner join Departamentos on Oficinas.idDepartamento = Departamentos.id inner join Edificios on Edificios.id = Departamentos.idEdificio"></asp:SqlDataSource>

</asp:Content>
