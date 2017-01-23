function sub(){
		var numc = document.f1.num.value;
		numc--;
		document.f1.num.value = numc;
	}
	function add(param1,param2,param3){
		var numc = document.f1.num.value;
		numc++;
		document.f1.num.value = numc;
	}
	
	function selectTag(showContent,selfObj){
		var tag = document.getElementById("tags").getElementsByTagName("li");
		var taglength = tag.length;
		for(i=0; i<taglength; i++){
			tag[i].className = "";
		}
		selfObj.parentNode.className = "selectTag";
		for(i=0; j=document.getElementById("tagContent"+i); i++){
			j.style.display = "none";
		}
		document.getElementById(showContent).style.display = "block";		
	}
	
	
	
