	function addBookList(){
		document.getElementById("addBookList").style.display="block";
		document.getElementById("addLink").style.display="none";
	}
	function canselAddBookList(){
		document.getElementById("addBookList").style.display="none";
		document.getElementById("addLink").style.display="block";
	}
	function addBookListDetail(param){
		var paramlink=param+"link";
		var paramdetail=param+"detail";
		document.getElementById(paramdetail).style.display="block";
		document.getElementById(paramlink).style.display="none";
	}
	function canselAddBookListDetail(param){
		var paramlink=param+"link";
		var paramdetail=param+"detail";
		document.getElementById(paramdetail).style.display="none";
		document.getElementById(paramlink).style.display="block";
	}
	function showSave(param){
		var paramx=param+"x";
		document.getElementById(paramx).style.display="none";
		document.getElementById(param).style.display="block";
	}
	function canselSave(param){
		var paramx=param+"x";
		document.getElementById(paramx).style.display="block";
		document.getElementById(param).style.display="none";
	}