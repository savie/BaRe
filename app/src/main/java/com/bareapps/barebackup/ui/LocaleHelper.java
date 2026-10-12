package com.bareapps.barebackup.ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import java.util.Locale;

public final class LocaleHelper {
    private LocaleHelper() {}

    public static Context wrap(Context context) {
        SharedPreferences preferences = context.getSharedPreferences("bare_settings", Context.MODE_PRIVATE);
        String language = preferences.getString("language", "en");
        Locale locale = new Locale("id".equals(language) ? "in" : "en");
        Locale.setDefault(locale);
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.setLocale(locale);
        return context.createConfigurationContext(configuration);
    }
}
