<%@ Page Title="" Language="C#" MasterPageFile="~/vista/Site1.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="AppMaster.vista.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/list.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPrincipal" runat="server">
    
    
    <div class="container titulo">
        <h3 class="mt-3">LIST</h3>
    </div>
    <div class="container parrafo">
    </div>

    <div class="container imagenes">
        <div class="row mt-5">
            <div class="card col-sm-5" style="width: 500px">
                <div class="container imagen">
                    <img class="card-img-top mt-5" src="imagenes/lista.png" alt="Card image" style="width: 400px">
                </div>
                <div class="card-body">
                    <div class="titulo mt-3">
                        <h4 class="card-title">LIST</h4>
                    </div>
                    <p class="card-text">
                        Una lista (List) es una estructura de datos que permite almacenar una 
                        colección de elementos del mismo tipo en orden secuencial. 
                        A diferencia de los arrays, las listas no tienen un tamaño fijo y se 
                        pueden agregar o eliminar elementos de forma dinámica.
                    </p>

                </div>                
            </div>
           

            <div class="card col-sm-5" style="width: 500px">
                <div class="card-body">
                    <div class="titulo mt-3">
                        <h4 class="card-title">Ejemplo LIST</h4>
                    </div>
                    <p>
                      Al dar click en el boton "Mostrar Datos" se mustran todos los registros existentes en una lista en una tabla.
                    </p>
                    <div class="container">
                        <div class="nuevoColor">
                            
                            <asp:Label ID="lblMensaje" runat="server"></asp:Label>

                            <div class="container form">     
                                <asp:Button ID="Button1" class="btn btn-success mb-3" runat="server" Text="Mostrar Datos" 
                                    onclick="Button1_Click"/>
                                <br>
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
