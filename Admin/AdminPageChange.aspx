<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPageChange.aspx.cs" Inherits="Admin_AdminPageChange" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
    <link href="../css/app.css" rel="stylesheet" />
    <link href="../css/site.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 117px;
        }
        .auto-style2 {
            height: 296px;
        }
    </style>
</head>
<body style="width: 470px">
    <form id="form1" runat="server">
        <div class="grid-container">
            <div class="grid-x grid-padding-x">
                <table>
                    <tr>
                        <td class="auto-style1">Title:</td>
                        <td>
                            <asp:TextBox ID="txtTitle" runat="server" Width="205px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Image Upload:</td>
                        <td>
                            <asp:FileUpload ID="ContentIMG"  runat="server" />
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style1">Description:</td>
                        <td>
                              <textarea id="txtDesc" runat="server" rows="5" class="auto-style2" cols="20">

                            </textarea></td>

                    </tr>
                    <tr>
                        <td colspan="2" class="text-center align-center">
                            <asp:Button ID="btnsave" runat="server" CssClass="button medium-expanded" Text="Update" Height="77px" Width="138px" OnClick="btnsave_Click" />
                          </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
