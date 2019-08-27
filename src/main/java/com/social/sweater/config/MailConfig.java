package com.social.sweater.config;

import java.util.Properties;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
public class MailConfig {

    @Value("${google.spring.mail.host}")
    private String host;

    @Value("${google.spring.mail.username}")
    private String username;

    @Value("${google.spring.mail.password}")
    private String password;

    @Value("${google.spring.mail.port}")
    private int port;

    @Value("${google.spring.mail.protocol}")
    private String protocol;

    @Value("${google.mail.debug}")
    private String debug;


    @Bean
    public JavaMailSender getMailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost(host);
        mailSender.setPort(port);
        mailSender.setUsername(username);
        mailSender.setPassword(password);

        Properties properties = mailSender.getJavaMailProperties();
        properties.setProperty("mail.transport.protocol", protocol);
        properties.setProperty("mail.debug", debug);

        return mailSender;
    }
}
