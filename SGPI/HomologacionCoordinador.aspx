<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomologacionCoordinador.aspx.cs" Inherits="SGPI.HomologacionCoordinador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container tab-pane">
            <div class="form-group">
                <div class="col-12">
                    <asp:Label ID="lblBuscar" class="font-weight-bold" runat="server" Text="Buscar: &nbsp &nbsp"></asp:Label>
                    <asp:TextBox ID="txtBuscar" class="form-control" runat="server" placeholder="Ingrese Num. Documento" Width="700px"></asp:TextBox>
                    <img src="Imagenes/search.png" />
                    <asp:Button ID="btnBuscar" class="btn btn-danger" runat="server" Text="Buscar" />
                    <br />
                </div>
                <!--                 -->
                <div class="col">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
                    <br />
                    <asp:Label ID="lblSetNombre" runat="server" Text="Juan"></asp:Label>
                </div>
                <div class="col">
                    <asp:Label ID="lblApellido" runat="server" Text="Apellido:"></asp:Label>
                    <br />
                    <asp:Label ID="lblSetApellido" runat="server" Text="Garcia"></asp:Label>
                </div>
                <div class="col">
                    <asp:Label ID="lblPrograma" runat="server" Text="Programa:"></asp:Label>
                    <br />
                    <asp:Label ID="lblSetPrograma" runat="server" Text="Sistemas"></asp:Label>
                </div>
                <!--                 -->
                <div class="col">
                    <asp:Label ID="lblPeriodoAcademico" runat="server" Text="Periodo Academico:"></asp:Label>
                    <br />
                    <asp:Label ID="lblsetPeriodo" runat="server" Text="2021-2"></asp:Label>
                </div>
                <div class="col">
                    <asp:Label ID="lblDocumento" runat="server" Text="Documento:"></asp:Label>
                    <br />
                    <asp:Label ID="lblSetDocumento" runat="server" Text="1234567"></asp:Label>
                </div>
                <div class="col">
                    <asp:Label ID="lblTipoHomologacion" runat="server" Text="Tipo de Homologacion:"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlHomologacion" class="form-control" AutoPostBack="true" runat="server" required="true" Width="650px">
                        <asp:ListItem Text="Seleccione tipo" Selected="false"></asp:ListItem>
                        <asp:ListItem Text="Transferencia Externa"></asp:ListItem>
                        <asp:ListItem Text="Transferencia interna"></asp:ListItem>
                        <asp:ListItem Text="Nuevo"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div>
                <br />
            </div>
            <div>
                <asp:GridView ID="grvHomologar" class="table table-borderless table-hover" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField HeaderText="N" DataField="N"></asp:BoundField>
                        <asp:BoundField HeaderText="Code" DataField="Code" />
                        <asp:BoundField HeaderText="Asignatura" DataField="Asignatura" />
                        <asp:BoundField HeaderText="Creditos" DataField="Creditos" />
                        <asp:BoundField HeaderText="Nivel" DataField="Nivel" />
                        <asp:BoundField HeaderText="Programa" DataField="Programa" />
                        <asp:BoundField HeaderText="Cod. homologar" DataField="Cod. homologar" />
                        <asp:BoundField HeaderText="Adignatura a Homologar" DataField="Adignatura a Homologar" />
                        <asp:BoundField HeaderText="Creditos Homologar" DataField="Creditos Homologar" />
                        <asp:BoundField HeaderText="Nota Definitiva" DataField="Nota Definitiva" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
