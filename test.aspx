<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="GymManagementSystem.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
    <div class="col-md-8">
        <asp:Repeater ID="rptRiddles" runat="server" OnItemCommand="rptRiddles_ItemCommand">
            <ItemTemplate>
                <strong class="orange_dk hidden-print">Riddle:</strong> <%# Eval("Question") %>

                <div class="form-group">
                    <label>Answer:</label>
                    <asp:TextBox CssClass="form-control" ID="txtAnswer" runat="server" placeholder="Answer" ></asp:TextBox>
                </div>

                <button type="button" class="btn btn-primary" data-toggle="collapse" 
                        data-target='<%# string.Format("#collapse{0}_{1}", Eval("Category"), Container.ItemIndex) %>'
                        aria-expanded="false" aria-controls='<%# string.Format("collapse{0}_{1}", Eval("Category"), Container.ItemIndex) %>'>
                    Show/Hide Answer
                </button>

                <div class="collapse mar_top_15" id='<%# string.Format("collapse{0}_{1}", Eval("Category"), Container.ItemIndex) %>'>
                    <strong class="dark_purple">Answer</strong>: <%# Eval("Answer") %>
                </div>
                <div class="spacer_30"></div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
</asp:Content>
