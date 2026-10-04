package com.bare.backend.supabase;

import androidx.annotation.Nullable;

import com.bare.account.data.UserInfo;
import com.bare.account.repository.UserInfoRepository;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Supabase adapter for the approved public.user_profiles model.
 *
 * The database identity is the authenticated Auth UUID; no anonymous flag is
 * persisted here because anonymity is derived from Supabase Auth.
 */
public final class SupabaseUserInfoRepository implements UserInfoRepository {
    private final SupabaseRestClient client;
    private final int currentAppVersion;

    public SupabaseUserInfoRepository(
            SupabaseRestClient client,
            int currentAppVersion) {
        if (client == null) throw new NullPointerException("client");
        this.client = client;
        this.currentAppVersion = currentAppVersion;
    }

    @Nullable
    @Override
    public UserInfo load(String uid) {
        requireUid(uid);
        try {
            JSONArray rows = client.getArray(
                    "/rest/v1/user_profiles?id=eq." + encode(uid) + "&limit=1");
            if (rows.length() == 0) return null;

            JSONObject row = rows.getJSONObject(0);
            return new UserInfo(
                    row.getString("id"),
                    null,
                    nullable(row, "display_name"),
                    nullable(row, "email"),
                    nullable(row, "photo_url"),
                    row.optInt("latest_app_version", currentAppVersion),
                    row.optInt("current_app_version", currentAppVersion));
        } catch (Exception e) {
            throw new IllegalStateException("Unable to load Supabase user profile", e);
        }
    }

    @Override
    public void save(UserInfo userInfo) {
        if (userInfo == null) throw new NullPointerException("userInfo");
        requireUid(userInfo.id);

        try {
            JSONObject row = new JSONObject();
            row.put("id", userInfo.id);
            putNullable(row, "display_name", userInfo.displayName);
            putNullable(row, "email", userInfo.email);
            putNullable(row, "photo_url", userInfo.photoUrl);
            row.put("latest_app_version", userInfo.latestAppVersion);
            row.put("current_app_version", userInfo.currentAppVersion);

            client.postObject(
                    "/rest/v1/user_profiles?on_conflict=id",
                    row);
        } catch (Exception e) {
            throw new IllegalStateException("Unable to save Supabase user profile", e);
        }
    }

    private static String nullable(JSONObject row, String key) {
        return row.isNull(key) ? null : row.optString(key, null);
    }

    private static void putNullable(JSONObject row, String key, String value)
            throws Exception {
        if (value == null) row.put(key, JSONObject.NULL);
        else row.put(key, value);
    }

    private static void requireUid(String uid) {
        if (uid == null || uid.trim().isEmpty()) throw new IllegalArgumentException("uid");
    }

    private static String encode(String value) {
        return value.replace("%", "%25").replace(" ", "%20").replace("?", "%3F")
                .replace("#", "%23").replace("/", "%2F");
    }
}
