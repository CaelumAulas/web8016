<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ attribute name="codigo" required="true" %>

<input type="text" name="${codigo}" id="${codigo}"><br>
		
<script>
	$("#${codigo}").datepicker({dateFormat: 'dd/mm/yy'});
</script>
