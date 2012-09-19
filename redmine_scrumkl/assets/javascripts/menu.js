/**
 * @author PZH
 */
var waitting = 1;              
var secondLeft = waitting;              
var timer;                              
var sourceObj;              
var number;              
function getObject(objectId)//获取id的函数     
{      
	if(document.getElementById && document.getElementById(objectId)) {              
    // W3C DOM              
    return document.getElementById(objectId);              
    } else if (document.all && document.all(objectId)) {              
        // MSIE 4 DOM              
    return document.all(objectId);              
    } else if (document.layers && document.layers[objectId]) {              
    // NN 4 DOM.. note: this won't find nested layers              
    return document.layers[objectId];              
    } else {              
    return false;              
    }              
}              
function SetTimer()//主导航时间延迟的函数              
{              
    for(j=1; j <4; j++){  
        if (j == number){ 
            if(getObject("mm"+j)!=false){              
                getObject("mm"+ number).className = "menuhover";              
                getObject("mb"+ number).className = "";              
            }              
        }              
        else{              
             if(getObject("mm"+j)!=false){               
                getObject("mm"+ j).className = "";              
                getObject("mb"+ j).className = "hide";               
            }              
        }              
    }              
}              

function CheckTime()//设置时间延迟后              
{              
    secondLeft--;              
    if ( secondLeft == 0 )              
    {              
        clearInterval(timer);                                      
        SetTimer();                      
    }              
}              

function showM(thisobj,Num)//主导航鼠标滑过函数,带时间延迟             
{              
    number = Num;              
    sourceObj = thisobj;              
    secondLeft = 1;              
    timer = setTimeout('CheckTime()',100);              
}              

function OnMouseLeft()//主导航鼠标移出函数,清除时间函数              
{              
    clearInterval(timer);              
} 

/*function OnMouseClick(obj)
{
	for(j=1;j<8;++j)
		{
		    if(getObject("ms"+j)!=false){
		    	if(getObject("ms"+j)==obj){
		    	    getObject("ms"+j).className="menuhover";
		        }
		        else{
		        	getObject("ms"+j).className="";
		        }
		    }
		    else
		    	continue;
		}
}*/

function mmenuURL()//主导航、二级导航显示函数
{
var thisURL = document.URL;
tmpUPage = thisURL.split( "/" );  

thisUPage1= tmpUPage[ tmpUPage.length-1]; 
thisUPage2= tmpUPage[ tmpUPage.length-2];
thisUPage3= tmpUPage[ tmpUPage.length-3];
lastField=thisUPage1.split("?");
thisUPage1=lastField[0];
thisUPage1= thisUPage1.toLowerCase();
thisUPage2= thisUPage2.toLowerCase();
thisUPage3= thisUPage3.toLowerCase();
//thisUPage=thisUPage.substring(0,4)
if(thisUPage1=="backlogs" && thisUPage2=="product")
{
	getObject("mm1").className="menuhover";
	getObject("mb1").className = "";
	getObject("ms1").className = "menuchose";
}
else if(thisUPage2=="backlogs" && thisUPage3=="product")
{
	getObject("mm1").className="menuhover";
	getObject("mb1").className = "";
	getObject("ms1").className = "menuchose";
}
//else if(thisUPage2=="backlogs" && thisUPage3=="product")
//{
//	getObject("mm1").className="menuhover"
//	getObject("mb1").className = "";
	//getObject("ms1").className = "menuchose"
//}	
//else if(thisUPage1=="sprints" && thisUPage2=="product")
//{
//	getObject("mm1").className="menuhover"
//	getObject("mb1").className = "";
	//getObject("ms2").className = "menuchose"
//}
else if(thisUPage1=="sprints" && thisUPage2=="product")
{
	getObject("mm1").className="menuhover";
	getObject("mb1").className = "";
	getObject("ms2").className = "menuchose";
}
else if(thisUPage2=="sprints" && thisUPage3=="product")
{
	getObject("mm1").className="menuhover";
	getObject("mb1").className = "";
	getObject("ms2").className = "menuchose";
}
else if(thisUPage1=="release" && thisUPage2=="sprint" && thisUPage3=="product")
{
	getObject("mm1").className="menuhover";
	getObject("mb1").className = "";
	getObject("ms3").className = "menuchose";
}
else if(thisUPage1=="sprint" || thisUPage2=="sprint")
{
	getObject("mm2").className="menuhover";
	getObject("mb2").className = "";
	getObject("ms4").className = "menuchose";
}
else if(thisUPage1=="tasks")
{
	getObject("mm2").className="menuhover";
	getObject("mb2").className = "";
	getObject("ms5").className = "menuchose";
}
else if(thisUPage2=="tasks")
{
	getObject("mm2").className="menuhover";
	getObject("mb2").className = "";
	getObject("ms5").className = "menuchose";
}
else if(thisUPage2=="charts")
{
	getObject("mm2").className="menuhover"
	getObject("mb2").className = "";
	getObject("ms6").className = "menuchose"
}
else
{
	getObject("mm1").className="";
	getObject("mb1").className = "";
}
}

//window.load=mmenuURL()