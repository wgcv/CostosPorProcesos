<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Costos._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        margin-left: 40px;
    }
    .style2
    {
        width: 198px;
    }
    .style3
    {
        height: 29px;
    }
    .style4
    {
        width: 198px;
        height: 29px;
    }
    .style5
    {
        width: 238px;
    }
    .style6
    {
        height: 29px;
        width: 238px;
    }
        .style7
        {
            width: 183px;
        }
        .style8
        {
            width: 175px;
        }
        .style9
        {
            width: 338px;
        }
        .style10
        {
            height: 29px;
            width: 338px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <p>
        &nbsp;</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>
        <asp:Label ID="label2" runat="server" Font-Bold="True" 
            Text="Número de proceso"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="lblprocesos" runat="server" Font-Bold="True" 
            Text="Cuantos procesos Intervienen "></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtprocesos" runat="server" Width="88px">0</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="lblunidadesE" runat="server" Font-Bold="True" 
            Text="Unidades iniciales"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtunidadesiniciales" runat="server" Width="88px">0</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmateriaprima" runat="server" 
            Font-Bold="True" Text="Materia prima "></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtmateriaprima" runat="server" Width="88px">0</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="lblmanoobra" runat="server" Font-Bold="True" Text="Mano de obra"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtmanoobra" runat="server" Width="85px">0</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="lblcif" runat="server" Font-Bold="True" 
            Text="C. Indirecto fabricacion"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtcostosindirectos" runat="server" Width="85px">0</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbltransferidas" runat="server" 
            Font-Bold="True" Text="Unidades transferias al siguiente proceso"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtunidadestransferidas" runat="server" AutoPostBack="True" 
            ontextchanged="txtunidadestransferidas_TextChanged" Width="88px">0</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblunidadesproceso0" runat="server" 
            Font-Bold="True" Text="Unidades retenidas"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtretenidas" runat="server" AutoPostBack="True" Width="88px">0</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="lblunidadesproceso" runat="server" Font-Bold="True" 
            Text="Unidades en proceso"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtunidadesproceso" runat="server" AutoPostBack="True" 
            Width="88px">0</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="lblpmateriaprima" runat="server" Font-Bold="True" 
            Text="% Materia prima "></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtpmprima" runat="server" AutoPostBack="True" Width="88px">0</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="blpamnoobra" runat="server" Font-Bold="True" 
            Text="% Mano de obra"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtpmanoobra" runat="server" AutoPostBack="True" Width="88px">0</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="lblpcif" runat="server" Font-Bold="True" 
            Text="% C. Indirecto fabricacion"></asp:Label>
                </td>
                <td class="style1">
        <asp:TextBox ID="txtpcif" runat="server" AutoPostBack="True" 
            ontextchanged="txtpcif_TextChanged" Width="88px">0</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    <asp:Button ID="btncalcular" runat="server" onclick="btncalcular_Click" 
            Text="Calcular" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table 
            style="width: 100%; border-spacing: 0px;">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style5">
        <asp:Label ID="lblvaloresequivalentes" runat="server" Font-Bold="True" 
            Text="Valores Equivalentes"></asp:Label>
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="border: thin solid #000000">
                    <asp:Label ID="lblconcepto" runat="server" 
            Font-Bold="True" Text="Concepto"></asp:Label>
                </td>
                <td class="style5" style="border: thin solid #000000">
        <asp:Label ID="lblmateriales" runat="server" Font-Bold="True" Text="Materiales"></asp:Label>
                </td>
                <td class="style2" style="border: thin solid #000000">
        <asp:Label ID="lblmanoobrave" runat="server" Font-Bold="True" 
            Text="Mano de obra"></asp:Label>
                </td>
                <td style="border: thin solid #000000">
        <asp:Label ID="lblcifve" runat="server" Font-Bold="True" 
            Text="C. Indirecto fabricacion"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin solid #000000">
                    <asp:Label ID="lblterminadast" runat="server" 
            Font-Bold="True" Text="Terminadas Totales"></asp:Label>
                </td>
                <td class="style5" style="border: thin solid #000000">
        <asp:Label ID="lblmtT" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="style2" style="border: thin solid #000000">
        <asp:Label ID="lblobraTT" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td style="border: thin solid #000000">
        <asp:Label ID="lblcifTT" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin solid #000000">
        <asp:Label ID="lblterminadasr" runat="server" Font-Bold="True" 
            Text="Terminadas Retenidas"></asp:Label>
                </td>
                <td class="style5" style="border: thin solid #000000">
        <asp:Label ID="lblmtR" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="style2" style="border: thin solid #000000">
        <asp:Label ID="lblobraTR" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td style="border: thin solid #000000">
        <asp:Label ID="lblcifTR" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" style="border: thin solid #000000">
        <asp:Label ID="lblenproceso" runat="server" Font-Bold="True" Text="En Proceso"></asp:Label>
                </td>
                <td class="style6" style="border: thin solid #000000">
        <asp:Label ID="lblmProceso" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="style4" style="border: thin solid #000000">
        <asp:Label ID="lblobraProceso" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="style3" style="border: thin solid #000000">
        <asp:Label ID="lblcifProceso" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style5" style="border: thin solid #000000;">
        <asp:Label ID="lblTmateriales" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="style2" style="border: thin solid #000000;">
        <asp:Label ID="lblTmanoobra" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td style="border: thin solid #000000;">
        <asp:Label ID="lblTcif" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table 
            style="width: 100%; border-spacing: 0px;">
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style5">
        <asp:Label ID="lbliformecostos" runat="server" Font-Bold="True">Informe de Costos</asp:Label>
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="border: thin solid #000000" class="style9">
                    &nbsp;</td>
                <td class="style5" style="border: thin solid #000000">
        <asp:Label ID="lblCtotal0" runat="server" Font-Bold="True">Costo Total</asp:Label>
                </td>
                <td class="style2" style="border: thin solid #000000">
        <asp:Label ID="lblCunitario" runat="server" Font-Bold="True">Costo Unitario</asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin solid #000000" class="style9">
                    <asp:Label ID="lblmprimaIc" runat="server" Font-Bold="True" 
            Text="Materia prima "></asp:Label>
                </td>
                <td class="style5" style="border: thin solid #000000">
        <asp:Label ID="lblCtMp" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="style2" style="border: thin solid #000000">
        <asp:Label ID="lblCUMp" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin solid #000000" class="style9">
        <asp:Label ID="lblmobraIc" runat="server" Font-Bold="True" Text="Mano de obra"></asp:Label>
                </td>
                <td class="style5" style="border: thin solid #000000">
        <asp:Label ID="lblCtMo" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="style2" style="border: thin solid #000000">
        <asp:Label ID="lblCUMo" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style10" style="border: thin solid #000000">
        <asp:Label ID="lblcifIc" runat="server" Font-Bold="True" 
            Text="C. Indirecto fabricacion"></asp:Label>
                </td>
                <td class="style6" style="border: thin solid #000000">
        <asp:Label ID="lblCtCi" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="style4" style="border: thin solid #000000">
        <asp:Label ID="lblCUIc" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style5" style="border: thin solid #000000;">
        <asp:Label ID="lblTctotal" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="style2" style="border: thin solid #000000;">
        <asp:Label ID="lblTcunitario" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 100%; border-spacing: 0px;">
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style5">
        <asp:Label ID="lbliformecostos0" runat="server" Font-Bold="True">En Proceso</asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin solid #000000" class="style7">
        <asp:Label ID="lblPmp" runat="server" Font-Bold="True" Text="Materia prima "></asp:Label>
                </td>
                <td class="style5" style="border: thin solid #000000">
        <asp:Label ID="lblPmpcantidad" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin solid #000000" class="style7">
                    <asp:Label ID="lblPmobra" runat="server" Font-Bold="True" Text="Mano de obra"></asp:Label>
                </td>
                <td class="style5" style="border: thin solid #000000">
        <asp:Label ID="lblPmobracantidad" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin solid #000000" class="style7">
        <asp:Label ID="lblProcesocif" runat="server" Font-Bold="True" 
            Text="C. Indirecto fabricacion"></asp:Label>
                </td>
                <td class="style5" style="border: thin solid #000000">
        <asp:Label ID="lblPcantidd" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style5" style="border: thin solid #000000;">
        <asp:Label ID="lblTproceso" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <table style="width: 100%; border-spacing: 0px;">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style5">
        <asp:Label ID="lbliformecostos1" runat="server" Font-Bold="True">Retenidos</asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000" class="style8">
        <asp:Label ID="lblRmp" runat="server" Font-Bold="True" Text="Materia prima "></asp:Label>
            </td>
            <td class="style5" style="border: thin solid #000000">
        <asp:Label ID="lblRmpcantidad" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000" class="style8">
        <asp:Label ID="lblRmobra" runat="server" Font-Bold="True" Text="Mano de obra"></asp:Label>
            </td>
            <td class="style5" style="border: thin solid #000000">
        <asp:Label ID="lblRmobracantidad" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000" class="style8">
                <asp:Label ID="lblRrocesocif" runat="server" Font-Bold="True" 
            Text="C. Indirecto fabricacion"></asp:Label>
            </td>
            <td class="style5" style="border: thin solid #000000">
        <asp:Label ID="lblRcantidd" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style5" style="border: thin solid #000000;">
        <asp:Label ID="lblTretenido" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" Height="51px" onclick="Button1_Click" 
            Text="Siguiente proceso" />
            </td>
        </tr>
</table>
    <p>
        -W. Gustavo Cevallos
    </p>
    <p>
        -Stefano Llanos</p>
<p>
        -Mario Asansa
    </p>
<p>
        -Nadia Terranova</p>
</asp:Content>
