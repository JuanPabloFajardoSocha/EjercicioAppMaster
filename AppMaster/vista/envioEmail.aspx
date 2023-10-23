<%@ Page Title="" Language="C#" MasterPageFile="~/vista/Site1.Master" AutoEventWireup="true" CodeBehind="envioEmail.aspx.cs" Inherits="AppMaster.vista.envioEmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/envioEmail.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPrincipal" runat="server">
    <div class="container titulo">
        <h3 class="mt-3">COMO ENVIAR UN EMAIL CON C#</h3>
    </div>
    <div class="container parrafo">
        <p class="mt-3">
            Para enviar un correo desde C# primero debemos de tener una cuenta de correo que permita ser utilizado por otras aplicaciones.
            <br />
            Con la información de la cuenta de correo tenemos dos opciones de configuración, 
         desde C# agregando los datos o desde la web.config. En este tema veremos cómo enviar 
         un correo realizando las configuraciones desde C# sin tocar la web.config.
            <br />
            <br />
            <strong>Datos de la cuenta de correo</strong>
            <br />
            De nuestro proveedor de correos debemos de obtener la siguiente información que utilizaremos en la configuración de c#.
            <br />
            * Correo electrónico<br />
            * Contraseña<br />
            * Host de salida<br />
            * Puerto<br />
            * Si o no acepta ssl
            <br />
            <br />
            <strong>Enviar correo con C#</strong>
            <br />
            Antes de empezar a colocar el código para el envio de correos debemos de agregar los espacios de nombres necesarios.
            
            <br />

        </p>
    </div>
    <div class="container imagen">
        <img src="imagenes/email1.png" style="width: 900px" />
    </div>

    <div class="container parrafo">
        <p class="mt-3">
            Ya que tenemos listo el punto anterior, podemos utilizar el siguiente código para enviar los correos.
        </p>
    </div>
    <br />
    <div class="container imagen">
        <img src="imagenes/email2.png" style="width: 900px" />
    </div>
    <div class="container parrafo">
        <p class="mt-3">
            2- Asignación del correo de salida y el nombre del correo (visible para el usuario).<br />
            3- Cuenta de correo destino.<br />
            4- Asunto del correo.<br />
            5- Cuerpo del mensaje (Texto plano o HTML si la propiedad IsBodyHtml = true)<br />
            10- Host del servidor de correo.<br />
            11- Puerto de salida del servidor de correo.<br />
            12- Correo y contraseña para autentificación.<br />
            14- True si el servidor de correo permite ssl y false si no lo permite.<br />
            15- Enviar el correo creado al destinatario.<br />
            <br />

            El correo se envia inmediatamente después de crearse, revisa la cuenta de correo destino, podrás algo similar a esto.
        </p>
    </div>

    <div class="container imagen">
        <img src="imagenes/email3.png" style="width: 700px" />
    </div>


    <div class="container imagenes">
        <div class="row mt-5">

            <div class="card col-sm-5" style="width: 500px">
                <div class="card-body">
                    <div class="titulo mt-3">
                        <h4 class="card-title">Ejemplo ENVIO EMAIL</h4>
                    </div>

                    <div class="container mt-3">
                        <div class="nuevoColor">
                            <asp:Label ID="Label1" runat="server" Text="De: ">                       
                            </asp:Label>
                            <input id="textEmisor" type="text" runat="server" style="width: 100%; margin-left: 35px" />

                        </div>

                        <div class="nuevoColor">
                            <asp:Label ID="Label4" runat="server" Text="Para:">                                    
                            </asp:Label>
                            <input id="textReceptor" type="text" runat="server" style="width: 100%; margin-left: 25px" />
                        </div>

                        <div class="nuevoColor">
                            <asp:Label ID="Label2" runat="server" Text="Asunto:">                                    
                            </asp:Label>
                            <input id="textAsunto" type="text" runat="server" style="width: 100%; margin-left: 5px" />
                        </div>

                        <div>
                            <asp:Label ID="Label3" runat="server" Text="Mensaje:">                                    
                            </asp:Label>
                        </div>

                        <div class="mensaje">
                            <textarea id="textAreaMensaje" cols="20" rows="7" runat="server" style="width: 90%; margin-left: 45px"></textarea>
                        </div>
                        <div class="nuevoColor">
                            <asp:Button ID="btnEnviar" class="btn btn-success" runat="server" Text="Enviar"
                                OnClick="btnEnviar_Click" />
                        </div>
                        <div>
                            <asp:Label ID="Informacion" runat="server">                                    
                            </asp:Label>
                        </div>
                        
                    </div>
            </div>

        </div>

    </div>
    </div>
</asp:Content>
