<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*,emp.dto.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="euc-kr">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
</head>
<body>
	<div class="container">
	<%ArrayList<EmpDTO> deptlist =
			(ArrayList<EmpDTO>) request.getAttribute("emplist"); 
	 	 int size = deptlist.size();
	  %>
		<table class="table">
			<thead>
				<tr>
					<th>����ڵ�</th>
					<th>�����</th>
					<th>�Ի���</th>
					<th>���</th>
					<th>�ּ�</th>
					<th>�μ��ڵ�</th>
					<th>����</th>
				</tr>
			</thead>
			<tbody>
			<%for(int i=0;i<size;i++){ 
				EmpDTO emp =  deptlist.get(i);%>
				<tr>
					<td><a
					 href="/firstPro/read.do?id=<%= emp.getId()%>"><%= emp.getId() %></a></td>
					<td><%= emp.getName() %></td>
					<td><%= emp.getHiredate() %></td>
					<td><%= emp.getGrade() %></td>
					<td><%= emp.getAddr() %></td>
					<td><%= emp.getDeptNo()%></td>
					<td><a 
					href="/firstPro/delete.do?id=<%= emp.getId()%>">����</a></td>
				</tr>
			<%}%>
			</tbody>
		</table>
	</div>

</body>
</html>
