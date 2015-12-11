<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
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

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>潍坊工会网</title>\r\n<link href=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/style/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script src=\"http://code.jquery.com/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        //截短字符串\r\n        function truncateStr(str, len) {\r\n            var short_str = str.substr(0, len);\r\n            if (str.length > len) {\r\n                short_str = short_str + \"...\";\r\n            }\r\n            return short_str;\r\n        }\r\n\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<div class=\"waper\">\r\n\r\n");

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


	templateBuilder.Append("\r\n\r\n    <style>\r\n        #slides-wrapper {\r\n            position:relative;\r\n        }\r\n        .slide-img,.slid-img>img {\r\n            height:100%;\r\n            width:100%;\r\n        }\r\n        .slide-footer {\r\n            position:absolute;\r\n            bottom:0;\r\n            width:100%;\r\n            height:60px;\r\n            background:rgba(0,0,0,0.4);\r\n        }\r\n        .slide-title {\r\n            padding:10px;\r\n            color:white;\r\n        }\r\n            .slide-title a {\r\n                color:white;\r\n                text-decoration:none;\r\n            }\r\n        .slide-button-wrapper {\r\n            position:absolute;\r\n            bottom:4px;\r\n            right:4px;\r\n        }\r\n        .slide-btn {\r\n            padding:3px 6px;\r\n            float:left;\r\n            border:1px solid gray;\r\n            background-color:black;\r\n            color:white;\r\n            margin-left:2px;\r\n            cursor:pointer;\r\n\r\n        }\r\n\r\n        .slide-btn.active {\r\n            color:orange;\r\n            border:1px solid orange;\r\n        }\r\n        #slide-img {\r\n            width:100%;\r\n            height:100%;\r\n        }\r\n    </style>\r\n\r\n<div class=\"main\">\r\n <div class=\"index\">\r\n  <div class=\"index1 clearfix\">\r\n\r\n	<div class=\"fl index_news_pic\" id=\"slides-wrapper\" style=\"height:244px;\">\r\n        <div class=\"slide-img\">\r\n            <img id=\"slide-img\" src=\"\"/>\r\n        </div>\r\n        <div class=\"slide-footer\">\r\n            <div class=\"slide-title\">\r\n                <a id=\"slide-title\"></a>\r\n            </div>\r\n            <div class=\"slide-button-wrapper\">\r\n\r\n            </div>\r\n        </div>\r\n	</div>\r\n      <ul id=\"slidebox\" style=\"display:none;\">\r\n           ");
	DataTable slides = get_article_list("gonghuinews", 58, 1, "status=0 and is_top=1 and img_url<>''");

	foreach(DataRow dr in slides.Rows)
	{

	templateBuilder.Append("\r\n          <li><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></li>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n      <script>\r\n          $(function () {\r\n              var len = $('#slidebox>li').length;\r\n              for (var i = 1; i <= len; i++) {\r\n                  $(\"<div class='slide-btn'>\" + i + \"</div>\").appendTo(\".slide-button-wrapper\").click(function () {\r\n                      var li = $('#slidebox>li').eq($(this).html()-1);\r\n                      $(\"#slide-img\").attr(\"src\", li.children(\"img\").attr(\"src\"));\r\n                      $(\"#slide-title\").attr(\"href\", li.children(\"a\").attr(\"href\")).html(li.children(\"a\").html());\r\n                      $(this).addClass(\"active\");\r\n                      $(this).siblings(\".active\").removeClass(\"active\");\r\n                  });\r\n              }\r\n\r\n              if ($('#top-news').length > 0) {\r\n                  $('#top-news').html(truncateStr($(\"#top-news\").html(),86));\r\n              }\r\n\r\n              $('.slide-btn').first().click();\r\n          });\r\n      </");
	templateBuilder.Append("script>\r\n  <div class=\"index_ghyw fl\">\r\n   <div class=\"index_ghyw_bt clearfix font_bt\">工会要闻<a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",58));

	templateBuilder.Append("\">更多>></a></div>\r\n      ");
	DataTable topNewsList = get_article_list("gonghuinews", 58, 1, "status=0 and is_top=1 and img_url<>''");

	foreach(DataRow dr in topNewsList.Rows)
	{

	templateBuilder.Append("\r\n   <p class=\"toutiao\"><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a>…</p>\r\n   <p class=\"xuxian index_yw\">   &nbsp;&nbsp;&nbsp;&nbsp;<a id=\"top-news\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["zhaiyao"]) + "</a></p>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n   <ul class=\"index_yw_list\">\r\n\r\n    ");
	DataTable newslist=get_article_list("gonghuinews",58,3,"status = 0");

	foreach(DataRow item in newslist.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(item["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(item["title"]) + "</a>[");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(item["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("]</li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n   </ul>\r\n  </div>\r\n  <div class=\"index_zuinews\">\r\n  	<div class=\"index_zuinews_bt clearfix font_bt\">最新动态<a href=\"#\"></a></div>\r\n    <ul class=\"index_fr_news\">\r\n     ");
	DataTable newslist2=get_article_list("gonghuinews",0,7,"status = 0");

	foreach(DataRow item2 in newslist2.Rows)
	{

	templateBuilder.Append("\r\n    <li><a style=\"overflow: hidden;\r\n    width: 100%;\r\n    display: inline-block;\r\n    white-space: nowrap;position:relative;top:5px;\r\n    text-overflow: ellipsis;\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(item2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(item2["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n    </ul>\r\n  </div>\r\n</div>\r\n<div class=\"index2 clearfix\" style=\"height:100px;\">\r\n<div class=\"index2_tuijian\" style=\"position:relative;top:-60px;\">\r\n <div class=\"index2_tuijian_bt font_bt clearfix\">特别推荐<a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/index_more.jpg\" /></a></div>\r\n <ul class=\"index2_list\">\r\n     ");
	DataTable newslist3=get_article_list("gonghuinews",0,6,"status = 0 and is_red=1");

	foreach(DataRow item3 in newslist3.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(item3["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(item3["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n </ul>\r\n</div>\r\n<div class=\"index2_gongyun\" style=\"margin-left:13px;position:relative;top:-60px;\">\r\n <div class=\"index2_gongyun_bt font_bt clearfix\">潍坊工运<a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",56));

	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/index_more.jpg\" /></a></div>\r\n <ul class=\"index2_list\">\r\n      ");
	DataTable newslist4=get_article_list("gonghuinews",56,6,"status = 0");

	foreach(DataRow item4 in newslist4.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(item4["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(item4["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n </ul>\r\n</div>\r\n<div class=\"index2_link\">\r\n<p><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/index_frlink1.png\" /></a></p>\r\n<p style=\"margin-top:8px;\"><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/index_frlink2.png\" /></a></p>\r\n<p style=\"margin-top:8px;\"><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/index_frlink3.png\" /></a></p>\r\n\r\n</div>\r\n</div>\r\n<Div class=\"index_banner\" style=\"height:160px;\"><img style=\"margin-top:-38px;\" src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/index_banner.jpg\" /></Div>\r\n<div class=\"index2 clearfix\">\r\n<div class=\"index2_tuijian\">\r\n <div class=\"index2_tuijian_bt font_bt clearfix\">政策法规<a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",61));

	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/index_more.jpg\" /></a></div>\r\n <ul class=\"index2_list\">\r\n\r\n     ");
	DataTable newslist5=get_article_list("gonghuinews",61,6,"status = 0");

	foreach(DataRow item5 in newslist5.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(item5["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(item5["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n </ul>\r\n</div>\r\n<div class=\"index2_gongyun\" style=\"margin-left:13px;\">\r\n <div class=\"index2_gongyun_bt font_bt clearfix\">经验学习<a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",73));

	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/index_more.jpg\" /></a></div>\r\n <ul class=\"index2_list\">\r\n      ");
	DataTable newslist6=get_article_list("gonghuinews",73,6,"status = 0");

	foreach(DataRow item6 in newslist6.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(item6["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(item6["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n </ul>\r\n</div>\r\n<div class=\"index_zuinews\">\r\n  	<div class=\"index_zuinews_bt clearfix font_bt\">党风廉政建设<a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",64));

	templateBuilder.Append("\">更多>></a></div>\r\n    <ul class=\"index_fr_news\" style=\"padding-bottom:15px;\">\r\n        ");
	DataTable newslist7=get_article_list("gonghuinews",64,6,"status = 0");

	foreach(DataRow item7 in newslist7.Rows)
	{

	templateBuilder.Append("\r\n    <li><a style=\"overflow: hidden;\r\n    width: 100%;\r\n    display: inline-block;\r\n    white-space: nowrap;\r\n    text-overflow: ellipsis;position:relative;top:5px;\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(item7["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(item7["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n    </ul>\r\n  </div>\r\n</div>\r\n\r\n\r\n<div class=\"index_hy clearfix\">\r\n<p><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/index_zg_bt.jpg\" /></p>\r\n<div class=\"clearfix\">\r\n<Div class=\"index_hy1\">\r\n	<p class=\"index_hy1_bt clearfix\"><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",66));

	templateBuilder.Append("\" class=\"dq\">公示公告</a><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",67));

	templateBuilder.Append("\">会员服务卡</a></p>\r\n  <ul class=\"index2_list\">\r\n\r\n </ul>\r\n\r\n    <div style=\"display:none\">\r\n        ");
	DataTable newslist8=get_article_list("gonghuinews",66,6,"status = 0");

	foreach(DataRow item8 in newslist8.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(item8["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(item8["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n    <div style=\"display:none\">\r\n        ");
	DataTable newslist81=get_article_list("gonghuinews",67,6,"status = 0");

	foreach(DataRow item81 in newslist81.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(item81["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(item81["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n</Div>\r\n<Div class=\"index_hy1\" style=\"margin-left:5px;\">\r\n	<p class=\"index_hy1_bt clearfix\"><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",69));

	templateBuilder.Append("\" class=\"dq\">帮扶救助</a><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",71));

	templateBuilder.Append("\">法律援助</a></p>\r\n  <ul class=\"index2_list\">\r\n    \r\n\r\n </ul>\r\n\r\n    <div style=\"display:none;\">\r\n");
	DataTable newslist9=get_article_list("gonghuinews",69,6,"status = 0");

	foreach(DataRow item9 in newslist9.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(item9["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(item9["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n    <div style=\"display:none;\">\r\n");
	DataTable nl=get_article_list("gonghuinews",71,6,"status = 0");

	foreach(DataRow it in nl.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(it["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(it["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n</Div>\r\n<Div class=\"index_hy1\"  style=\"margin-left:5px;\">\r\n	<p class=\"index_hy1_bt clearfix\"><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",68));

	templateBuilder.Append("\" class=\"dq\">就业创业</a><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",70));

	templateBuilder.Append("\">互助保障</a><a href=\"");
	templateBuilder.Append(linkurl("list_gonghui",72));

	templateBuilder.Append("\">身心关爱</a></p>\r\n  <ul class=\"index2_list\">\r\n </ul>\r\n\r\n    <div style=\"display:none;\">\r\n");
	DataTable nl2=get_article_list("gonghuinews",68,6,"status = 0");

	foreach(DataRow it2 in nl2.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(it2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(it2["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n    <div style=\"display:none;\">\r\n");
	DataTable nl3=get_article_list("gonghuinews",70,6,"status = 0");

	foreach(DataRow it3 in nl3.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(it3["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(it3["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n    <div style=\"display:none;\">\r\n");
	DataTable nl4=get_article_list("gonghuinews",72,6,"status = 0");

	foreach(DataRow it4 in nl4.Rows)
	{

	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(it4["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(it4["title"]) + "</a></li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n\r\n</Div>\r\n    <script>\r\n        $(\".index_hy1>.index_hy1_bt>a\").mouseover(function () {\r\n            $(this).siblings(\".dq\").removeClass(\"dq\");\r\n            $(this).addClass(\"dq\");\r\n            $(this).parent().next().html($(this).parents(\".index_hy1\").children(\"div\").eq($(this).index()).html());\r\n        });\r\n        \r\n\r\n        $(function () {\r\n            $(\".index_hy1>div>li>a\").each(function () {\r\n                $(this).html(truncateStr($(this).html(),14));\r\n            });\r\n            $(\".index_hy1>.index_hy1_bt>a:nth-child(1)\").mouseover();\r\n        });\r\n\r\n    </");
	templateBuilder.Append("script>\r\n<p class=\"index_zg_fg\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/index_zg_fg.png\" /></p>\r\n<div class=\"denglu\" style=\"float:left;\">\r\n	<p><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/index_dl.jpg\" /></p>\r\n  <table width=\"200\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-top:15px;\">\r\n  <tr>\r\n    <td width=\"72\" height=\"36\">姓&nbsp;&nbsp;&nbsp;&nbsp;名：</td>\r\n    <td width=\"134\">\r\n      <input style=\"width:110px;\" name=\"textfield\" type=\"text\" id=</td size=\"17\">\r\n  </tr>\r\n  <tr>\r\n    <td height=\"36\">会员卡号：</td>\r\n    <td><input style=\"width:110px;\" name=\"&lt;/td\" type=\"text\" id=\"&lt;/td2\" size=\"17\" /></td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"36\">验&nbsp;证&nbsp;码：</td>\r\n    <td><input name=\"&lt;/td2\" type=\"text\" id=\"&lt;/td3\" size=\"7\"  style=\"width:55px;\"/>\r\n      <img id=\"captcha\" src=\"http://ghpt.weifang.gov.cn/lingwuqt/colorimage?date=Fri%20Dec%2011%202015%2008:48:45%20GMT+0800%20(%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B4)\" width=\"50\" height=\"25\" align=\"absmiddle\" /></td>\r\n      <script>$('#captcha').click(function () {\r\n    $(this).attr(\"src\", \"http://ghpt.weifang.gov.cn/lingwuqt/colorimage?date=\" + Date());\r\n\r\n    });</");
	templateBuilder.Append("script>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"40\">&nbsp;</td>\r\n    <td><input type=\"submit\" name=\"button\" id=\"submit-button\"  value=\"登录\" />\r\n      &nbsp;\r\n<input type=\"submit\" name=\"button2\" id=\"button2\" value=\"重填\" /></td>\r\n  </tr>\r\n</table>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"hy_link clearfix\">\r\n    <style>\r\n    </style>\r\n <ul class=\"img-links\">\r\n  <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/hy_link1.png\" /></a></li>\r\n   <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/hy_link2.png\" /></a></li>\r\n    <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/hy_link3.png\" /></a></li>\r\n     <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/hy_link4.png\" /></a></li>\r\n      <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/hy_link5.png\" /></a></li>\r\n       <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/hy_link6.png\" /></a></li>\r\n     <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/gonghui");
	templateBuilder.Append("/image/hy_link7.png\" /></a></li>\r\n </ul>\r\n</div>\r\n\r\n</div>\r\n\r\n\r\n");

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


	templateBuilder.Append("\r\n </div>\r\n</div>\r\n</div> \r\n</body>\r\n</html>\r\n<script>\r\n\r\n    $('#submit-button').click(function () {\r\n        $.get(\"http://ghpt.weifang.gov.cn/lingwuqt/checkin.jsp?name=few&cardcode=ewf&randCode=59\", function (res) {\r\n            alert(res);\r\n        });\r\n    });\r\n</");
	templateBuilder.Append("script>");
	Response.Write(templateBuilder.ToString());
}
</script>
