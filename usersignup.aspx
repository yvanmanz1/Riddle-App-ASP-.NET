<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="GymManagementSystem.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI/tTQO1p0MXhN8ttOJvq3lYUAfxsq2IbXPcvDEE=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js" integrity="sha512-poe1beShxX8rTnnpLaVz3fuMgUVUIFyPcKfnwqVt4lZ6z4Z+qLy5MTtj+V5U+V0fxuSh0Jpz17zjBZpUBRQf4A==" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validation-unobtrusive/3.2.11/jquery.validate.unobtrusive.min.js" integrity="sha512-JVYk1LqVL8G5R+i4q7sZchN5MzKPQaP4LGpSn9sFpDtzdIwyp/05f4x1jWnLro0pUJjtK1CmzWg/6I4HSHISmQ==" crossorigin="anonymous"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
         <div class="col-md-5  mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4> Create Your Profile</h4>
                          
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
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="names" runat="server" placeholder="Full Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
    ControlToValidate="names"
    Display="Dynamic"
    ErrorMessage="Please enter your full name." ForeColor="Red" />
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="dob" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
    ControlToValidate="dob"
    Display="Dynamic"
    ErrorMessage="Please enter your date of birth."  ForeColor="Red" />
                             <asp:CompareValidator ID="CompareValidator2" runat="server"
            ControlToValidate="dob"
            Operator="LessThanEqual"
            Type="Date"
            ValueToCompare="2013-12-31"
            Display="Dynamic"
            ErrorMessage="You have to be at least 10 years old"
            ForeColor="Red" />
    </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="contact" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
    ControlToValidate="contact"
    Display="Dynamic"
    ErrorMessage="Please enter your contact of at least 10 number." ForeColor="Red" />
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
    ControlToValidate="email"
    Display="Dynamic"
    ErrorMessage="Please enter your email address." ForeColor="Red" />
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
    ControlToValidate="email"
    Display="Dynamic"
    ErrorMessage="Please enter a valid email address." ForeColor="Red"
    ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" />
                        </div>
                     </div>
                  </div>
               
                  <div class="row">
                     <div class="col">
                        <center>
                           &nbsp;
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     
                     <div class="col-md-6">
                        <label>New Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="v_password" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
    ControlToValidate="v_password"
    Display="Dynamic"
    ErrorMessage="Please enter a password." ForeColor="Red" />
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label> Confirm Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="ConfirmBox" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server"
    ControlToCompare="v_password"
    ControlToValidate="ConfirmBox"
    Display="Dynamic"
    ErrorMessage="Passwords do not match."  ForeColor="Red" />
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Create" OnClick="Button1_Click" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
       

</asp:Content>
