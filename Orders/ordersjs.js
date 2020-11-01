alert("Hello");

var itemlist={
	hotbeverage : ['cappucino' , 'cafelatte' , 'americano' , 'mocha' , 'hotchocolate' , 'expresso' , 'macchiato' , 'hazelnutcappucino' , 'tiramisucappucino' , 'tea' , 'gingertea'],
	coldbeverage : ['icedcaffelatte', 'icedmocha', 'icedfrappe', 'icedtea', 'icedmilktea'],
	sandwich : ['caesarsalad', 'blt', 'breakfast1', 'cheesytoast', 'lettucepitapockets', 'asianstyletofu', 'pestoveggie', 'crispyeggplant', 'smokedveggiepanini'],
	wrap : ['mediterranean', 'thaistyle', 'breakfast2', 'paneer', 'cheesyspinach'],
	minibite : ['croissant', 'bagelwcreamcheese', 'quesadilla', 'vegetablepastrypuff', 'bakedpitachips', 'cheesygarlicbread'],
	dessert : ['minichocolavacake', 'miniapplepie', 'baklava', 'hotfudgebrownie', 'caramelbrownie', 'icecreambrownie', 'classiccheesecake', 'triplechococheesecake', 'blueberrycheesecake', 'lemoncheesecake', 'oatmealraisincookie', 'chocochipcookie', 'sugarcookie']
};


var ftype=document.getElementById("type");
var fitem=document.getElementById("item");

for(typ in itemlist)
{
	ftype.innerHTML=ftype.innerHTML + '<option>' + typ + '</option>';
}

ftype.addEventListener('change', function options(e){
	fitem.innerHTML='';
	typ=e.target.value;
	if(typ in itemlist)
	{
		for(i=0;i<itemlist[typ].length;i++)
		{
			fitem.innerHTML=fitem.innerHTML + '<option>' + itemlist[typ][i] + '</option>';
		}
	}
});