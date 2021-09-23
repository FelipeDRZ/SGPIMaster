<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="PrincipalAdministrador.aspx.cs" Inherits="SGPI.PrincipalAdministrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>

    </title>
</head>
<body>
    <!-- menu Principal-->
    <ul class="nav nav-pills  bg-dark">
        <li class="nav-item">
            <a class="nav-link active bg-info text-white font-weight-bold" href="#Usuario">Modulo Usuario</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active bg-dark font-weight-bold" href="#">Modulo Reporte</a>
        </li>
    </ul>
    <!-- Panel -->

    <form id="form1" runat="server">
        <div id="Usuario" class="container mt-3">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active text-dark font-weight-bold" data-toggle="tab" href="#Crear">Crear Usuario</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark font-weight-bold" data-toggle="tab" href="#Editar">Editar Usuario</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark font-weight-bold" data-toggle="tab" href="#Eliminar">Eliminar Usuario</a>
                </li>
            </ul>
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
                            <asp:TextBox ID="txtDocumento" type="number" class="form-control" runat="server" required="true" placeholder="#">ID</asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblTipoDocumento" runat="server" Text="Tipo de Documento:"></asp:Label>
                            <br />
                            <asp:DropDownList ID="ddlTipoDocumento" class="form-control" AutoPostBack="true" runat="server" required="true">
                                <asp:ListItem text ="Seleccione Id" Selected="false"></asp:ListItem>
                                <asp:ListItem text ="Cedula Ciudadania" ></asp:ListItem>
                                <asp:ListItem text ="tarjeta Identidad" ></asp:ListItem>
                                <asp:ListItem text ="Pasaporte" ></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblRol" class="radio" runat="server" Text="Rol:" required="true"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="rblRol" runat="server">
                                <asp:ListItem Text="Administrador"></asp:ListItem>
                                <asp:ListItem Text="Estudiante"></asp:ListItem>
                                <asp:ListItem Text="Coordinador"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblEdad" runat="server" Text="Edad:"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtEdad" type="number" class="form-control" runat="server" required="true" placeholder="#">ID</asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblGenero" runat="server" Text="Genero:"></asp:Label>
                            <br />
                            <asp:DropDownList ID="ddlGenero" class="form-control" AutoPostBack="true" runat="server" required="true">
                                <asp:ListItem text ="Seleccione genero" Selected="false"></asp:ListItem>
                                <asp:ListItem text ="Masculino" ></asp:ListItem>
                                <asp:ListItem text ="Femenino" ></asp:ListItem>
                                <asp:ListItem text ="Otro" ></asp:ListItem>
                            </asp:DropDownList>
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
                            <asp:DropDownList ID="DDLCurso" class="form-control" AutoPostBack="true" runat="server" required="true" Width="650px">
                                <asp:ListItem Text="Seleccione Curso" Selected="false"></asp:ListItem>
                                <asp:ListItem Text="Especializacion en seguridad de la informacion"></asp:ListItem>
                                <asp:ListItem Text="Maestria en gestion TI"></asp:ListItem>
                                <asp:ListItem Text="Maestria en Gestion Ambiental"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-5">
                            <br />
                        </div>
                        <div class="col-sm-5 text-center">
                            <br />
                            <asp:Button ID="btnRegistrar" class="btn btn-sm btn-outline-info" runat="server" Text="Registrar" Width="100px"/>
                            </div>
                        <div class="col-sm-5 d-inline">
                            <br />
                            <asp:Button ID="btnCancelar" class="btn btn-sm btn-outline-danger" runat="server" Text="Cancelar" Width="100px" />
                        </div>
                        </div>
                </div>
                 <!-----------------------------------------contenido de Editar------------------------------>
                <div id="Editar" class="container tab-pane fade">
                    <br />
                    <h3>Editar Usuario</h3>
                    <p>Aca puede editar Perfiles a su antojo.</p>
                    <!-----------------------------------------contenido de Editar Formulario------------------------------>
                    <div class="form-inline justify-content-center">
                        <div class="col-12">
                            <asp:Label ID="lblBuscar" class="font-weight-bold" runat="server" Text="Buscar:"></asp:Label>
                            <asp:TextBox ID="txtBuscar" class="form-control" runat="server" placeholder="Ingrese Num. Documento" Width="700px"></asp:TextBox>
                            <img src="Imagenes/search.png" />
                            <asp:Button ID="btnBuscar" class="btn btn-danger" runat="server" Text="Buscar" />
                            <br />
                        </div>
                        <div class="col-12">
                            <br />
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblNombreE" runat="server" Text="Nombre:"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtNombreE" class="form-control" runat="server" required="true" placeholder="Name"></asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblApellidoE" runat="server" Text="Apellido:"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtApellidoE" class="form-control" runat="server" required="true" placeholder="Last Name"></asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblDocumentoE" runat="server" Text="Documento:"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtlblDocumentoE" type="number" class="form-control" runat="server" required="true" placeholder="#">ID</asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblTipoDeDocumentoE" runat="server" Text="Tipo de Documento:"></asp:Label>
                            <br />
                            <asp:DropDownList ID="DDLTipoDeDocumentoE" class="form-control" AutoPostBack="true" runat="server" required="true">
                                <asp:ListItem text ="Seleccione Id" Selected="false"></asp:ListItem>
                                <asp:ListItem text ="Cedula Ciudadania" ></asp:ListItem>
                                <asp:ListItem text ="tarjeta Identidad" ></asp:ListItem>
                                <asp:ListItem text ="Pasaporte" ></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblEdadE" runat="server" Text="Edad:"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtEdadE" type="number" class="form-control" runat="server" required="true" placeholder="#">ID</asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblGeneroE" runat="server" Text="Genero:"></asp:Label>
                            <br />
                            <asp:DropDownList ID="DDLGeneroE" class="form-control" AutoPostBack="true" runat="server" required="true">
                                <asp:ListItem text ="Seleccione genero" Selected="false"></asp:ListItem>
                                <asp:ListItem text ="Masculino" ></asp:ListItem>
                                <asp:ListItem text ="Femenino" ></asp:ListItem>
                                <asp:ListItem text ="Otro" ></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="lblUserE" runat="server" Text="Nombre de Usuario:"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtUserE" class="form-control" runat="server" required="true" placeholder="User Name"></asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <asp:Label ID="LblCorreoE" runat="server" Text="Correo Electronico:"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtCorreoE" type="email" class="form-control" runat="server" required="true" placeholder="@example"></asp:TextBox>
                        </div>
                        
                        <div class="col-12 text-center">
                            <br />
                            <asp:Button ID="btnEditar" class="btn btn-sm btn-outline-info" runat="server" Text="Editar" />
                        </div>
                    </div>
                </div>
                 <!-----------------------------------------contenido de Eliminar------------------------------>
                <div id="Eliminar" class="container tab-pane fade">
                    <br />
                    <h3>Eliminar Usuario</h3>
                    <p>en esta parte, puedes eliminar el usuario que desees.</p>
                    <div class="form-inline justify-content-center">
                        <div class="col-12">
                            <asp:Label ID="Label1" class="font-weight-bold" runat="server" Text="Buscar:"></asp:Label>
                            <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Ingrese Num. Documento" Width="700px"></asp:TextBox>
                            <img src="Imagenes/search.png" />
                            <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Buscar" />
                            <br />
                        </div>
                        <div class="COL-12">
                            <asp:GridView id="gvrEliminar" class="table table-borderless" runat="server" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField HeaderText="Documento" DataField="Documento" />
                                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                                    <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
                                    <asp:BoundField HeaderText="Rol" DataField="Rol" />
                                    <asp:BoundField HeaderText="Programa" DataField="Programa" />
                                    <asp:BoundField HeaderText="Opciones" DataField="Opciones" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
