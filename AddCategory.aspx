<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="login-block">
        <div class="container-fluid">

            <div class="row">
                <div class="col-sm-12">
                    <div class="md-float-material form-material">
                        <div class="form-group form-primary">
                            <asp:DropDownList ID="ddlManufacturer" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Manufacturer" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Classmate" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Bhawya" Value=""></asp:ListItem>
                                <asp:ListItem Text="Discovery" Value=""></asp:ListItem>
                                <asp:ListItem Text="Camlin" Value=""></asp:ListItem>
                                <asp:ListItem Text="Flair" Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <span class="form-bar"></span>
                            <%--<asp:Label ID="lblmanufacturer" runat="server" CssClass="float-label" Text="Manufacturer's Name"></asp:Label>--%>
                        </div>
                    </div>
                </div>                
            </div>

             <div class="row">
                <div class="col-sm-12">
                    <div class="md-float-material form-material">
                        <div class="form-group form-primary">
                            <asp:TextBox ID="txtCategory" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="form-bar"></span>
                            <asp:Label ID="lblCategory" runat="server" CssClass="float-label" Text="Category"></asp:Label>
                        </div>
                    </div>
                </div>                
            </div>

             <div class="row">
                <div class="col-sm-12">
                    <div class="md-float-material form-material">
                        <div class="form-group form-primary">
                            <asp:Button ID="btnSubmit" runat="server" Font-Bold="true" ForeColor="White" CssClass="btn btn-primary text-center" Width="15%" style="margin-left:500px;"  Text="Submit" />
                        </div>
                    </div>
                </div>                
            </div>






        </div>

    </section>
</asp:Content>

