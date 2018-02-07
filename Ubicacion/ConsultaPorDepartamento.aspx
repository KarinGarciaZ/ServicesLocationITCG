<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ConsultaPorDepartamento.aspx.vb" Inherits="Ubicacion.ConsultaPorDepartamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-2">
            
        </div>
        <div class="col-md-8">
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                <asp:ListItem Value="E">Buscar por edificio</asp:ListItem>
                <asp:ListItem Value="D">Buscar por departamento</asp:ListItem>
                <asp:ListItem Value="O">Buscar por oficina</asp:ListItem>
            </asp:RadioButtonList>
            <br />

            <asp:MultiView ID="mvDatos" runat="server" ActiveViewIndex="0">

                <asp:View ID="View1" runat="server">
                    <div class="row">
                        <div class="col-md-7">
                            <asp:Label ID="Label1" runat="server" Text="Seleccione el edificio por el que se desea hacer la búsqueda:"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="id" CssClass="form-control" Width="100px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UbicacionConnectionString %>" SelectCommand="SELECT [id], [nombre] FROM [Edificios]"></asp:SqlDataSource>
                        </div>
                        <div class="col-md-2">
                            <asp:Button ID="btnEdificio" runat="server" Text="Buscar" CssClass="btn btn-primary" />            
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                            </asp:GridView>
                        </div>
                    </div>
                </asp:View>

                <asp:View ID="View2" runat="server">
                    <div class="row">
                        <div class="col-md-7">
                            <asp:Label ID="Label2" runat="server" Text="Seleccione el departamento por el que se desea hacer la búsqueda:"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UbicacionConnectionString %>" SelectCommand="SELECT [nombre], [id] FROM [Departamentos]"></asp:SqlDataSource>
                        </div>
                        <div class="col-md-2">
                            <asp:Button ID="Button2" runat="server" Text="Button" />
                        </div>
                    </div>
                </asp:View>

                <asp:View ID="View3" runat="server">
                    <div class="row">
                        <div class="col-md-7">
                            <asp:Label ID="Label3" runat="server" Text="Seleccione la oficina por la que se desea hacer la búsqueda:"></asp:Label>  
                        </div>
                        <div class="col-md-3">
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="nombre" DataValueField="id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:UbicacionConnectionString %>" SelectCommand="SELECT [id], [nombre] FROM [Oficinas]"></asp:SqlDataSource>
                        </div>
                        <div class="col-md-2">
                            <asp:Button ID="Button3" runat="server" Text="Button" />
                        </div>
                    </div>
                </asp:View>
            </asp:MultiView>

        </div>
        <div class="col-md-2">
                
        </div>
    </div>

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View4" runat="server">
        </asp:View>
        <asp:View ID="View5" runat="server">
        </asp:View>
        <asp:View ID="View6" runat="server">
        </asp:View>
    </asp:MultiView>

    <br />

</asp:Content>
