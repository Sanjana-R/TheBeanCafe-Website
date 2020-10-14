function checkType(that){
alert("change");
	var items=document.getElementsByClassName("item");


var elements = document.getElementsByClassName("testClass1");
// Iterate through each element that was found
for(var e = 0; e < elements.length; e++){
     // Get the inner content via the innerHTML property
     var content = elements[e].innerHTML;

	if(that.value=="hotbeverage")
	{
		document.getElementById("hbev").style.display="block";
		document.getElementsByClassName("item").style.display="block";
	
	}
	if(that.value=="coldbeverage")
	{
		document.getElementById("cbev").style.display="block";
		document.getElementsByClassName("item").style.display="block";

	}
	if(that.value=="sandwich")
	{
		document.getElementById("sand").style.display="block";
		
	}
	if(that.value=="wrap")
	{
		document.getElementById("wrap").style.display="block";
		
	}
	if(that.value=="minibite")
	{
		document.getElementById("mini").style.display="block";
		
	}
	if(that.value=="dessert")
	{
		document.getElementById("dess").style.display="block";
	}
}
