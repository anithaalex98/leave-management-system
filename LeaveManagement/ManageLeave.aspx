<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageLeave.aspx.cs" Inherits="LeaveManagement.ManageLeave" %>

<!DOCTYPE html>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <title>STUDENT LEAVE MANAGEMENT - MANAGE LEAVE FORM</title>
      <style>

         

          body 
          {
              background-image:url("Images/manageleave.jpg");
              background-repeat:no-repeat;
              background-size:cover;
          }

          .Grid {
              background-color: #fff; 
              margin: 5px 0 10px 20px; 
              border: solid 1px #525252; 
              border-collapse:collapse; 
              font-family:Calibri; color: #474747;

          }

        .Grid td {

              padding: 2px;
              font-size:18px;
              border: solid 1px #c1c1c1;

        }

        .Grid th  {

              padding : 4px 2px;

              color: #fff;

              background: #363670 repeat-x top;

              border-left: solid 1px #525252;

              font-size: 20px; }

        .Grid .alt {

              background: #fcfcfc url(Images/grid-alt.png) repeat-x top; }

        .Grid .pgr {background: #363670 url(Images/grid-pgr.png) repeat-x top; }

        .Grid .pgr table { margin: 3px 0; }

        .Grid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }  

        .Grid .pgr a { color: Gray; text-decoration: none; }

        .Grid .pgr a:hover { color: #000; text-decoration: none; }

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
 <form id="form1" runat="server">
        <div id="mainbox">
            <h3 style="margin:10px 10px;font-size:30px;font-weight:bold;color:white;">List of Leave Forms - </h3>
            <br/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="800px"

                      AllowPaging="true" PageSize="8" 

                      CssClass="Grid"                    

                      AlternatingRowStyle-CssClass="alt"

                      PagerStyle-CssClass="pgr" DataKeyNames="LId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                <Columns>
                     <asp:BoundField DataField="name" HeaderText="Student Name" SortExpression="name" ItemStyle-HorizontalAlign="Left" ItemStyle-Width="3200px" ItemStyle-Wrap="False" HeaderStyle-Wrap="False" HeaderStyle-Width="300px" HeaderStyle-HorizontalAlign="Center"></asp:BoundField>
                     <asp:BoundField DataField="rollno" HeaderText="Roll No." SortExpression="rollno" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Wrap="False" HeaderStyle-Width="200px" ItemStyle-HorizontalAlign="Left" ItemStyle-Wrap="False" ItemStyle-Width="200px" />
                     <asp:BoundField DataField="email" HeaderText="Email ID"  SortExpression="email" HeaderStyle-Wrap="False" HeaderStyle-Width="300px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" ItemStyle-Width="300px" ItemStyle-Wrap="False"></asp:BoundField>
                     <asp:BoundField DataField="course" HeaderText="Course"  SortExpression="course" ItemStyle-HorizontalAlign="Left" HeaderStyle-Width="150px" ItemStyle-Width="150px" ItemStyle-Wrap="False" HeaderStyle-Wrap="False" HeaderStyle-VerticalAlign="NotSet" HeaderStyle-HorizontalAlign="Center" />
                     <asp:BoundField DataField="div" HeaderText="Division" SortExpression="div" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" HeaderStyle-Wrap="False" ItemStyle-Width="150px" ItemStyle-Wrap="False" />
                     <asp:BoundField DataField="trimester" HeaderText="Trimester" SortExpression="trimester" ItemStyle-Width="150px" HeaderStyle-Width="150px" ItemStyle-Wrap="False" HeaderStyle-Wrap="False" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" />
                     <asp:BoundField DataField="dateofsubmission" HeaderText="Date of Submission" SortExpression="dateofsubmission" ItemStyle-HorizontalAlign="Left" HeaderStyle-Width="200px" ItemStyle-Width="200px" ItemStyle-Wrap="False" HeaderStyle-Wrap="False" HeaderStyle-HorizontalAlign="Center" />
                     <asp:BoundField DataField="leavetype" HeaderText="Leave Type" SortExpression="leavetype" ItemStyle-Wrap="False" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Left" HeaderStyle-Width="200px" HeaderStyle-Wrap="False" HeaderStyle-HorizontalAlign="Center"></asp:BoundField>
                     <asp:BoundField DataField="numofdays" HeaderText="No. of Leave Days" SortExpression="numofdays" ItemStyle-Wrap="False" HeaderStyle-Wrap="False" HeaderStyle-Width="300px" ItemStyle-Width="300px" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" />
                     <asp:BoundField DataField="LId" HeaderText="Leave ID" InsertVisible="False" ReadOnly="True" SortExpression="LId" ItemStyle-Wrap="False" HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Left" ItemStyle-Width="150px" HeaderStyle-Width="150px" HeaderStyle-HorizontalAlign="Center" />
                    <asp:HyperLinkField runat="server" Text="View" DataNavigateUrlFields="LId" DataNavigateUrlFormatString="ViewLeaveForm.aspx?LId={0}" HeaderStyle-Wrap="False" HeaderStyle-Width="100px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="100px" ItemStyle-Wrap="False"></asp:HyperLinkField>
                </Columns>
                
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:modelConnectionString %>" SelectCommand="SELECT studentdata.name, studentdata.rollno, studentdata.email, leaveform.course, leaveform.div, leaveform.trimester, leaveform.dateofsubmission, leaveform.leavetype, leaveform.numofdays, leaveform.LId FROM leaveform INNER JOIN studentdata ON leaveform.Id = studentdata.Id WHERE (leaveform.leaveresult IS NULL)"></asp:SqlDataSource>
            
        </div>        
    </form>
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
