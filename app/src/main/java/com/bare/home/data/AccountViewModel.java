package com.bare.home.data;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class AccountViewModel extends ViewModel {
    public static final class User {
        public final String uid;
        public final String email;
        public final String displayName;
        public final String photoUrl;
        public final boolean anonymous;

        public User(String uid, String email, String displayName, String photoUrl, boolean anonymous) {
            this.uid = uid;
            this.email = email;
            this.displayName = displayName;
            this.photoUrl = photoUrl;
            this.anonymous = anonymous;
        }
    }

    public static final class Item {
        public final int id;
        public final String key;
        public final String title;
        public final int iconResource;

        public Item(int id, String key, String title, int iconResource) {
            this.id = id;
            this.key = key;
            this.title = title;
            this.iconResource = iconResource;
        }
    }

    private final MutableLiveData<User> user = new MutableLiveData<>();
    private final MutableLiveData<List<Item>> items = new MutableLiveData<>(Collections.emptyList());
    private final MutableLiveData<Boolean> contributorRegistered = new MutableLiveData<>(false);

    public AccountViewModel() {
        configureItems(false);
    }

    public LiveData<User> getUser() { return user; }
    public LiveData<List<Item>> getItems() { return items; }
    public LiveData<Boolean> getContributorRegistered() { return contributorRegistered; }

    public void setUser(User value) { user.setValue(value); }

    /**
     * Exact r7 menu ordering/IDs. Contributor entry is conditional.
     * Firebase-specific user acquisition remains a backend adapter boundary.
     */
    public void configureItems(boolean registeredContributor) {
        contributorRegistered.setValue(registeredContributor);
        ArrayList<Item> result = new ArrayList<>();
        result.add(new Item(1, "settings", "Settings", 0));
        if (registeredContributor) {
            result.add(new Item(9, "registered_contributor", "Registered contributor", 0));
        }
        result.addAll(Arrays.asList(
                new Item(2, "swiftlogger", "SLog", 0),
                new Item(3, "language", "Language", 0),
                new Item(7, "help_center", "Help Center", 0),
                new Item(6, "contact", "Contact", 0),
                new Item(4, "rate", "Rate", 0),
                new Item(8, "share", "Share BΛR☰", 0),
                new Item(5, "about", "About", 0)
        ));
        items.setValue(result);
    }
}