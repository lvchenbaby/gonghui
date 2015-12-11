<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/12/11 16:13:01.
		本页面代码由DTcms模板引擎生成于 2015/12/11 16:13:01. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "gonghuinews";
	const int pagesize = 10;

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>潍坊工会网</title>\r\n<link href=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/style/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n\r\n    <script src=\"http://code.jquery.com/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n\r\n        //截短字符串\r\n        function truncateStr(str, len) {\r\n            var short_str = str.substr(0, len);\r\n            if (str.length > len) {\r\n                short_str = short_str + \"...\";\r\n            }\r\n            return short_str;\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n\r\n</head>\r\n\r\n<body>\r\n<div class=\"waper\">\r\n\r\n");

	templateBuilder.Append("<div class=\"head\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/top.png\" width=\"1013\" height=\"197\" /></div>\r\n<div class=\"menu\">\r\n <ul class=\"menu_list clearfix\">\r\n  <li><a href=\"/index.aspx\">网站首页</a></li>\r\n  <li><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",54));

	templateBuilder.Append("\">市总概况</a></li>\r\n  <li><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",56));

	templateBuilder.Append("\">潍坊工运</a></li>\r\n  <li><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",58));

	templateBuilder.Append("\">工会要闻</a></li>\r\n  <li><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",61));

	templateBuilder.Append("\">政策法规</a></li>\r\n  <li><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",62));

	templateBuilder.Append("\">下载中心</a></li>\r\n  <li><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",64));

	templateBuilder.Append("\">党风廉政建设</a></li>\r\n  <li><a href=\"#\">网上办公</a></li>\r\n </ul>\r\n <ul class=\"menu_list clearfix\">\r\n  <li><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",52));

	templateBuilder.Append("\">组织建设</a></li>\r\n  <li><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",53));

	templateBuilder.Append("\">民主管理</a></li>\r\n  <li><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",55));

	templateBuilder.Append("\">宣教文体</a></li>\r\n  <li><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",57));

	templateBuilder.Append("\">劳动楷模</a></li>\r\n  <li><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",59));

	templateBuilder.Append("\">生产保护</a></li>\r\n  <li><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",60));

	templateBuilder.Append("\">权益保障</a></li>\r\n  <li><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",63));

	templateBuilder.Append("\">女职工工作</a></li>\r\n  <li><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",65));

	templateBuilder.Append("\">工运理论研究</a></li>\r\n </ul>\r\n\r\n</div>");


	templateBuilder.Append("\r\n\r\n<div class=\"main\">\r\n <div class=\"index\">\r\n  <div class=\"clearfix\">\r\n   <div class=\"sub_left\">\r\n   	<div class=\"sub_left_bt font_bt\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("<p class=\"fr\">您当前的位置：<a href=\"/index.aspx\">首页</a>");
	templateBuilder.Append(get_category_menu("list_gonghui", category_id).ToString());

	templateBuilder.Append("</p></div>\r\n    <ul class=\"sub_list\">\r\n         ");
	DataTable newsList = get_article_list(channel, category_id, pagesize, page, "status=0", out totalcount, out pagelist, "list_gonghui", category_id, "__id__");

	templateBuilder.Append("<!--取得一个分页DataTable-->\r\n      ");
	foreach(DataRow dr in newsList.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a>[");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("]</li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n   </ul>\r\n   <!--<div class=\"pages\"><a href=\"#\">首页</a> <a href=\"#\">上一页</a> <a href=\"#\" class=\"curr\">1</a> <a href=\"#\">2</a> …… <a href=\"#\">19</a> <a href=\"#\">20</a> <a href=\"#\">下一页</a> <a href=\"#\">末页</a> 共有20页</div>-->\r\n       <div class=\"page-box\">\r\n      <div class=\"digg\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div>\r\n    </div>\r\n   </div>\r\n   <div class=\"sub_right\">\r\n   	<div class=\"sub_frnews\">\r\n    	<div class=\"sub_frnews_bt font_bt clearfix\">最新公告<a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",66));

	templateBuilder.Append("\">更多>></a></div>\r\n      <ul class=\"index_fr_news\">\r\n     ");
	DataTable newslist5=get_article_list("gonghuinews",66,7,"status = 0");

	foreach(DataRow item5 in newslist5.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(item5["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(item5["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n\r\n    </ul>\r\n    </div>\r\n    <div class=\"sub_frnews\" style=\"margin-top:10px;\">\r\n    	<div class=\"sub_frnews_bt font_bt clearfix\">热点新闻<a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",58));

	templateBuilder.Append("\">更多>></a></div>\r\n      <ul class=\"index_fr_news\">\r\n    ");
	DataTable newslist=get_article_list("gonghuinews",58,7,"status = 0");

	foreach(DataRow item in newslist.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(item["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(item["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n    </ul>\r\n    </div>\r\n\r\n        <script>\r\n            $(\".sub_frnews>ul>li>a\").each(function () {\r\n                $(this).html(truncateStr($(this).html(), 12));\r\n            });\r\n           </");
	templateBuilder.Append("script>\r\n    <div>\r\n     <ul class=\"sub_right_link\">\r\n     	<li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/sub_fr01.png\" /></a></li>\r\n      <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/sub_fr02.png\" /></a></li>\r\n      <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/sub_fr03.png\" /></a></li>\r\n      <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/sub_fr04.png\" /></a></li>\r\n     </ul>\r\n\r\n    </div>\r\n   \r\n   \r\n   </div>\r\n  </div>\r\n   ");

	templateBuilder.Append("<div class=\"link\" style=\"clear:both;\">\r\n<p>友情链接</p>\r\n\r\n	<ul class=\"link_list clearfix\">\r\n		<li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/link1.png\" /></a></li> \r\n    <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/link3.png\" /></a></li> \r\n    <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/link5.png\" /></a></li> \r\n    <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/link4.png\" /></a></li> \r\n    <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/link2.jpg\" /></a></li> \r\n    <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/link6.png\" /></a></li>  \r\n  </ul>\r\n</div>\r\n<div class=\"bottom\">\r\n  	<ul class=\"bottom_link clearfix\">\r\n    	<li><a href=\"#\">网站导航</a></li>\r\n      <li>|</li>\r\n      <li><a href=\"#\">联系我们</a></li>\r\n      <li>|</li>\r\n      <li><a href=\"#\">关于我们</a></li>\r\n      <li>|</li>\r\n      <li><a href=\"#\">设为首页</a></li>\r\n      <li>|</li>\r\n      <li><a href=\"#\">加入收藏</a></li>\r\n    </ul>\r\n    <p style=\"margin:12px 0;\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/bottom_fg.png\" /></p>\r\n    <p>主办单位：潍坊市总工会办公室 版权所有：潍坊市总工会<br />\r\n联系电话：0536-7211590 地址：地址:山东省潍坊市胜利东街99号 鲁ICP备13029619号 技术支持：<a href=\"#\">天泽网络</a></p>\r\n</div>");


	templateBuilder.Append("\r\n </div>\r\n</div>\r\n</div> \r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
