	var show = true;
	var hide = false;
	//修改菜单的上下箭头符号
	function my_on(head,body)
	{
		var tag_a;
		for(var i=0;i<head.childNodes.length;i++)
		{
			if (head.childNodes[i].nodeName=="A")
			{
				tag_a=head.childNodes[i];
				break;
			}
		}
		tag_a.className="on";
	}
	function my_off(head,body)
	{
		var tag_a;
		for(var i=0;i<head.childNodes.length;i++)
		{
			if (head.childNodes[i].nodeName=="A")
			{
				tag_a=head.childNodes[i];
				break;
			}
		}
		tag_a.className="off";
	}
	//添加菜单	
	window.onload=function()
	{		
		m1 =new Menu("menu1",'menu1_child','dtu','100',show,my_on,my_off);
		m1.init();
		m2 =new Menu("menu2",'menu2_child','dtu','100',hide,my_on,my_off);
		m2.init();
		m3 =new Menu("menu3",'menu3_child','dtu','100',hide,my_on,my_off);
		m3.init();
		m4 =new Menu("menu4",'menu4_child','dtu','100',hide,my_on,my_off);
		m4.init();
		m5 =new Menu("menu5",'menu5_child','dtu','100',hide,my_on,my_off);
		m5.init();
		m6 =new Menu("menu6",'menu6_child','dtu','100',hide,my_on,my_off);
		m6.init();
		m7 =new Menu("menu7",'menu7_child','dtu','100',hide,my_on,my_off);
		m7.init();
		m8 =new Menu("menu8",'menu8_child','dtu','100',hide,my_on,my_off);
		m8.init();
		m9 =new Menu("menu9",'menu9_child','dtu','100',hide,my_on,my_off);
		m9.init();
		m10 =new Menu("menu10",'menu10_child','dtu','100',hide,my_on,my_off);
		m10.init();
		m11 =new Menu("menu11",'menu11_child','dtu','100',hide,my_on,my_off);
		m11.init();
		m12 =new Menu("menu12",'menu12_child','dtu','100',hide,my_on,my_off);
		m12.init();
		m13 =new Menu("menu13",'menu13_child','dtu','100',hide,my_on,my_off);
		m13.init();
		m14 =new Menu("menu14",'menu14_child','dtu','100',hide,my_on,my_off);
		m14.init();
		m15 =new Menu("menu15",'menu15_child','dtu','100',hide,my_on,my_off);
		m15.init();
		m16 =new Menu("menu16",'menu16_child','dtu','100',hide,my_on,my_off);
		m16.init();
		m17 =new Menu("menu17",'menu17_child','dtu','100',hide,my_on,my_off);
		m17.init();
		m18 =new Menu("menu18",'menu18_child','dtu','100',hide,my_on,my_off);
		m18.init();
		m19 =new Menu("menu19",'menu19_child','dtu','100',hide,my_on,my_off);
		m19.init();
		m20 =new Menu("menu20",'menu20_child','dtu','100',hide,my_on,my_off);
		m20.init();
	}