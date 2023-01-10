<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddManufacturer.aspx.cs" Inherits="AddManufacturer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="login-block">
        <div class="container-fluid">

            <div class="row">
                <div class="col-sm-12">
                    <div class="md-float-material form-material">
                        <div class="form-group form-primary">
                            <asp:TextBox ID="txtManufacturer" AutoComplete="off" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="form-bar"></span>
                            <asp:Label ID="lblManufacturer" runat="server" CssClass="float-label" Text="Manufacturer's Name"></asp:Label>
                            <asp:RequiredFieldValidator ID="rfvManufacturer" ControlToValidate="txtManufacturer" runat="server" ErrorMessage="Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>                
            </div>

             <div class="row">
                <div class="col-sm-12">
                    <div class="md-float-material form-material">
                        <div class="form-group form-primary">
                            <asp:Button ID="btnSubmit" runat="server" Font-Bold="true" ForeColor="White" CssClass="btn btn-primary text-center" OnClick="btnSubmit_Click" Width="15%" style="margin-left:500px;"  Text="Submit" />
                        </div>
                    </div>
                </div>                
            </div>






        </div>

    </section>
</asp:Content>

