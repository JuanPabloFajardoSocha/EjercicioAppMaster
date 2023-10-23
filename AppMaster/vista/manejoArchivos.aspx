<%@ Page Title="" Language="C#" MasterPageFile="~/vista/Site1.Master" AutoEventWireup="true" CodeBehind="manejoArchivos.aspx.cs" Inherits="AppMaster.vista.manejoArchivos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/envioEmail.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPrincipal" runat="server">
    <div class="container titulo">
        <h3 class="mt-3">MANEJO DE ARCHIVOS DESDE C#</h3>
    </div>
    <div class="container parrafo">
        <p class="mt-3">

            <strong>
                <h3>Lectura y escritura de archivos .txt</h3>
            </strong>

            Para leer un archivo .txt desde c# se deben seguir los pasos que se describen a continuacion.
            <br />
            <br />
            <strong>1: Abre el archivo:</strong> Debes escribir código que abra el archivo de texto que deseas leer. 
              Esto se hace mediante una operación llamada "apertura del archivo".<br />
            <strong>2: Lectura del archivo:</strong> Necesitas instruir a tu programa para que lea el contenido del archivo. 
              Puedes hacerlo línea por línea o cargar todo el contenido en una sola variable.<br />
            <strong>3: Escritura en el archivo:</strong> Debes escribir en el archivo de texto. 
                       Puedes agregar nuevas líneas o sobrescribir el contenido existente.<br />
            <strong>4: Procesamiento(opcional):</strong>  Si deseas hacer algo con los datos del archivo después de leerlos, 
              como mostrarlos en una interfaz de usuario, procesarlos de alguna manera o guardarlos en una estructura de datos,
              debes escribir el código necesario para realizar esas acciones.<br />
            <strong>5: Cierre del archivo:</strong> Una vez que hayas terminado de leer y trabajar con el archivo, 
              debes cerrarlo correctamente para liberar los recursos y asegurarte de que los cambios 
              se guarden si es necesario.<br />
        </p>
    </div>


    <div class="container imagenes">
        <div class="row mt-5">

            <div class="card col-sm-5" style="width: 500px">
                <div class="card-body">
                    <div class="titulo mt-3">
                        <h4 class="card-title">Ejemplo MANEJO DE ARCHIVOS</h4>
                    </div>
                    <br />
                    <p>Se tiene un archivo cargado y se mostrara su contenido.</p>

                    <div class="container mt-3">

                        <div class="mensaje">
                            <textarea id="textAreaMensaje" cols="20" rows="7" runat="server" style="width: 90%; margin-left: 45px"></textarea>
                        </div>
                        <div class="nuevoColor">
                            <asp:Button ID="btnEnviar" class="btn btn-success" runat="server" Text="Leer"
                                OnClick="btnEnviar_Click1" />
                            <asp:Button ID="Button2" class="btn btn-warning" runat="server" Text="Escribir"
                                OnClick="btnLeer_Click" />
                            <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Limpiar"
                                OnClick="Button1_Click" />
                        </div>                       
                    </div>
                </div>

            </div>

        </div>
    </div>





</asp:Content>
