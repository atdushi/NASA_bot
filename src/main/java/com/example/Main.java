package com.example;

import org.telegram.telegrambots.meta.exceptions.TelegramApiException;

//https://documentation.suse.com/smart/systems-management/html/reference-systemctl-enable-disable-services/index.html
public class Main {
    public static void main(String[] args) throws TelegramApiException {
        new MyTelegramBot();
    }
}
