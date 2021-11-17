<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarAdmin.aspx.cs" Inherits="SGPI.EliminarAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <!-- menu Principal-->
    <ul class="nav nav-pills  bg-dark">
        <li class="nav-item">
            <a class="nav-link active bg-info text-white font-weight-bold" href="PrincipalAdministrador.aspx">Modulo Usuario</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active bg-dark font-weight-bold" href="ModificarAdmin.aspx">Modificar</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active bg-dark font-weight-bold" href="EliminarAdmin.aspx">Eliminar</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active bg-dark font-weight-bold" href="ReportesAdministrador.aspx">Modulo Reporte</a>
        </li>
    </ul>
    <form id="form1" runat="server">
        <div class="container">
            <div id="Eliminar" class="container tab-pane active">
                    <br />
                    <h3>Eliminar Usuario</h3>
                    <p>en esta parte, puedes eliminar el usuario que desees.</p>
                    <div class="form-inline justify-content-center">
                        <div class="col-12">
                            <asp:Label ID="lblBuscarEliminar" class="font-weight-bold" runat="server" Text="Buscar:"></asp:Label>
                            <asp:TextBox ID="txtBuscarEliminar" class="form-control" runat="server" placeholder="Ingrese Num. Documento" Width="700px"></asp:TextBox>
                            <img src="Imagenes/search.png" />
                            <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Buscar" OnClick="Button1_Click" />
                            <br />
                        </div>
                        <div>
                            <br />
                            <br />
                        </div>
                        <div class="COL-12">
                            <asp:GridView ID="gvrEliminar" class="table table-borderless" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="ID">
                                <Columns>
                                    <asp:BoundField HeaderText="Documento" DataField="Documento" SortExpression="Documento" />
                                    <asp:BoundField HeaderText="ID" DataField="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" SortExpression="Nombre" />
                                    <asp:BoundField HeaderText="Apellido" DataField="Apellido" SortExpression="Apellido" />
                                    <asp:BoundField HeaderText="Correo" DataField="Correo" SortExpression="Correo" />
                                    <asp:BoundField DataField="TipoGenero" HeaderText="TipoGenero" SortExpression="TipoGenero" />
                                    <asp:BoundField DataField="TipoRol" HeaderText="TipoRol" SortExpression="TipoRol" />
                                    <asp:BoundField DataField="tipoPrograma" HeaderText="tipoPrograma" SortExpression="tipoPrograma" />
                                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger"/>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI_BDConnectionString7 %>" SelectCommand="SELECT UsuarioAdmin.Documento, UsuarioAdmin.ID, UsuarioAdmin.Nombre, UsuarioAdmin.Apellido, UsuarioAdmin.Correo, Genero.TipoGenero, Rol.TipoRol, ProgramaEstudiantil.tipoPrograma FROM UsuarioAdmin INNER JOIN Rol ON UsuarioAdmin.Rol = Rol.Rol INNER JOIN ProgramaEstudiantil ON UsuarioAdmin.Programa = ProgramaEstudiantil.Programa INNER JOIN Genero ON UsuarioAdmin.Genero = Genero.Genero WHERE (UsuarioAdmin.Documento = @Documento)" DeleteCommand="DELETE FROM [UsuarioAdmin] WHERE [ID] = @ID">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtBuscarEliminar" Name="Documento" PropertyName="Text" Type="String" />
                                </SelectParameters>
                                <DeleteParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </DeleteParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
        </div>
    </form>
</body>
</html>
