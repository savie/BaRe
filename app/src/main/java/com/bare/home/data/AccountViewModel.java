package com.bare.home.data;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

import java.util.Arrays;
import java.util.List;

public final class AccountViewModel extends ViewModel {
    public static final class Item {
        public final String title;
        public final String key;
        public Item(String key, String title) { this.key = key; this.title = title; }
    }

    private final MutableLiveData<String> userName = new MutableLiveData<>("BΛR☰ User");
    private final MutableLiveData<String> userEmail = new MutableLiveData<>("");
    private final MutableLiveData<List<Item>> items = new MutableLiveData<>(Arrays.asList(
            new Item("settings", "Settings"),
            new Item("swiftlogger", "SLog"),
            new Item("language", "Language"),
            new Item("help", "Help Center"),
            new Item("contact", "Contact"),
            new Item("rate", "Rate"),
            new Item("share", "Share BΛR☰"),
            new Item("about", "About")
    ));

    public LiveData<String> getUserName() { return userName; }
    public LiveData<String> getUserEmail() { return userEmail; }
    public LiveData<List<Item>> getItems() { return items; }
}