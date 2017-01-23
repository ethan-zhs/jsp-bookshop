function zhuceCheak(){
		if(document.f3.userNo.value==null||document.f3.userNo.value==""){
			alert("用户名不能为空");
			return false;
		}
		if(document.f3.username.value==null||document.f3.username.value==""){
			alert("姓名不能为空");
			return false;
		}
		if(document.f3.password.value==null||document.f3.password.value==""){
			alert("密码不能为空");
			return false;
		}
		if(document.f3.password.value!=document.f3.cpassword.value){
			alert("两次输入密码不一致");
			return false;
		}
		return true;
		
	}