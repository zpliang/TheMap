0，使用graphviz画图。
	0.1 使用python生成graphviz代码*.dot。
1，导出所有节点和边数据。用.sh或.py
2，为每条边写一行连接语句。用.py
	2.1 节点名称使用tag文本。用.py
		[label = "a"];
	2.2 “入边”性质：尾在前节点的东，尾端圆形。头在后节点的北，头端无。
		[headport = n, tailport = e,dir=back,arrowtail = odot];
	2.3 “出边”性质：尾在前节点的南，尾端无。头在后节点的西，头端楔形。
		[headport = w, tailport = s,dir=forward,arrowhead = normal];




TGF is interesting:
http://en.wikipedia.org/wiki/Trivial_Graph_Format
E.G. it can be :
######################
1 First node
2 Second node
#
1 2 Edge between the two
######################