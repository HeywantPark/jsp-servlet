<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 2024-07-29
  Time: 오전 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>로그인 입력 파라미터 출력</h1>
    <% String userid = request.getParameter("userid");
    String password = request.getParameter("password");
    String strAge = request.getParameter("age");
        int age = -1;
        if (strAge != null && !strAge.isEmpty()) {
            try {
                age = Integer.parseInt(strAge);
            } catch (NumberFormatException e) {
                age = -1; // 나이가 유효하지 않은 경우 기본값을 설정
            }
        }

    아이디값 : <%= userid %> <br>
    비밀번호 : <%= password %> <br>
    나이 : <%= age%>
</body>
</html>
