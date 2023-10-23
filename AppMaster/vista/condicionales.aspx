<%@ Page Title="" Language="C#" MasterPageFile="~/vista/Site1.Master" AutoEventWireup="true" CodeBehind="condicionales.aspx.cs" Inherits="AppMaster.vista.condicionales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/condicionales.css">
    <script src="js/condicionales.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPrincipal" runat="server">
    <div class="container titulo">
        <h3 class="mt-3">CONDICIONALES</h3>
    </div>
    <div class="container parrafo">
        <p class="mt-3">
            Un condicional en la programación es una sentencia o 
      grupo de sentencias que puede ejecutarse o no en función del valor de una condición.           
        </p>
    </div>

    <div class="container imagenes">
        <div class="row mt-5">
            <div class="card col-sm-5" style="width: 500px">
                <div class="container imagen">
                    <img class="card-img-top" src="imagenes/condicional.png" alt="Card image" style="width: 400px">
                </div>
                <div class="card-body">
                    <div class="titulo mt-3">
                        <h4 class="card-title">Condicional IF</h4>
                    </div>
                    <p class="card-text">
                        En el condicional IF se tiene una condición
                        central que arroja como resultado verdadero o falso.
                    </p>

                </div>
            </div>

            <div class="card col-sm-5" style="width: 500px">
                <div class="card-body">
                    <div class="titulo mt-3">
                        <h4 class="card-title">Ejemplo IF</h4>
                    </div>
                    <p>
                        Se debe elejir el color que corresponda con el texto, si se elije el correcto se mostrara "CORRECTO"
                        si se elije otro se elije "INCORRECTO".
                    </p>
                    <div class="container">
                        <div class="nuevoColor">
                            <asp:Button ID="btnNuevoColor" class="btn btn-success" runat="server" Text="Nuevo Color" 
                                OnClick="btnNuevoColor_Click"/>
                            
                        </div>
                        <div class="nuevoColor">
                           <asp:Label ID="lblNuevoColor" runat="server"></asp:Label>                           
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <asp:ImageButton class="colores" ID="btnAmarillo" runat="server" ImageUrl="imagenes/amarillo.jpg"
                                    OnClick="btnAmarillo_Click" />
                            </div>
                            <div class="col-sm-4">
                                <asp:ImageButton class="colores" ID="btnAzul" runat="server" ImageUrl="imagenes/azul.jpg"
                                    OnClick="btnAzul_Click" />
                            </div>
                            <div class="col-sm-4">
                                <asp:ImageButton class="colores" ID="btnMorado" runat="server" ImageUrl="imagenes/morado.jpg"
                                    OnClick="btnMorado_Click" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <asp:ImageButton class="colores" ID="btnNegro" runat="server" ImageUrl="imagenes/negro.jpg"
                                    OnClick="btnNegro_Click" />
                            </div>
                            <div class="col-sm-4">
                                <asp:ImageButton class="colores" ID="btnRojo" runat="server" ImageUrl="imagenes/rojo.jpg"
                                    OnClick="btnRojo_Click" />
                            </div>
                            <div class="col-sm-4">
                                <asp:ImageButton class="colores" ID="btnVerde" value="verde" runat="server" ImageUrl="imagenes/verde.jpg"
                                    OnClick="btnVerde_Click" />
                            </div>
                        </div>

                        <div class="puntaje">
                            <asp:Label ID="lblPuntaje" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <div class="container imagenes">
        <div class="row mt-5">

            <div class="card col-sm-5" style="width: 500px">
                <div class="container imagen">
                    <img class="card-img-top" src="imagenes/switch.png" alt="Card image" style="width: 350px">
                </div>
                <div class="card-body">
                    <div class="titulo mt-3">
                        <h4 class="card-title">Condicional SWITCH</h4>
                    </div>
                    <p class="card-text">
                        La estructura selectiva switch selecciona una de entre múltiples alternativas. 
                      Esta estructura es especialmente útil cuando la selección se basa en el valor de 
                      una variable simple o de una expresión simple denominada expresión de control o selector.
                    </p>
                </div>
            </div>

            <div class="card col-sm-5" style="width: 500px">
                     <div class="card-body">
          <div class="titulo mt-3">
              <h4 class="card-title">Ejemplo SWITCH</h4>
          </div>
          <p>
              Se debe elejir el color y se mostrara si es color primario o no.
          </p>
          <div class="container">
             <br />

              <div class="row">
                  <div class="col-sm-4">
                      <asp:ImageButton class="colores" ID="amarillo" runat="server" ImageUrl="imagenes/amarillo.jpg"
                          OnClick="amarillo_Click" />
                  </div>
                  <div class="col-sm-4">
                      <asp:ImageButton class="colores" ID="azul" runat="server" ImageUrl="imagenes/azul.jpg"
                          OnClick="azul_Click"/>
                  </div>
                  <div class="col-sm-4">
                      <asp:ImageButton class="colores" ID="morado" runat="server" ImageUrl="imagenes/morado.jpg"
                          OnClick="morado_Click" />
                  </div>
              </div>

              <div class="row">
                  <div class="col-sm-4">
                      <asp:ImageButton class="colores" ID="negro" runat="server" ImageUrl="imagenes/negro.jpg"
                          OnClick="negro_Click" />
                  </div>
                  <div class="col-sm-4">
                      <asp:ImageButton class="colores" ID="rojo" runat="server" ImageUrl="imagenes/rojo.jpg"
                          OnClick="rojo_Click" />
                  </div>
                  <div class="col-sm-4">
                      <asp:ImageButton class="colores" ID="verde" value="verde" runat="server" ImageUrl="imagenes/verde.jpg"
                          OnClick="verde_Click" />
                  </div>
              </div>

              <div class="puntaje">
                  <asp:Label ID="lblResultado" runat="server"></asp:Label>
              </div>
          </div>
      </div>
            </div>
        </div>

    </div>
    <br />


</asp:Content>
