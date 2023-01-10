<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddSubCategory.aspx.cs" Inherits="AddSubCategory" %>

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
                                <asp:ListItem Text="Bhawya" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Discovery" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Camlin" Value="4"></asp:ListItem>
                                <asp:ListItem Text="Flair" Value="5"></asp:ListItem>
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
                            <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Category" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Pen" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Pencil" Value="2"></asp:ListItem>
                                <asp:ListItem Text="PenPencil" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Instrument" Value="4"></asp:ListItem>
                                <asp:ListItem Text="NoteBook" Value="5"></asp:ListItem>
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
                            <asp:TextBox ID="txtSubCategory" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="form-bar"></span>
                            <asp:Label ID="lblSubCategory" runat="server" CssClass="float-label" Text="Sub Category"></asp:Label>
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

