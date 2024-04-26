<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="homepage1.aspx.cs" Inherits="GymManagementSystem.homepage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid head_container hidden-print below_navbar menu_category">
        <!-- Introduction Section -->
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-6">
                    <h1 class="headline">RIDDLES WITH ANSWERS</h1>
                    <p class="lead page_description">The Original Riddles Website - Thousands of riddles (with answers) for kids and adults to tell, share, and rate. Plus a riddle of the day, every day!</p>
                </div>
                <div class="col-sm-6 col-md-6 featured_image">
                    <img src="images/riddle-shine-young-man-thinking-about-work-issues.png" />
                </div>
            </div>
       
        </div>
    </div>

    <!-- End Table of Contents Section -->
    <div class="container">
             <div class="row">
            <div class="col-md-3 mr-auto">
                <div class="card">
                    <div class="card-body">
                        <h4>Table of Contents</h4>
                        <ul>
                            <li><a href="#riddleOfDay">Riddle of the Day</a></li>
                             <li><a href="#riddleforChild">Riddle for Children</a></li>
                             <li><a href="#riddleforAdult">Riddle for Adults</a></li>
                             <li><a href="#riddleforBrain">Brain Teaser</a></li>
                             <li><a href="#riddleEasy">Easy Riddle</a></li>
                             <li><a href="#riddleMath">Math Ridldle</a></li>
                             <li><a href="#riddleNew">New Riddle</a></li>
                        </ul>
                    </div>
                </div>
            </div>
</div>
            <!-- Riddle of the Day Section -->
              <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 id="riddleOfDay">Riddle of the day</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8">
                                <strong class="orange_dk hidden-print">Riddle:</strong> Why are Christmas trees bad at knitting?

                                <div class="form-group">
                                    <label>Answer:</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Answer"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                                </div>
                                 <asp:Label ID="Lblmessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                                <asp:Label ID="lblmessage2" runat="server" Text="" ForeColor="Red"></asp:Label>

                               <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#collapse3263_1" aria-expanded="false" aria-controls="collapse3263_1">
                                  Show/Hide Answer</button>

                                    <div class="collapse mar_top_15" id="collapse3263_1">
                                     <strong class="dark_purple">Answer</strong>: Because they always drop their needles.
                                        </div>
                                      <div class="spacer_30"></div>
                            </div>
                        </div>
                    </div>
                </div>
                  </div>
               <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 id="riddleforChild">Are You Smarter Than A Kindergartner?</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8">
                                <strong class="orange_dk hidden-print">Riddle:</strong> What belongs to you, but other people use it more than you?

                                <div class="form-group">
                                    <label>Answer:</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Answer"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
                                </div>
                                <asp:Label ID="LbMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                                <asp:Label ID="Lblmassge" runat="server" Text="" ForeColor="Red"></asp:Label>

                                <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#collapse3263_2" aria-expanded="false" aria-controls="collapse3263_1">
                               Show/Hide Answer</button>

                                        <div class="collapse mar_top_15" id="collapse3263_2">
                                        <strong class="dark_purple">Answer</strong>: Your name
                                         </div>
                                    <div class="spacer_30"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
               <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 id="riddleforAdult">Love Riddle</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8">
                                <strong class="orange_dk hidden-print">Riddle:</strong>A doctor and a bus driver are both in love with the same woman, an attractive girl named Sarah. The bus driver had to go on a long bus trip that would last a week. Before he left, he gave Sarah seven apples. Why?

                                <div class="form-group">
                                    <label>Answer:</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Answer"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" />
                                </div>
                                 <asp:Label ID="Labelmess" runat="server" Text="" ForeColor="Green"></asp:Label>
                                <asp:Label ID="lablmessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                                 <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#collapse3263_3" aria-expanded="false" aria-controls="collapse3263_3">
                                     Show/Hide Answer</button>
                                 <div class="mar_top_15 collapse" id="collapse3263_3" aria-expanded="false" style="height: 0px;">
                                 <strong class="dark_purple">Answer</strong>: An apple a day keeps the doctor away!
                                        </div>
                                    <div class="spacer_30"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 id="riddleforBrain">Brain Teaser</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8">
                                <strong class="orange_dk hidden-print">Riddle:</strong>You live in a one story house made entirely of redwood. What color would the stairs be?

                                <div class="form-group">
                                    <label>Answer:</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Answer"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button4" runat="server" Text="Submit" OnClick="Button4_Click" />
                                </div>
                                 <asp:Label ID="Label1" runat="server" Text="" ForeColor="Green"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
                                 <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#collapse3263_3" aria-expanded="false" aria-controls="collapse3263_3">
                                     Show/Hide Answer</button>
                                 <div class="mar_top_15 collapse" id="collapse3263_3" aria-expanded="false" style="height: 0px;">
                                 <strong class="dark_purple">Answer</strong>:  What stairs? You live in a one-story house. (No stairs)
                                        </div>
                                    <div class="spacer_30"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 id="riddleEasy">Easy Riddle</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8">
                                <strong class="orange_dk hidden-print">Riddle:</strong> I am not alive, but I grow; I don't have lungs, but I need air; I don't have a mouth, but water kills me. What am I?

                                <div class="form-group">
                                    <label>Answer:</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Answer"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button5" runat="server" Text="Submit" OnClick="Button5_Click" />
                                </div>
                                 <asp:Label ID="Label3" runat="server" Text="" ForeColor="Green"></asp:Label>
                                <asp:Label ID="Label4" runat="server" Text="" ForeColor="Red"></asp:Label>
                                 <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#collapse3263_3" aria-expanded="false" aria-controls="collapse3263_3">
                                     Show/Hide Answer</button>
                                 <div class="mar_top_15 collapse" id="collapse3263_3" aria-expanded="false" style="height: 0px;">
                                 <strong class="dark_purple">Answer</strong>: Fire
                                        </div>
                                    <div class="spacer_30"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 id="riddleMath">Math Riddle</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8">
                                <strong class="orange_dk hidden-print">Riddle:</strong>How do you make the number 7 even without addition, subtraction, multiplication, or division?

                                <div class="form-group">
                                    <label>Answer:</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Answer"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button6" runat="server" Text="Submit" OnClick="Button6_Click" />
                                </div>
                                 <asp:Label ID="Label5" runat="server" Text="" ForeColor="Green"></asp:Label>
                                <asp:Label ID="Label6" runat="server" Text="" ForeColor="Red"></asp:Label>
                                 <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#collapse3263_3" aria-expanded="false" aria-controls="collapse3263_3">
                                     Show/Hide Answer</button>
                                 <div class="mar_top_15 collapse" id="collapse3263_3" aria-expanded="false" style="height: 0px;">
                                 <strong class="dark_purple">Answer</strong>: Drop the S
                                        </div>
                                    <div class="spacer_30"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 id="riddleNew">New Riddle</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8">
                                <strong class="orange_dk hidden-print">Riddle:</strong>I leave you with a thought that fades out of sight. Product of the mind, undone by first light. Creator of hope, hell and heaven above. Made by wonder, fear, and perhaps true love. What am I?

                                <div class="form-group">
                                    <label>Answer:</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Answer"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button7" runat="server" Text="Submit" OnClick="Button7_Click" />
                                </div>
                                 <asp:Label ID="Label7" runat="server" Text="" ForeColor="Green"></asp:Label>
                                <asp:Label ID="Label8" runat="server" Text="" ForeColor="Red"></asp:Label>
                                 <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#collapse3263_3" aria-expanded="false" aria-controls="collapse3263_3">
                                     Show/Hide Answer</button>
                                 <div class="mar_top_15 collapse" id="collapse3263_3" aria-expanded="false" style="height: 0px;">
                                 <strong class="dark_purple">Answer</strong>: Dreams
                                        </div>
                                    <div class="spacer_30"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
               <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                 <asp:Repeater ID="rptRiddles" runat="server" OnItemCommand="rptRiddles_ItemCommand">
            <ItemTemplate>
                <strong class="orange_dk hidden-print">Riddle:</strong> <%# Eval("Question") %>

                <div class="form-group">
                    <label>Answer:</label>
                    <asp:TextBox CssClass="form-control" ID="txtAnswer" runat="server" placeholder="Answer" ></asp:TextBox>
                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Submit" />
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
                        </div>
                    </div>
                   </div>
        
    </div>
</asp:Content>
