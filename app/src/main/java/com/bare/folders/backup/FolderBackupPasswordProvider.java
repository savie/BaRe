package com.bare.folders.backup;

import android.content.Context;

import com.bare.core.state.SecureLocalState;
import com.bare.home.repository.AnonymousIdentityStore;
import com.bare.settings.PasswordStrategy;
import com.bare.settings.PasswordStrategyRepository;

/** Reference-compatible local folder SBA password owner. */
public final class FolderBackupPasswordProvider {
    private FolderBackupPasswordProvider() {}

    public static String get(Context context) {
        Context app = context.getApplicationContext();
        String uid = new AnonymousIdentityStore(app).getOrCreateUid();
        String value = referenceHash(new StringBuilder(uid).reverse().toString());
        PasswordStrategyRepository repo =
                new PasswordStrategyRepository(new PreferenceState(app));
        if (repo.read() == PasswordStrategy.USER_PASSWORD) {
            String user = repo.readUserPassword();
            if (user != null && !user.isEmpty()) value += referenceHash(user);
        }
        return value;
    }

    private static String referenceHash(String value) {
        return com.bare.messagescalls.backups.CallsBackupRepository.referenceHash(value);
    }

    private static final class PreferenceState implements SecureLocalState {
        private final android.content.SharedPreferences preferences;

        PreferenceState(Context context) {
            preferences = context.getSharedPreferences(
                    context.getPackageName() + "_preferences", Context.MODE_PRIVATE);
        }

        @Override public boolean contains(String key) { return preferences.contains(key); }
        @Override public boolean getBoolean(String key, boolean defaultValue) {
            return preferences.getBoolean(key, defaultValue);
        }
        @Override public void putBoolean(String key, boolean value) {
            preferences.edit().putBoolean(key, value).apply();
        }
        @Override public int getInt(String key, int defaultValue) {
            return preferences.getInt(key, defaultValue);
        }
        @Override public void putInt(String key, int value) {
            preferences.edit().putInt(key, value).apply();
        }
        @Override public void putString(String key, String value) {
            preferences.edit().putString(key, value).apply();
        }
        @Override public String getString(String key, String defaultValue) {
            return preferences.getString(key, defaultValue);
        }
        @Override public void remove(String key) {
            preferences.edit().remove(key).apply();
        }
    }
}
