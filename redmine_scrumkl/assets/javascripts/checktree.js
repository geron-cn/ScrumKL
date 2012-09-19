function Ob(o) {
	var o = document.getElementById(o) ? document.getElementById(o) : o;
	return o;
}
function Hd(o) {
	Ob(o).style.display = "none";
}
function Sw(o) {
	Ob(o).style.display = "";
}
function ExCls(o, a, b, n) {
	var o = Ob(o);
	for (i = 0; i < n; i++) {
		o = o.parentNode;
	}
	o.className = o.className == a ? b : a;
}

function CheckTreeMenu(id, TagName0) {
	this.id = id;
	this.TagName0 = TagName0 == "" ? "li" : TagName0;
	this.AllNodes = Ob(this.id).getElementsByTagName(TagName0);

	this.InitCss = function(ClassName0, ClassName1, ClassName2, ImgUrl) {
		var links = Ob('checktree').getElementsByTagName('a');
		this.ClassName0 = ClassName0;
		this.ClassName1 = ClassName1;
		this.ClassName2 = ClassName2;
		this.ImgUrl = ImgUrl || "../images/s.gif";
		this.ImgBlankA = "<img src=\"" + this.ImgUrl
				+ "\" class=\"s\" onclick=\"ExCls(this,'" + ClassName0 + "','"
				+ ClassName1 + "',1);\" alt=\"展开/折叠\" />";
		this.ImgBlankB = "<img src=\"" + this.ImgUrl + "\" class=\"s\" />";

		for (i = 0; i < this.AllNodes.length; i++) {
			this.AllNodes[i].className == "" ? this.AllNodes[i].className = ClassName0
					: "";
			this.AllNodes[i].innerHTML = (this.AllNodes[i].className == ClassName2 ? this.ImgBlankB
					: this.ImgBlankA)
					+ this.AllNodes[i].innerHTML;
		}
	}
	this.SetNodes = function(n) {
		var sClsName = n == 0 ? this.ClassName0 : this.ClassName1;
		for (i = 0; i < this.AllNodes.length; i++) {
			this.AllNodes[i].className == this.ClassName2 ? ""
					: this.AllNodes[i].className = sClsName;
		}
	}
}
