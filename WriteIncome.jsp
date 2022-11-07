<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수입,지출 입력페이지</title>
<script type="text/javascript">
const income = document.getElementById("income_write");
const spend = document.getElementById("spend_write");
	function spend_click() {
		income.innerHTML = '<div id="spend_write">
		<p>
		소비 분류 : <select name="pattern">
			<option value="food">식비</option>
			<option value="transport">교통비</option>
			<option value="hobby">여가 활동</option>
			<option value="fassion">패션/미용</option>
			<option value="etc">기타</option>
		</select>
	</p>
</div>'
	}
	
	function write_click() {
		spend.innerHTML = '<div id="income_write">
		<p>
		수입 분류 : <select name="income_pattern">
			<option value="salary">월급</option>
			<option value="allowance">용돈</option>
			<option value="etc">기타</option>
		</select>
	</p>
</div>'
	}
</script>
</head>
<body>
	<link rel="stylesheet" href="WriteIncome.css">
	<div id="writeamount">
		<input type=button onClick="income_click()" value="수입"> <input
			type=button onclick="spend_click()" value="지출">
		<form name="income" method="post">
			<p>
				날짜 입력 : <input type="date" name="date" id="date">
			<div id="income_write">
				<p>
					수입 분류 : <select name="income_pattern">
						<option value="salary">월급</option>
						<option value="allowance">용돈</option>
						<option value="etc">기타</option>
					</select>
				</p>
			</div>
			<p>
				금액 : <input type="text" name="amount" id="amount">
			<p>
				<textarea name="detail" rows="3" cols="30"
					placeholder="세부 사항을 입력하세요."></textarea>
			<div id="save">
				<input type="submit" value="저장">
			</div>
		</form>
	</div>
</body>
</html>