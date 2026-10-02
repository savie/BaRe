package com.bare.contributor;

import android.content.Context;

import com.bare.contributor.data.ContributorRegistrationData;
import com.bare.core.state.LocalState;

import org.json.JSONObject;

public final class ContributorRegistrationRepository {
    public static final String KEY_REGISTRATION = "contributor_registration";

    private final LocalState localState;

    public ContributorRegistrationRepository(Context context) {
        localState = new LocalState(context);
    }

    public ContributorRegistrationData loadLocal() {
        String serialized = localState.getString(KEY_REGISTRATION, null);
        if (serialized == null || serialized.isEmpty()) return null;

        try {
            JSONObject value = new JSONObject(serialized);
            String typeValue = value.optString("type", "");
            ContributorRegistrationData.Type type =
                    "TRANSLATOR".equals(typeValue)
                            ? ContributorRegistrationData.Type.TRANSLATOR
                            : ContributorRegistrationData.Type.COMMUNITY_HELPER;

            return new ContributorRegistrationData(
                    value.optString("status", ""),
                    type,
                    value.optString("name", ""),
                    value.optString("locales", ""),
                    value.optString("telegramId", ""),
                    value.optString("crowdinId", ""),
                    value.optString("paypalId", ""));
        } catch (Exception ignored) {
            return null;
        }
    }

    public boolean saveLocal(ContributorRegistrationData registration) {
        if (registration == null || !registration.isValid()) return false;

        JSONObject value = new JSONObject();
        try {
            value.put("status", registration.status);
            value.put("type", registration.type == null
                    ? ContributorRegistrationData.Type.COMMUNITY_HELPER.name()
                    : registration.type.name());
            value.put("name", registration.name);
            value.put("locales", registration.locales);
            value.put("telegramId", registration.telegramId);
            value.put("crowdinId", registration.crowdinId);
            value.put("paypalId", registration.paypalId);
            localState.putString(KEY_REGISTRATION, value.toString());
            return true;
        } catch (Exception ignored) {
            return false;
        }
    }

    public void clearLocal() {
        localState.remove(KEY_REGISTRATION);
    }

    /**
     * Remote contributorDetails fetch/save is deliberately not implemented here:
     * the target backend boundary is downstream and must use Supabase.
     */
}
