<%@ page contentType="text/html;charset=gb2312" %>
<!--引入要用到的类库-->
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%!
public String codeToString(String str)
{//处理中文字符串的函数
	String s=str;
  	try
  	{
   		byte tempB[]=s.getBytes("ISO-8859-1");
    	s=new String(tempB);
    	return s;
  	}
  	catch(Exception e)
  	{
    	return s;
  	}  
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>发送邮件</title>
</head>

<body>
<%
try
{
	//从html表单中接收邮件信息
	String to_mail=codeToString(request.getParameter("to"));
	String to_title=codeToString(request.getParameter("title"));
	String to_content=codeToString(request.getParameter("content"));
	//--------建立邮件会话--------
	Properties props=new Properties();//也可用Properties props = System.getProperties(); 
	props.put("mail.smtp.host","smtp.sdu.edu.cn");  //存储发送邮件服务器的信息
	props.put("mail.smtp.auth","true");       //同时通过验证
	Session s=Session.getInstance(props);         //根据属性新建一个邮件会话
	s.setDebug(true);
	//----由邮件会话新建一个消息对象----
	MimeMessage message=new MimeMessage(s);   //由邮件会话新建一个消息对象
	//--------设置邮件--------
	InternetAddress from=new InternetAddress("jiuye@sdu.edu.cn");
	message.setFrom(from);              //设置发件人
	InternetAddress to=new InternetAddress(to_mail);
	message.setRecipient(Message.RecipientType.TO,to);
	//设置收件人,并设置其接收类型为TO
	message.setSubject(to_title);       //设置主题
	message.setText(to_content);        //设置信件内容
	message.setSentDate(new Date());    //设置发信时间
	//--------发送邮件--------
	message.saveChanges();              //存储邮件信息
	Transport transport=s.getTransport("smtp");
	//--以smtp方式登录邮箱,第一个参数是发送邮件用的邮件服务器SMTP地址;第二个参数为用户名;第3个参数为密码
	transport.connect("smtp.sdu.edu.cn","jiuye@sdu.edu.cn","xinxibu64880");
	//发送邮件,其中第二个参数是所有已设好的收件人地址
	transport.sendMessage(message,message.getAllRecipients());
	transport.close();
	out.println("邮件发送成功!");
%>

<%
}
catch(MessagingException e)
{
	out.println("发送失败!");
}
%>
</body>
</html>