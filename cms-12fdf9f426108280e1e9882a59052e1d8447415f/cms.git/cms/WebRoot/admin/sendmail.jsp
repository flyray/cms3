<%@ page contentType="text/html;charset=gb2312" %>
<!--����Ҫ�õ������-->
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%!
public String codeToString(String str)
{//���������ַ����ĺ���
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
<title>�����ʼ�</title>
</head>

<body>
<%
try
{
	//��html���н����ʼ���Ϣ
	String to_mail=codeToString(request.getParameter("to"));
	String to_title=codeToString(request.getParameter("title"));
	String to_content=codeToString(request.getParameter("content"));
	//--------�����ʼ��Ự--------
	Properties props=new Properties();//Ҳ����Properties props = System.getProperties(); 
	props.put("mail.smtp.host","smtp.sdu.edu.cn");  //�洢�����ʼ�����������Ϣ
	props.put("mail.smtp.auth","true");       //ͬʱͨ����֤
	Session s=Session.getInstance(props);         //���������½�һ���ʼ��Ự
	s.setDebug(true);
	//----���ʼ��Ự�½�һ����Ϣ����----
	MimeMessage message=new MimeMessage(s);   //���ʼ��Ự�½�һ����Ϣ����
	//--------�����ʼ�--------
	InternetAddress from=new InternetAddress("jiuye@sdu.edu.cn");
	message.setFrom(from);              //���÷�����
	InternetAddress to=new InternetAddress(to_mail);
	message.setRecipient(Message.RecipientType.TO,to);
	//�����ռ���,���������������ΪTO
	message.setSubject(to_title);       //��������
	message.setText(to_content);        //�����ż�����
	message.setSentDate(new Date());    //���÷���ʱ��
	//--------�����ʼ�--------
	message.saveChanges();              //�洢�ʼ���Ϣ
	Transport transport=s.getTransport("smtp");
	//--��smtp��ʽ��¼����,��һ�������Ƿ����ʼ��õ��ʼ�������SMTP��ַ;�ڶ�������Ϊ�û���;��3������Ϊ����
	transport.connect("smtp.sdu.edu.cn","jiuye@sdu.edu.cn","xinxibu64880");
	//�����ʼ�,���еڶ�����������������õ��ռ��˵�ַ
	transport.sendMessage(message,message.getAllRecipients());
	transport.close();
	out.println("�ʼ����ͳɹ�!");
%>

<%
}
catch(MessagingException e)
{
	out.println("����ʧ��!");
}
%>
</body>
</html>