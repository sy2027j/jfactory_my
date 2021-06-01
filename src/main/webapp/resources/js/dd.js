class BVSelect{
	constructor({
		selector='defaultId',
		width="100%",
		searchbox=false,
		offset=true,
		search_placeholder="Search...",
		placeholder="Select Option",
		breakpoint="600"
	})
{
		var randomID=Math.floor(Math.random()*(9999-0+1))+0;
		var SearchPlaceholder=search_placeholder;
		var MainPlaceholder=placeholder;
		var selectedIDFocus=0;
		var selectedMultiple=[];
		var selected_option_text="";
		var first_option_text="";
		var MDivSelector=selector.substring(1);
		this.selector=selector.substring(1);
		this.searchbox=searchbox;
		this.width=width;
		this.offset=offset;
		this.randomID=randomID;
		this.search_placeholder;
		this.breakpoint=breakpoint;document.getElementById(this.selector).style.display="none";
		this.SetupListOptions=function()
		{
			var x=document.getElementById(this.selector);
		for(var i=0;i<x.length;i++)
		{
			var optionText=x[i].text;
			var optionValue=x[i].value;
			var optionDisabled=x[i].disabled;
			var optionSeparator=x[i].getAttribute("data-separator");
			var optionImg=x[i].getAttribute("data-img");
			var optionIcon=x[i].getAttribute("data-icon");
			if(optionDisabled==true)
			{
				var is_disabled="bv_disabled";}
			else
			{
				var is_disabled="";
			}
if(optionSeparator){var is_separator="bv_separator";}else{var is_separator="";}
if(optionImg){var has_attachment="<img src="+optionImg+">";}else{if(optionIcon){var has_attachment="<i class='"+optionIcon+"' aria-hidden='true'></i>";}else{var has_attachment="";}}
document.getElementById("ul_"+randomID).insertAdjacentHTML('beforeend',"<li class='"+is_disabled+" "+is_separator+"'  > "+has_attachment+" "+optionText+"</li>");}
document.querySelectorAll('#ul_'+randomID+' li').forEach((item)=>{item.addEventListener('click',(e)=>{const index=Array.from(item.parentNode.children).indexOf((item))
var selected_option=document.getElementById(this.selector);if(this.searchbox==true){var numberless=-1;}else{var numberless="";}
if(item.classList.contains("bv_disabled")||item.classList.contains("nofocus")||item.classList.contains("bv_separator")){}else{if(selected_option.attributes.multiple){var SelectedNames="";event.preventDefault();if(selectedMultiple.indexOf(index)>-1){var index_test=selectedMultiple.indexOf(index);selectedMultiple.splice(index_test,1);document.getElementById(this.selector)[index+numberless].selected=false;item.style.backgroundColor="transparent";}else{selectedMultiple.push(index);item.style.backgroundColor="#ececec";}
if(selectedMultiple.length==0){SelectedNames=MainPlaceholder;}else{for(var i=0;i<selectedMultiple.length;i++){var indexValFromArray=selectedMultiple[i];document.getElementById(this.selector).getElementsByTagName('option')[indexValFromArray+numberless].selected='selected';SelectedNames+=", "+selected_option[indexValFromArray-1].innerHTML;}
SelectedNames=SelectedNames.substring(2);}
document.getElementById("main_"+randomID).innerHTML=SelectedNames+"<i id='arrow_"+randomID+"' class='arrows_bv arrow down'></i>";}else{document.getElementById(this.selector).getElementsByTagName('option')[index+numberless].selected='selected';if(x.getAttribute("onchange")!=null){document.getElementById(this.selector).onchange();}
document.getElementById("main_"+randomID).innerHTML=item.textContent+"<i id='arrow_"+randomID+"' class='arrows_bv arrow down'></i>";document.getElementById("ul_"+randomID).style.display="none";document.body.classList.remove("stop-scrolling");if(document.body.contains(document.getElementById('deletebg'))){document.getElementById("deletebg").remove();}
FixVerticalViewPort();}
if(this.searchbox==true){document.getElementById("input_"+randomID).value="";Array.from(document.querySelectorAll("#ul_"+randomID+" li")).forEach(function(val){val.style.display="block";});}}})});}
this.CriarDivBase=function(){document.getElementById(this.selector).insertAdjacentHTML('afterend','<div id="bv_'+randomID+'" data-search="'+this.searchbox+'" class="bv_mainselect"></div>');document.getElementById("bv_"+randomID).insertAdjacentHTML('afterbegin','<div id="main_'+randomID+'" style="width:'+this.width+';" class="bv_atual bv_background"></div><ul id="ul_'+randomID+'" class="bv_ul_inner bv_background"></ul>');var element_ul=document.getElementById('ul_'+randomID);var element_bv=document.getElementById('bv_'+randomID);var select_width=document.getElementById("main_"+randomID).offsetWidth;element_ul.style.width=select_width+"px";if(this.searchbox==true){document.querySelector("#ul_"+randomID).insertAdjacentHTML('afterbegin','<li class="nofocus"><div class="innerinput"><input placeholder="'+SearchPlaceholder+'" class="bv_input" id="input_'+randomID+'" type="text"></div</li>');}
var selected_option=document.getElementById(this.selector);if(!selected_option.attributes.multiple){for(var i=0;i<selected_option.length;i++){if(selected_option[i].getAttribute("selected")==""){var FoundSelectedOP=1;}}
if(FoundSelectedOP==1){first_option_text=selected_option.options[selected_option.selectedIndex].text;}else{first_option_text=MainPlaceholder;}}else{first_option_text=MainPlaceholder;}
document.getElementById("main_"+randomID).innerHTML=first_option_text+"<i id='arrow_"+randomID+"' class='arrows_bv arrow down'></i>";document.getElementById("main_"+randomID).addEventListener("click",function(){document.getElementById("ul_"+randomID).style.position="absolute";document.getElementById("ul_"+randomID).style.bottom="";if(window.innerWidth<breakpoint)
{document.getElementById("ul_"+randomID).classList.add("bv_ul_mobile");document.getElementById(MDivSelector).insertAdjacentHTML('afterend','<div id="deletebg" class="bv_ul_bg"></div>');document.body.classList.add("stop-scrolling");}else{document.getElementById("ul_"+randomID).classList.remove("bv_ul_mobile");}
var select_width=document.getElementById("main_"+randomID).offsetWidth;element_ul.style.width=select_width+"px";if(document.getElementById('ul_'+randomID).style.display=='block'){document.getElementById('ul_'+randomID).style.display='none';Array.from(document.querySelectorAll(".arrows_bv")).forEach(function(val){val.classList.remove("up");val.classList.add("down");});}else{Array.from(document.querySelectorAll(".bv_ul_inner")).forEach(function(val){val.style.display='none';});BVfadeIn(document.getElementById('ul_'+randomID));Array.from(document.querySelectorAll(".arrows_bv")).forEach(function(val){val.classList.remove("up");val.classList.add("down");});document.querySelector("#arrow_"+randomID).classList.remove("down");document.querySelector("#arrow_"+randomID).classList.add("up");}
if(offset==true){FixVerticalViewPort();}},false);this.SetupListOptions();}
this.CriarDivBase();document.addEventListener("scroll",function(){if(selectedIDFocus!=0){var currentWindowViewOffSet=Math.max(document.documentElement.clientHeight||0,window.innerHeight||0);var container=document.getElementById("main_"+randomID);var lastchild=container.lastChild;var currentElementViewOffSet=lastchild.getBoundingClientRect().top;var MainDivOff=document.getElementById("ul_"+randomID).clientHeight;var DiffBetW=currentWindowViewOffSet-currentElementViewOffSet
if(DiffBetW>MainDivOff){FixVerticalViewPort();}}},false);function BVfadeOut(el){el.style.opacity=1;(function fade(){if((el.style.opacity-=.1)<0){el.style.display="none";}else{requestAnimationFrame(fade);}})();};function BVfadeIn(el,display){el.style.opacity=0;el.style.display=display||"block";(function fade(){var val=parseFloat(el.style.opacity);if(!((val+=.1)>1)){el.style.opacity=val;requestAnimationFrame(fade);}})();};function FixVerticalViewPort(){var currentWindowView=Math.max(document.documentElement.clientHeight||0,window.innerHeight||0);var container=document.getElementById("ul_"+randomID);var lastchild=container.lastChild;var currentElementView=lastchild.getBoundingClientRect().top;if(Math.round(currentElementView+50)>Math.round(currentWindowView)){selectedIDFocus=randomID;document.getElementById("ul_"+randomID).style.position="fixed";document.getElementById("ul_"+randomID).style.bottom="0px";}else{selectedIDFocus=0;document.getElementById("ul_"+randomID).style.position="absolute";document.getElementById("ul_"+randomID).style.bottom="";}}
if(this.searchbox==true){document.getElementById("input_"+randomID).addEventListener("keyup",function(){var input,filter,ul,li,i,txtValue;input=document.getElementById("input_"+randomID);filter=input.value.toUpperCase();ul=document.getElementById("ul_"+randomID);li=ul.getElementsByTagName("li");Array.from(document.querySelectorAll(".bv_separator")).forEach(function(val){val.style.display="none";});for(i=0;i<li.length;i++){if(filter==""){Array.from(document.querySelectorAll("#ul_"+randomID+" li")).forEach(function(val){val.style.display="block";});}else{txtValue=li[i].innerText||li[i].textContent;if(txtValue.toUpperCase().indexOf(filter)>-1&&!li[i].classList.contains("bv_separator")){li[i].style.display="";}else{if(!li[i].classList.contains("nofocus")){li[i].style.display="none";}}}}},false);}
document.addEventListener("click",function(e){if(!e.target.closest(".bv_ul_inner")||!event.target.classList.contains('bv_input')){if(!event.target.classList.contains('bv_input')&&!event.target.classList.contains('bv_atual')){if(event.target.nodeName!="LI"){Array.from(document.querySelectorAll(".bv_ul_inner")).forEach(function(val){val.style.display='none';});Array.from(document.querySelectorAll(".arrows_bv")).forEach(function(val){val.classList.remove("up");val.classList.add("down");});Array.from(document.querySelectorAll("#input_"+randomID)).forEach(function(val){val.value="";});Array.from(document.querySelectorAll("#ul_"+randomID+" li")).forEach(function(val){val.style.display="block";});document.body.classList.remove("stop-scrolling");if(document.body.contains(document.getElementById('deletebg'))){document.getElementById("deletebg").remove();}
if(document.getElementById("ul_"+randomID))
{selectedIDFocus=0;document.getElementById("ul_"+randomID).style.position="absolute";document.getElementById("ul_"+randomID).style.bottom="";}}}}},true);}
Destroy(){document.getElementById("bv_"+this.randomID).remove();document.getElementById(this.selector).style.display="block";}
Update(){Array.from(document.querySelectorAll("#ul_"+this.randomID+" li")).forEach(function(val){if(!val.classList.contains("nofocus")){val.remove();}});this.SetupListOptions();}
GetID(){return this.randomID;}
Change(properties){if(properties.placeholder)
{document.getElementById("main_"+this.randomID).innerHTML=properties.placeholder+"<i id='arrow_"+this.randomID+"' class='arrows_bv arrow down'></i>";}
if(properties.search_placeholder)
{document.getElementById("input_"+this.randomID).placeholder=properties.search_placeholder;}
if(properties.options&&typeof(properties.options)==='object')
{document.querySelector("#"+this.selector).innerHTML="";var prop=Object.keys(properties.options).length;for(var i=0;i<prop;i++){var change_disabled,change_separator,change_img,change_icon;if(properties.options[i].disabled==true){change_disabled="disabled";}else{change_disabled="";}
if(properties.options[i].separator==true){change_separator="data-separator='true'";}else{change_separator="";}
if(properties.options[i].img){change_img="data-img='"+properties.options[i].img+"'";}else{change_img="";}
if(properties.options[i].icon){change_icon="data-icon='"+properties.options[i].icon+"'";}else{change_icon="";}
document.getElementById(this.selector).insertAdjacentHTML('beforeend',"<option "+change_img+" "+change_icon+" "+change_separator+" "+change_disabled+" value="+properties.options[i].value+" >"+properties.options[i].inner_text+"</option>");}}else{console.error("Options must be and Object. Read documentation.");}}}