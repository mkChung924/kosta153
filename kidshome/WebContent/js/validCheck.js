function validCheck() {

		var f = document.input;

		id = f.id.value;
		pass = f.pass.value;
		pass2 = f.pass2.value;
		name = f.name.value;
		tel1 = f.tel1.value;
		tel2 = f.tel2.value;
		tel3 = f.tel3.value;
		year = f.year.value;
		month = f.month.value;
		day = f.day.value;
		addr = f.addr.value;
		email = f.email.value;
		job = f.job.value;
		var emailExp = /^[a-zA-Z0-9]{6,15}@[a-zA-Z]+\.[a-zA-Z]+$/g;

		if (form.id.value == "" || form.pass.value == "" || form.name.value == "" ||
			form.tel1.value == "" || form.tel2.value == "" || form.tel3.value == ""||
			form.email.value == "" || form.job.value == "==선택=="){
			alert('필수 입력칸이 비어있습니다. 확인해주세요');
			
		}else if(
				form.id.value.indexOf(" ")> -1 || form.id.value.indexOf("\t")>=0 ||form.id.value.indexOf("\n")>-1||
				form.pass.value.indexOf(" ")> -1 || form.pass.value.indexOf("\t")>=0 ||form.pass.value.indexOf("\n")>-1||
				form.name.value.indexOf(" ")> -1 || form.name.value.indexOf("\t")>=0 ||form.name.value.indexOf("\n")>-1||
				form.tel1.value.indexOf(" ")> -1 || form.tel1.value.indexOf("\t")>=0 ||form.tel1.value.indexOf("\n")>-1||
				form.tel2.value.indexOf(" ")> -1 || form.tel2.value.indexOf("\t")>=0 ||form.tel2.value.indexOf("\n")>-1||
				form.tel3.value.indexOf(" ")> -1 || form.tel3.value.indexOf("\t")>=0 ||form.tel3.value.indexOf("\n")>-1||
				form.email.value.indexOf(" ")> -1 || form.email.value.indexOf("\t")>=0 ||form.email.value.indexOf("\n")>-1){
			alert('필수 입력칸에 공백이 있습니다. 확인해주세요');
			
		}else if(!(form.id.value.match("[a-zA-Z]*[0-9]*"))){
			alert('아이디 형식이 옳지 않습니다.');
			
		}else if(!(form.pass.value.match("[a-zA-Z]*[0-9]*"))){
			alert('비밀번호 형식이 옳지 않습니다.');
			
		}else if(form.name.value.match("[a-zA-Z][0-9]*")){
			alert('이름 형식이 옳지 않습니다.');
			
		}else if(!(form.tel1.value.match("[0-9]*")) || !(form.tel2.value.match("[0-9]*")) || !(form.tel3.value.match("[0-9]*"))){
			alert('전화번호 형식이 옳지 않습니다.');
			
		}else if(!(form.email.value.match("[a-zA-Z]*[0-9]*"))){
			alert('이메일 형식이 옳지 않습니다.');
			
		}else{
			
			form.submit();

		}
	}