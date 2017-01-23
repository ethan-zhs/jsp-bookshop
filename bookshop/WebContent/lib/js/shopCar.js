function culcus(param1,param2,param3){
		var inpuId = "check"+param3;
		if(document.getElementById(inpuId).checked==true){
			var sumprice = document.getElementById("sumprice").value - 0;
			sumprice += (param1*param2);
			document.getElementById("sumprice").value = sumprice;
			document.getElementById("sum").innerHTML = "¥ " + sumprice;	
		}
		if(document.getElementById(inpuId).checked==false){
			var sumprice = document.getElementById("sumprice").value - 0;
			sumprice -= (param1*param2);
			document.getElementById("sumprice").value = sumprice;
			document.getElementById("sum").innerHTML = "¥ " + sumprice;	
			document.f2.all.checked = false;
		}
	}
	
	function selectAll(param){
		var handle = document.f2.all;
		var a = document.f2.bookIds;
		for(var i=0; i<a.length; i++){
			a[i].checked  =  handle.checked;   
		}
		if(document.f2.all.checked==true){			
			document.getElementById("sum").innerHTML = "¥ " + param;
		}
		if(document.f2.all.checked==false){
			document.getElementById("sum").innerHTML = "¥ " + 0.0;
		}
		
	}
	
	//orderForm page
	
	function changeMessage(){
		document.getElementById("changeMessage").style.display="block";		
	}
	function changePayWay(){
		document.getElementById("changePayWay").style.display="block";
		
	}