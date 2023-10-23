<%@ Page Title="" Language="C#" MasterPageFile="~/vista/Site1.Master" AutoEventWireup="true" CodeBehind="vectores.aspx.cs" Inherits="AppMaster.vista.vectores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/vectores.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPrincipal" runat="server">

    <div class="container titulo">
        <h3 class="mt-3">VECTORES</h3>
    </div>
    <div class="container parrafo">
    </div>

    <div class="container imagenes">
        <div class="row mt-5">
            <div class="card col-sm-5" style="width: 500px">
                <div class="container imagen">
                    <img class="card-img-top" src="imagenes/vector.png" alt="Card image" style="width: 400px">
                </div>
                <div class="card-body">
                    <div class="titulo mt-3">
                        <h4 class="card-title">VECTORES</h4>
                    </div>
                    <p class="card-text">
                        Un vector (matriz) es una colección ordenada de datos (tanto primitivos u objetos dependiendo del lenguaje).
                     Los vectores (matrices) se emplean para almacenar múltiples valores en una sola variable, 
                    frente a las variables que sólo pueden almacenar un valor (por cada variable).
                    </p>

                </div>
            </div>

            <div class="card col-sm-5" style="width: 500px">
                <div class="card-body">
                    <div class="titulo mt-3">
                        <h4 class="card-title">Ejemplo VECTORES</h4>
                    </div>
                    <p>
                        Se tiene un array con registros de personas y se puede filtrar por genero y edad.
                    </p>
                    <div class="container">
                        <div class="nuevoColor">

                            <div class="container form">
                                <asp:Label ID="lblEdad" runat="server">Edad:</asp:Label>
                                <asp:TextBox ID="textEdad" class="edad" runat="server"></asp:TextBox>
                            </div>

                            <div class="container form">
                                <asp:Label ID="lblGenero" runat="server">Genero:</asp:Label>
                                <asp:Label ID="lblMasculino" class="masculino" runat="server">Masculino
                                </asp:Label><asp:RadioButton ID="rbtnMasculino" runat="server" 
                                    OnCheckedChanged="rbtnMasculino_CheckedChanged" AutoPostBack="true"/>

                                <asp:Label ID="lblFemenino" runat="server">Femenino 
                                </asp:Label><asp:RadioButton ID="rbtnFemenino" runat="server" 
                                    OnCheckedChanged="rbtnFemenino_CheckedChanged" AutoPostBack="true"/>
                            </div>

                            <div class="container form">
                                <asp:Button ID="btnEnviar" class="btn btn-success" runat="server" Text="Buscar"
                                    OnClick="btnEnviar_Click" />
                            </div>



                            <div class="container form">
                                <asp:Label ID="lblDatos" runat="server">Datos:</asp:Label>
                                <asp:Table ID="Table1" class="table table-primary" runat="server" BorderStyle="Groove">
                                    <asp:TableHeaderRow>
                                        <asp:TableHeaderCell>Nombre</asp:TableHeaderCell>
                                        <asp:TableHeaderCell>Apellido</asp:TableHeaderCell>
                                        <asp:TableHeaderCell>Genero</asp:TableHeaderCell>
                                        <asp:TableHeaderCell>Edad</asp:TableHeaderCell>
                                    </asp:TableHeaderRow>                               
                                </asp:Table>
                                <asp:Label ID="lblGenero1" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
</asp:Content>
