<%@ Page Title="" Language="C#" MasterPageFile="~/vista/Site1.Master" AutoEventWireup="true" CodeBehind="arrayList.aspx.cs" Inherits="AppMaster.vista.arrayList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/arrayList.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPrincipal" runat="server">

    <div class="container titulo">
        <h3 class="mt-3">ARRAYLIST</h3>
    </div>
    <div class="container parrafo">
    </div>

    <div class="container imagenes">
        <div class="row mt-5">
            <div class="card col-sm-5" style="width: 500px">
                <div class="container imagen">
                    <img class="card-img-top" src="imagenes/arrayList.jpg" alt="Card image" style="width: 400px">
                </div>
                <div class="card-body">
                    <div class="titulo mt-3">
                        <h4 class="card-title">ARRAYLIST</h4>
                    </div>
                    <p class="card-text">
                        La clase ArrayList, es una clase que permite almacenar datos en memoria de forma 
                        similar a los Arrays, con la ventaja de que el numero de elementos que almacena, 
                        lo hace de forma dinámica, es decir, que no es necesario declarar su tamaño como
                        pasa con los Arrays.
                    </p>

                </div>
            </div>

            <div class="card col-sm-5" style="width: 500px">
                <div class="card-body">
                    <div class="titulo mt-3">
                        <h4 class="card-title">Ejemplo ARRAYLIST</h4>
                    </div>
                    <p>
                        Se puede agragr una cantidad (n) de personas y se mostraran los datos de esas personas.
                    </p>
                    <div class="container">
                        <div class="nuevoColor">

                            <div class="container form">
                                <asp:Label ID="lblNombre" runat="server">Nombre:</asp:Label>
                                <asp:TextBox ID="textNombre" class="nombre" runat="server"></asp:TextBox>
                            </div>
                            <div class="container form">
                                <asp:Label ID="lblApellido" runat="server">Apellido:</asp:Label>
                                <asp:TextBox ID="textApellido" class="apellido"  runat="server"></asp:TextBox>
                            </div>
                            <div class="container form">
                                <asp:Label ID="lblEdad" runat="server">Edad:</asp:Label>
                                <asp:TextBox ID="textEdad"  class="edad" runat="server"></asp:TextBox>
                            </div>
                            <div class="container form">
                                <asp:Label ID="lblDireccion" runat="server">Direccion:</asp:Label>
                                <asp:TextBox ID="textDireccion" class="direccion" runat="server"></asp:TextBox>
                            </div>



                            <div class="container form">
                                <asp:Button ID="btnEnviar" class="btn btn-success" runat="server" Text="Registrar" 
                                    OnClick="btnEnviar_Click"/>
                            </div>

                            <asp:Label ID="lblGenero1" runat="server"></asp:Label>



                            <div class="container form">
                                <asp:Label ID="lblDatos" runat="server">Datos:</asp:Label>
                                <asp:Table ID="Table1" class="table table-primary" runat="server" BorderStyle="Groove">
                                    <asp:TableHeaderRow>
                                        <asp:TableHeaderCell>Nombre</asp:TableHeaderCell>
                                        <asp:TableHeaderCell>Apellido</asp:TableHeaderCell>
                                        <asp:TableHeaderCell>Edad</asp:TableHeaderCell>
                                        <asp:TableHeaderCell>Direccion</asp:TableHeaderCell>
                                    </asp:TableHeaderRow>
                                </asp:Table>
                                
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
</asp:Content>
