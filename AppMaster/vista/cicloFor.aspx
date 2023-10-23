<%@ Page Title="" Language="C#" MasterPageFile="~/vista/Site1.Master" AutoEventWireup="true" CodeBehind="cicloFor.aspx.cs" Inherits="AppMaster.vista.cicloFor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/cicloFor.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPrincipal" runat="server">
    <div class="container titulo">
        <h3 class="mt-3">BUCLES O CICLOS</h3>
    </div>
    <div class="container parrafo">
        <p class="mt-3">
            Un bucle o ciclo, en programación, es una secuencia de instrucciones de código que se ejecuta repetidas veces,
            hasta que la condición asignada a dicho bucle deja de cumplirse. 
                      
        </p>
    </div>

    <div class="container imagenes">
        <div class="row mt-5">
            <div class="card col-sm-5" style="width: 500px">
                <div class="container imagen">
                    <img class="card-img-top" src="imagenes/for.jpg" alt="Card image" style="width: 400px">
                </div>
                <div class="card-body">
                    <div class="titulo mt-3">
                        <h4 class="card-title">Ciclo FOR</h4>
                    </div>
                    <p class="card-text">
                        Un ciclo For es una estructura que se utiliza para ejecutar un bloque de código un número determinado de veces.
                    </p>

                </div>
            </div>

            <div class="card col-sm-5" style="width: 500px">
                <div class="card-body">
                    <div class="titulo mt-3">
                        <h4 class="card-title">Ejemplo Ciclo FOR</h4>
                    </div>
                    <p>
                        Ingresar un numero del 1 al 100 y se listaran los numeros primos que existen dentro de este rango.
                    </p>
                    <div class="container">
                        <div class="nuevoColor">
                            <asp:Label ID="Label1" runat="server" Text="Ingrese un numero comprendido entre 1 y 100"></asp:Label>
                        </div>
                        <div class="nuevoColor">
                            
                            <input id="txtNumero" type="number" runat="server" />
                        </div>
                        <div class="nuevoColor">
                            <asp:Button ID="btnEnviar" class="btn btn-success" runat="server" Text="Enviar"
                                OnClick="btnEnviar_Click"/>
                        </div>

                        <div class="puntaje">                       
                            <textarea id="textArea" cols="20" rows="7" runat="server" style="width:70%"></textarea>
                        </div>
                    </div>
                </div>
               
            </div>

        </div>
    </div>

</asp:Content>
