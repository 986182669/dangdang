package org.sunrise.dangdang.email;import javax.mail.Message;import javax.mail.MessagingException;import javax.mail.Session;import javax.mail.Transport;import javax.mail.internet.InternetAddress;import javax.mail.internet.MimeMessage;import java.io.*;import java.util.Date;import java.util.Properties;public class Email {    public String myEmailAccount;    public String myEmailPassword;    public String myEmailSMTPHost;    private String receiveEmailAccount;    private String content;    public static Email defaultEmail(String receiveEmailAccount,String content) throws IOException {        Email email = new Email();        email.setReceiveEmail(receiveEmailAccount,content);        email.setMyEmail();        return email;    }    public static Email defineEmail(String myEmailAccount,String myEmailPassword,String myEmailSMTPHost,String receiveEmailAccount,String content){        Email email = new Email();        email.setMyEmail(myEmailAccount,myEmailPassword,myEmailSMTPHost);        email.setReceiveEmail(receiveEmailAccount,content);        return email;    }    private void setReceiveEmail(String receiveEmailAccount,String content){        this.receiveEmailAccount = receiveEmailAccount;        this.content = content;    }    private void setMyEmail() throws IOException {        Properties properties = new Properties();        properties.load(new BufferedInputStream(new FileInputStream("E:\\dangdang\\src\\main\\resources\\email.properties")));        this.myEmailAccount = properties.getProperty("myEmailAccount");        this.myEmailPassword = properties.getProperty("myEmailPassword");        this.myEmailSMTPHost = properties.getProperty("myEmailSMTPHost");        System.out.println(this.myEmailAccount+this.myEmailPassword+this.myEmailSMTPHost+this.receiveEmailAccount+this.content);    }    private void setMyEmail(String myEmailAccount,String myEmailPassword,String myEmailSMTPHost){        this.myEmailAccount = myEmailAccount;        this.myEmailPassword = myEmailPassword;        this.myEmailSMTPHost = myEmailSMTPHost;    }    public void sendEmail() throws UnsupportedEncodingException, MessagingException {        Properties props = new Properties();         // 参数配置        final String smtpPort = "587";        props.setProperty("mail.smtp.port",smtpPort);        props.setProperty("mail.transport.protocol", "smtp");   // 使用的协议（JavaMail规范要求）        props.setProperty("mail.smtp.host", myEmailSMTPHost);   // 发件人的邮箱的 SMTP 服务器地址        props.setProperty("mail.smtp.auth", "true");            // 需要请求认证       /* ;        props.setProperty("mail.smtp.port", smtpPort);        props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");        props.setProperty("mail.smtp.socketFactory.fallback", "false");        props.setProperty("mail.smtp.socketFactory.port", smtpPort);*/        Session session = Session.getInstance(props);        session.setDebug(true);        Message msg = this.createMimeMessage(session,myEmailAccount,receiveEmailAccount,content);        Transport transport = session.getTransport();        transport.connect(myEmailAccount,myEmailPassword);        transport.sendMessage(msg,msg.getAllRecipients());        transport.close();    }    private MimeMessage createMimeMessage(Session session,String sendMail,String receiveEmail,String content) throws UnsupportedEncodingException, MessagingException {        MimeMessage mimeMessage = new MimeMessage(session);        mimeMessage.setFrom(new InternetAddress(sendMail,"Admin","UTF-8"));        mimeMessage.setRecipient(Message.RecipientType.TO,new InternetAddress(receiveEmail,"Admin","UTF-8"));        mimeMessage.setSubject("注册验证","UTF-8");        mimeMessage.setContent(content,"text/html;charset=UTF-8");        mimeMessage.setSentDate(new Date());        mimeMessage.saveChanges();        return mimeMessage;    }}