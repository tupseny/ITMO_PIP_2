<%--
  Created by IntelliJ IDEA.
  User: Martin
  Date: 05.11.2018
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    //init vars
    int[] xSelect = {-3, -2, -1, 0, 1, 2, 3, 4, 5};
    int[] yTextBorders = {-3, 5};
    float[] rRadio = {1, 1.5f, 2, 2.5f, 3};
%>
<html>
<head>
    <title>Area select</title>
    <script src="js/area.js" type="application/javascript"></script>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<img src="res/areas.png" alt="loading..." onclick="imageClicked(event)">
<div class="form">
    <form onsubmit="return checkYField();" method="post">
        <div class="x-buttons">
            <span class="field-title">X:</span>
            <%for (int x : xSelect) { %>
            <button class="x-field-button" type="button" name="x_val" value="<%=x%>" onclick="setXValue(event)">
                <%=x%>
            </button>
            <%}%>
            <input id="x-value" type="text" hidden name="x_value">
        </div>

        <div class="y-text">
            <span class="field-title">Y:</span>
            <input id="y_field" list="y_list" name="y_val" required type="text" pattern="^-?\d+([.,]?\d+)?$" placeholder="<%=yTextBorders[0]%> ... <%=yTextBorders[1]%>">
            <datalist id="y_list">
                <%for (int y = yTextBorders[0]; y <= yTextBorders[1]; y++) {%>
                <option><%=y%></option>
                <%}%>
            </datalist>
        </div>

        <div class="r-radio">
            <span class="field-title">R:</span>
            <%for (float r : rRadio) {%>
            <span><%=r%></span>
            <input class="r_field" type="radio" name="r_val" value="<%=r%>">
            <%}%>
        </div>

        <input type="submit" value="Send">
    </form>
</div>
</body>
</html>
