<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewLeaveForm.aspx.cs" Inherits="LeaveManagement.ViewLeaveForm" %>

<!DOCTYPE html>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <title>STUDENT LEAVE MANAGEMENT - VIEW LEAVE FORM</title>
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
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Logout.aspx">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
 <div id="mainbox">

  <form runat="server" class="row g-3">
              <h3 style="margin:10px 150px;font-size:40px;">Leave Form</h3>

  <div class="col-12">
    <label for="inputEmail4" class="form-label" style="font-weight:bold;">Leave ID : </label>
    <asp:Label ID="Label1" runat="server" Text="Label" class="form-label"></asp:Label>
  </div>
       
  <div class="col-12">
    <label for="inputPassword4" class="form-label" style="font-weight:bold;">Student Name : </label>
      <asp:Label ID="Label2" runat="server" Text="Label" class="form-label"></asp:Label>
    </div>

  <div class="col-12">
    <label for="inputAddress" class="form-label" style="font-weight:bold;">Roll Number : </label>
      <asp:Label ID="Label3" runat="server" Text="Label" class="form-label"></asp:Label>
    </div>

  <div class="col-12">
    <label for="inputAddress2" class="form-label" style="font-weight:bold;">Email ID : </label>
      <asp:Label ID="Label4" runat="server" Text="Label" class="form-label"></asp:Label>
  </div>
              
  <div class="col-md-6">
    <label for="inputCity" class="form-label" style="font-weight:bold;">Course : </label>
      <asp:Label ID="Label5" runat="server" Text="Label" class="form-label"></asp:Label>
   </div>

   <div class="col-md-5">
      <label for="inputCity" class="form-label" style="font-weight:bold;">Division : </label>
       <asp:Label ID="Label6" runat="server" Text="Label" class="form-label"></asp:Label>
    </div>

   <div class="col-12">
      <label for="inputCity" class="form-label" style="font-weight:bold;">Trimester : </label>
       <asp:Label ID="Label7" runat="server" Text="Label" class="form-label"></asp:Label>
    </div>

    <div class="col-12">
      <label for="inputCity" class="form-label" style="font-weight:bold;">Date of Submission : </label>
        <asp:Label ID="Label8" runat="server" Text="Label" class="form-label"></asp:Label>
    </div>
      
      <div class="col-12">
      <label for="inputCity" class="form-label" style="font-weight:bold;">Duration of Leave - </label>
    </div>
      
    <div class="col-md-6">
      <label for="inputCity" class="form-label" style="font-weight:bold;">From : </label>
        <asp:Label ID="Label9" runat="server" Text="Label" class="form-label"></asp:Label>
    </div>      

    <div class="col-md-6">
      <label for="inputCity" class="form-label" style="font-weight:bold;">To : </label>
        <asp:Label ID="Label10" runat="server" Text="Label" class="form-label"></asp:Label>
    </div>

    <div class="col-md-6">
      <label for="inputCity" class="form-label" style="font-weight:bold;">Total No. of Days of Leave : </label>
        <asp:Label ID="Label11" runat="server" Text="Label" class="form-label"></asp:Label>
    </div>

    <div class="col-md-6">
      <label for="inputCity" class="form-label" style="font-weight:bold;">Leave Type : </label>
        <asp:Label ID="Label12" runat="server" Text="Label" class="form-label"></asp:Label>
    </div>

    <div class="col-12">
      <label for="inputCity" class="form-label" style="font-weight:bold;">Reason for Leave : </label>
      <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" ReadOnly="True" class="form-control"></asp:TextBox>
    </div>

  <div class="col-12">
      <label for="inputCity" class="form-label" style="font-weight:bold;">Select to Accept/Reject Leave : </label>&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="RadioButton1" runat="server" Text="Accept" GroupName="LeaveResult" Checked="True"/>&nbsp;&nbsp; 
    <asp:RadioButton ID="RadioButton2" runat="server" Text="Reject" GroupName="LeaveResult" />
  </div>

      <div class="col-12">
    <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" class="btn btn-primary" /><br/><br/><a href="ManageLeave.aspx" runat="server" style="font-weight:bold;">Go Back</a>
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
