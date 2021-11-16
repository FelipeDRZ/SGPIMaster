<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarAdmin.aspx.cs" Inherits="SGPI.ModificarAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
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
        <div class="tab-content">
        <div id="Editar" class="container tab-pane active">
            <br />
            <h3>Editar Usuario</h3>
            <p>Aca puede editar Perfiles a su antojo.</p>
            <!-----------------------------------------contenido de Editar Formulario------------------------------>
            <div class="form-inline justify-content-center">
                <div class="col-12">
                    <asp:Label ID="lblBuscar" class="font-weight-bold" runat="server" Text="Buscar:"></asp:Label>
                    <asp:TextBox ID="txtBuscar" class="form-control" runat="server" placeholder="Ingrese Num. Documento" Width="700px"></asp:TextBox>
                    <img src="Imagenes/search.png" />
                    <asp:Button ID="BtnBuscarUsuario" class="btn btn-danger" runat="server" Text="Buscar" OnClick="BtnBuscarUsuario_Click" />
                    <br />
                </div>
                <div class="col-12">
                    <br />
                </div>
                <div class="col-sm-5">
                    <asp:Label ID="lblNombreE" runat="server" Text="Nombre:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtNombreE" class="form-control" runat="server" placeholder="Name"></asp:TextBox>
                </div>
                <div class="col-sm-5">
                    <asp:Label ID="lblApellidoE" runat="server" Text="Apellido:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtApellidoE" class="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
                </div>
                <div class="col-sm-5">
                    <asp:Label ID="lblDocumentoE" runat="server" Text="Documento:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtDocumentoE" class="form-control" runat="server" placeholder="#"></asp:TextBox>
                </div>
                <div class="col-sm-5">
                    <asp:Label ID="lblTipoDeDocumentoE" runat="server" Text="Tipo de Documento:"></asp:Label>
                    <br />
                    <asp:DropDownList ID="DDLTipoDeDocumentoE" class="form-control" AutoPostBack="True" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource7" DataTextField="Documento" DataValueField="TipoDocumento">
                        <asp:ListItem Text="Seleccione Id" Selected="false"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI_BDConnectionString6 %>" SelectCommand="SELECT * FROM [Documento]"></asp:SqlDataSource>
                </div>
                <div class="col-sm-5">
                    <asp:Label ID="lblGeneroE" runat="server" Text="Genero:"></asp:Label>
                    <br />
                    <asp:DropDownList ID="DDLGeneroE" class="form-control" AutoPostBack="True" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="TipoGenero" DataValueField="Genero">
                        <asp:ListItem Text="Seleccione genero" Selected="false"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI_BDConnectionString4 %>" SelectCommand="SELECT * FROM [Genero]"></asp:SqlDataSource>
                </div>
                <div class="col-sm-5">
                    <asp:Label ID="lblUserE" runat="server" Text="Nombre de Usuario:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtUserE" class="form-control" runat="server" placeholder="User Name"></asp:TextBox>
                </div>
                <div class="col-sm-5">
                    <asp:Label ID="LblCorreoE" runat="server" Text="Correo Electronico:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtCorreoE" type="email" class="form-control" runat="server" placeholder="@example"></asp:TextBox>
                </div>
                <div class="col-sm-5">
                    <br />
                    <asp:Button ID="btnEditar" class="btn btn-info" runat="server" Text="Editar" OnClick="btnEditar_Click" />
                </div>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
