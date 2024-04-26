<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="adminprofile2.aspx.cs" Inherits="GymManagementSystem.adminprofile2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Riddles</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                      <img width="60px"src="images/riddle%20think-50.png" />
                                       
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                             <div class="col-md-6">
                        <label>Category</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="names" runat="server" placeholder="Category"></asp:TextBox>
                        </div>
                     </div>
                            <div class="col-md-6">
                        <label>Question</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="Question" ></asp:TextBox>
                        </div>
                     </div>
                            </div>
                        <div class="row">
                            

                            <div class="col-md-6">
                        <label>Answer</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="v_password" runat="server" placeholder="Answer"  ></asp:TextBox>
                        </div>
                     </div>
                        </div>

                         
      <div class="row">
          
    <div class="col-4">
        <asp:Button ID="Create" CssClass="btn btn-lg btn-block btn-danger" runat="server" Text="Create" OnClick="Create_Click" />
    </div>
    <div class="col-4">
        <asp:Button ID="update" CssClass="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="update_Click" />
    </div>
    <div class="col-4">
        <asp:Button ID="Delete" CssClass="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" Width="83px" OnClick="Delete_Click" />
    </div>
             
</div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Riddle ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="id" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>



                    </div>
                </div>

                <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Riddles List</h4>
                                    </center>
                            </div>
                        </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>


            </div>

        </div>
    </div>
</asp:Content>
