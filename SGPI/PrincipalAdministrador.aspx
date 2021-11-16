<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrincipalAdministrador.aspx.cs" Inherits="SGPI.PrincipalAdministrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
    <!-- Panel -->

    <form id="form1" runat="server">
            <!-----------------------------------------contenido------------------------------>
            <div class="tab-content">
                <div id="Crear" class="container tab-pane active">
                    <br />
                    <h2>Registrar Usuario</h2>
                    <div class="form-inline justify-content-center">
                        <div class="col-sm-5">
                            <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtNombre" class="form-control" runat="server" required="true" placeholder="Name"></asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblApellido" runat="server" Text="Apellido:"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtApellido" class="form-control" runat="server" required="true" placeholder="Last Name"></asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblDocumento" runat="server" Text="Documento:"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtDocumento" class="form-control" runat="server" required="true" placeholder="#"></asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblTipoDocumento" runat="server" Text="Tipo de Documento:"></asp:Label>
                            <br />
                            <asp:DropDownList ID="ddlTipoDocumento" class="form-control" AutoPostBack="True" runat="server" required="true" AppendDataBoundItems="True" DataSourceID="SqlDataSourceDocumento" DataTextField="Documento" DataValueField="TipoDocumento">
                                <asp:ListItem Text="Seleccione Id" Selected="false"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceDocumento" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI_BDConnectionString %>" SelectCommand="SELECT * FROM [Documento]"></asp:SqlDataSource>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblRol" class="radio" runat="server" Text="Rol:" required="true"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="rblRol" runat="server" DataSourceID="SqlDataSourceRol" DataTextField="TipoRol" DataValueField="Rol">
                            </asp:RadioButtonList>
                            <asp:SqlDataSource ID="SqlDataSourceRol" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI_BDConnectionStringRol %>" SelectCommand="SELECT * FROM [Rol]"></asp:SqlDataSource>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblGenero" runat="server" Text="Genero:"></asp:Label>
                            <br />
                            <asp:DropDownList ID="ddlGenero" class="form-control" AutoPostBack="True" runat="server" required="true" DataSourceID="SqlDataSourceGenero" DataTextField="TipoGenero" DataValueField="Genero" AppendDataBoundItems="True">
                                <asp:ListItem Text="Seleccione genero" Selected="false"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceGenero" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI_BDConnectionStringGenero %>" SelectCommand="SELECT * FROM [Genero]"></asp:SqlDataSource>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblContraseña" runat="server" Text="Contraseña:"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtContraseña" type="password" class="form-control" runat="server" required="true" placeholder="password"></asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre de Usuario:"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtNombreUsuario" class="form-control" runat="server" required="true" placeholder="User Name"></asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblCorreo" runat="server" Text="Correo Electronico:"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtCorreo" type="email" class="form-control" runat="server" required="true" placeholder="@example"></asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblCarrera" runat="server" Text="Curso estudiantil:"></asp:Label>
                            <br />
                            <asp:DropDownList ID="DDLCurso" class="form-control" AutoPostBack="True" runat="server" required="true" DataSourceID="SqlDataSourceCurso" DataTextField="tipoPrograma" DataValueField="Programa" AppendDataBoundItems="True">
                                <asp:ListItem Text="Seleccione Curso" Selected="false"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceCurso" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI_BDConnectionStringCurso %>" SelectCommand="SELECT * FROM [ProgramaEstudiantil]"></asp:SqlDataSource>
                        </div>
                        <div class="col-sm-5 text-center">
                            <br />
                            <asp:Button ID="btnAgregar" class="btn btn-info" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
                        </div>
                        <div class="col-sm-5 d-inline">
                            <br />
                            <asp:Button ID="btnCancelar" class="btn btn-sm btn-outline-danger" runat="server" Text="Cancelar" Width="100px" />
                        </div>
                    </div>
                </div>
                <!-----------------------------------------contenido de Editar------------------------------>
                
                <!-----------------------------------------contenido de Eliminar------------------------------>
                <div id="Eliminar" class="container tab-pane fade">
                    <br />
                    <h3>Eliminar Usuario</h3>
                    <p>en esta parte, puedes eliminar el usuario que desees.</p>
                    <div class="form-inline justify-content-center">
                        <div class="col-12">
                            <asp:Label ID="lblBuscarEliminar" class="font-weight-bold" runat="server" Text="Buscar:"></asp:Label>
                            <asp:TextBox ID="txtBuscarEliminar" class="form-control" runat="server" placeholder="Ingrese Num. Documento" Width="700px"></asp:TextBox>
                            <img src="Imagenes/search.png" />
                            <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Buscar" />
                            <br />
                        </div>
                        <div>
                            <br />
                            <br />
                        </div>
                        <div class="COL-12">
                            <asp:GridView ID="gvrEliminar" class="table table-borderless" runat="server" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField HeaderText="Documento" DataField="Documento" />
                                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                                    <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
                                    <asp:BoundField HeaderText="Rol" DataField="Rol" />
                                    <asp:BoundField HeaderText="Programa" DataField="Programa" />
                                    <asp:BoundField HeaderText="Seleccionar" DataField="Seleccionar" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
    </form>
</body>
</html>
