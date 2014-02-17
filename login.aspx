<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="gb2312" Debug="true" %>
<%@ Import Namespace="System.IO" %>
<%
	string strName = System.Web.HttpUtility.UrlDecode(Request["name"]);
	string address = System.Web.HttpUtility.UrlDecode(Request["url"]);
	if(strName=="guanwang"){
		Session.Add("isLogin", "identified");
		Response.Write("True");
	}
	else if(strName=="331252914"&&address=="130627_hongkonghotel"||address=="130808_HKhotel"){
		Session.Add("isLogin", "identified");
		Response.Write("True");
	}	
	else if(strName=="gwing0401"&&(address=="130627_hongkonghotel"||address=="130625_HKhotel"||address=="130808_HKhotel")){
		Session.Add("isLogin", "identified");
		Response.Write("True");
	}
	else{
		Response.Write("False");
	}
%>