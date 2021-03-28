<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LeaveManagement.Register" %>

<!DOCTYPE html>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <title>STUDENT LEAVE MANAGEMENT - REGISTER</title>
      <style>

          #mainbox 
          {
                width:600px;
                margin:50px 400px;
                padding:50px;
                background-color:rgba(255,255,255,0.8);
          }

          body 
          {
              background-image:url("Images/register.jpg");
              background-repeat:no-repeat;
              background-size:cover;
          }

      </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="">Student Leave Management</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </div>
</nav>
 <div id="mainbox">

  <form runat="server" class="row g-3">
              <h3 style="margin:10px 95px;font-size:40px;">Registration Form</h3>

  <div class="col-md-6">
    <label for="inputEmail4" class="form-label" style="font-weight:bold;">Name</label>
    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your Name." ForeColor="#CC0000" Font-Bold="False"></asp:RequiredFieldValidator>
  </div>

  <div class="col-md-6">
    <label for="inputPassword4" class="form-label" style="font-weight:bold;">Roll No.</label>
    <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Roll No. cannot be empty." ForeColor="#CC0000" Font-Bold="False"></asp:RequiredFieldValidator>
  </div>

  <div class="col-12">
    <label for="inputAddress" class="form-label" style="font-weight:bold;">Course</label>
    <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Course Name cannot be empty." ForeColor="#CC0000" Font-Bold="False"></asp:RequiredFieldValidator>
  </div>

  <div class="col-12">
    <label for="inputAddress2" class="form-label" style="font-weight:bold;">Email</label>
    <asp:TextBox ID="TextBox4" runat="server" class="form-control" TextMode="Email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email field cannot be empty." ForeColor="#CC0000" Font-Bold="False" /><br/>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid email id." ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="False"></asp:RegularExpressionValidator>
  </div>
              
  <div class="col-md-6">
    <label for="inputCity" class="form-label" style="font-weight:bold;">Password</label>
   <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Password cannot be empty." ForeColor="#CC0000" Font-Bold="False"></asp:RequiredFieldValidator>  
  </div>

   <div class="col-md-6">
      <label for="inputCity" class="form-label" style="font-weight:bold;">Confirm Password</label>
    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox5" ErrorMessage="Password & Confirm Password do no match." ForeColor="#CC0000" Font-Bold="False"></asp:CompareValidator>        
  </div>

  <div class="col-12">
    <asp:Button ID="Button1" runat="server" Text="Sign up" OnClick="Button1_Click" class="btn btn-primary" />&nbsp;&nbsp;&nbsp;&nbsp;
     <label for="inputZip" class="form-label" style="font-weight:bold;">Already have an account?</label>&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx" style="font-weight:bold;">Login</asp:HyperLink>
  </div>


</form>

 </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    -->
  </body>
</html>
