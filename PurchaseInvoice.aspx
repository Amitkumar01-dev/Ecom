<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PurchaseInvoice.aspx.cs" Inherits="PurchaseInvoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="login-block">
        <div class="container-fluid">

            <div class="row">
                <div class="col-sm-3">
                    <div class="md-float-material form-material">
                        <div class="form-group form-primary">
                            <asp:TextBox ID="txtInvoice" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="form-bar"></span>
                            <asp:Label ID="lblinvoice" runat="server" CssClass="float-label" Text="Invoice No"></asp:Label>
                        </div>
                    </div>

                </div>

                <div class="col-sm-3">
                    <div class="md-float-material form-material">
                        <div class="form-group form-primary">
                            <asp:TextBox ID="txtdate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                            <span class="form-bar"></span>
                            <asp:Label ID="lbldate" runat="server" CssClass="float-label"></asp:Label>
                        </div>
                    </div>
                </div>

                 <div class="col-sm-3">
                    <div class="md-float-material form-material">
                        <div class="form-group form-primary">
                            <asp:DropDownList ID="ddlSupplier" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Supplier Name" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="md-float-material form-material">
                        <div class="form-group form-primary">
                            <asp:DropDownList ID="ddlSupplierAddress" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Supplier Address" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="container-fluid">
            <div class="row">

                 <div class="col-sm-3">
                    <div class="md-float-material form-material">
                        <div class="form-group form-primary">
                            <asp:DropDownList ID="ddlSupplierMob" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Supplier Contact" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="md-float-material form-material">
                        <div class="form-group form-primary">
                            <asp:TextBox ID="txtgst" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="form-bar"></span>
                            <asp:Label ID="lblgst" runat="server" CssClass="float-label" Text="GST"></asp:Label>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="md-float-material form-material">
                        <div class="form-group form-primary">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Select Payment Mode" Value="0"></asp:ListItem>
                                <asp:ListItem Text="CASH" Value="1"></asp:ListItem>
                                <asp:ListItem Text="UPI" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Credit/Debit Card" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                            <span class="form-bar"></span>
                            <asp:Label ID="Label3" runat="server" CssClass="float-label ml-2" Text=""></asp:Label>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="container-fluid">
            <asp:Repeater ID="Repeater1" runat="server">

    <HeaderTemplate>
        <div class="row">
            <div class="col-md-1">
                <asp:Label ID="lblHSerial" runat="server" Text="S.No" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label ID="lblHManufacturer" runat="server" Text="Company" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label ID="lblHProductCategory" runat="server" Text="Item Type" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label ID="lblHProductSubCategory" runat="server" Text="Item Sub Type" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label ID="lblHAmount" runat="server" Text="Amount" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label ID="lblHPrice" runat="server" Text="Price" Font-Bold="true"></asp:Label>
            </div>
             <div class="col-md-1">
                <asp:Label ID="lblAction" runat="server" Text="Actions" Font-Bold="true"></asp:Label>
            </div>
        </div>
    </HeaderTemplate>


    <ItemTemplate>
        <div class="row">
            <div class="col-md-1">
                <asp:TextBox ID="txtSno" runat="server" CssClass="form-control" Text='<%# Container.ItemIndex+1 %>'></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-1">
                <asp:LinkButton ID="btnadd" runat="server" OnClick="btnadd_Click"><i class="fa fa-plus" style="color:green;font-size:20px;margin-top:8px"  aria-hidden="true"></i></asp:LinkButton>
            
                <asp:LinkButton ID="btndel" runat="server" OnClick="btndel_Click" style="margin-left:15px"><i class="fa fa-minus" style="color:red;font-size:20px;margin-top:8px;" aria-hidden="true"></i></asp:LinkButton>
            </div>
        </div>
        <br />
    </ItemTemplate>
</asp:Repeater>
        </div>


    </section>
</asp:Content>

