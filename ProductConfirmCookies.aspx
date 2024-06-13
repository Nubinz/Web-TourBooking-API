<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductConfirmCookies.aspx.cs" Inherits="WEBTOURBOOKING1.ProductConfirmCookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="ProductCookie.css" rel="stylesheet" />
    <title></title>
</head>
<body class="khung">
    <form id="form1" runat="server">
        <h2>QUẢN LÍ SẢN PHẨM</h2>
        <table>
            <tr>
                <td>Chủng loại</td>
                <td>
                    <asp:DropDownList ID="ddlChungloai" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Nhà cung cấp</td>
                <td>
                    <asp:DropDownList ID="ddlNhacc" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Tên sản phẩm</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mô tả</td>
                <td>
                    <asp:TextBox ID="txtMota" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Hình ảnh</td>
                <td>
                    <asp:FileUpload ID="fulHinhanh" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Giá mua</td>
                <td>
                    <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Tồn kho</td>
                <td>
                    <asp:TextBox ID="txtTonkho" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Thành tiền</td>
                <td>
                    <asp:Label ID="lbThanhtien" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnXacnhan" runat="server" Text="Xác nhận" OnClick="btnXacnhan_Click"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

