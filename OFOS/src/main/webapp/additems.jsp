<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>

  <title>add-items</title>
  <style>
    .mainclass{
      width: 100%;
      display: flex;
      justify-content: center;
      position: relative;
      height: 100vh;
      align-items: center;
    }

    .container {
      width: 400px;
      padding: 40px;
      background: rgba(255, 255, 255, 0.9);
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
      opacity: 0;
    
     top: 100px;
      transform: translateY(-20px);
      animation: fadeInUp 0.5s forwards;
    }

    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    .form-table {
      width: 100%;
    }

    .form-table td {
      padding: 10px;
    }

    .form-table input[type="text"] {
      width: calc(100% - 20px);
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .form-table input[type="submit"] {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .form-table input[type="submit"]:hover {
      background-color: #45a049;
    }

    .view-items-button {
      padding: 10px 20px;
      background-color: #3498db;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 10px;
      width: 100%;
      box-sizing: border-box;
      opacity: 0;
      transform: translateY(20px);
      animation: fadeInUpButton 1s forwards 0.5s;
      transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
    }

    @keyframes fadeInUpButton {
      from {
        opacity: 0;
        transform: translateY(20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    .view-items-button:hover {
      background-color: #2980b9;
      transform: scale(1.05);
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    }
  </style>
</head>
<body>
<%@ include file="restnavbar.jsp" %>
  <div class="mainclass">
  <div class="container">
    <form method="post" action="demo" enctype="multipart/form-data">
      <table class="form-table">
        <tr>
          <td><label for="name">Name</label></td>
          <td><input type="text" id="name" name="name" required="required"/></td>
        </tr>
        <tr>
          <td><label for="img"> choose file</label></td>
          <td><input type="file" name="image" id="img" required="required"></td>
        </tr>
        <tr>
       <td><label>Type</label></td>
        <td>
        <input type="radio" id="veg" name="type" value="veg" required="required">
        <label for="veg">Veg</label>
        <input type="radio" id="nonveg" name="type" value="nonveg" required="required">
        <label for="nonveg">Non-Veg</label>
        </td>
        </tr>
        <tr>
          <td><label for="amt">Amount</label></td>
          <td><input type="text" id="amt" name="amt" required="required"/></td>
        </tr>
        <tr align="center">
          <td colspan="2"><input type="submit" value="Register" class="button"></td>
        </tr>
      </table>
    </form>
    <a href="viewitems"><button class="view-items-button">View Items</button></a>
  </div>
</div>
</body>
</html>