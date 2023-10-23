<%@ Page Title="" Language="C#" MasterPageFile="~/vista/Site1.Master" AutoEventWireup="true" CodeBehind="cicloWhile.aspx.cs" Inherits="AppMaster.vista.cicloWhile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" type="text/css" href="css/cicloWhile.css">
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
                  <img class="card-img-top" src="imagenes/while.jpg" alt="Card image" style="width: 400px">
              </div>
              <div class="card-body">
                  <div class="titulo mt-3">
                      <h4 class="card-title">Ciclo WHILE</h4>
                  </div>
                  <p class="card-text">
                      Un bucle while tiene asociado un bloque de sentencias que se ejecutarán secuencialmente 
                      mientras la condición de entrada al bucle sea cierta.
                  </p>

              </div>
          </div>

          <div class="card col-sm-5" style="width: 500px">
              <div class="card-body">
                  <div class="titulo mt-3">
                      <h4 class="card-title">Ejemplo Ciclo WHILE</h4>
                  </div>
                  <p>
                      Se ingresa una palabra o frase y se mostrara al reves.
                  </p>
                  <div class="container">
                      <div class="nuevoColor">
                          <asp:Label ID="Label1" runat="server" Text="Ingrese una palabra o frase."></asp:Label>
                      </div>
                      <div class="nuevoColor">
                          
                          <input id="txtPalabra" type="text" runat="server" />
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
