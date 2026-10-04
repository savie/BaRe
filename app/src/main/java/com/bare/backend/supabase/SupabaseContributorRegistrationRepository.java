package com.bare.backend.supabase;

import androidx.annotation.Nullable;

import com.bare.contributor.data.ContributorRegistrationData;
import com.bare.contributor.repository.ContributorRegistrationRepository;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Supabase adapter for the approved public.contributor_registrations model.
 *
 * Reference UID-prefix addressing is accepted only as a compatibility check;
 * the target query is always owned by the authenticated full UUID.
 */
public final class SupabaseContributorRegistrationRepository
        implements ContributorRegistrationRepository {
    private final SupabaseRestClient client;
    private final SupabaseSessionSource sessionSource;

    public SupabaseContributorRegistrationRepository(
            SupabaseRestClient client,
            SupabaseSessionSource sessionSource) {
        if (client == null) throw new NullPointerException("client");
        if (sessionSource == null) throw new NullPointerException("sessionSource");
        this.client = client;
        this.sessionSource = sessionSource;
    }

    @Nullable
    @Override
    public ContributorRegistrationData load(String uidPrefix) {
        String userId = requireCurrentUserId();
        if (!matchesReferencePrefix(userId, uidPrefix)) return null;

        try {
            JSONArray rows = client.getArray(
                    "/rest/v1/contributor_registrations?user_id=eq."
                            + encode(userId) + "&limit=1");
            if (rows.length() == 0) return null;

            JSONObject row = rows.getJSONObject(0);
            String typeValue = nullable(row, "type");
            ContributorRegistrationData.Type type = null;
            if ("TRANSLATOR".equals(typeValue)) {
                type = ContributorRegistrationData.Type.TRANSLATOR;
            } else if ("COMMUNITY_HELPER".equals(typeValue)) {
                type = ContributorRegistrationData.Type.COMMUNITY_HELPER;
            }

            return new ContributorRegistrationData(
                    nullable(row, "status"),
                    type,
                    nullable(row, "name"),
                    nullable(row, "locales"),
                    nullable(row, "telegram_id"),
                    nullable(row, "crowdin_id"),
                    nullable(row, "paypal_id"));
        } catch (Exception e) {
            throw new IllegalStateException(
                    "Unable to load Supabase contributor registration", e);
        }
    }

    @Override
    public boolean isRegistered(String uidPrefix) {
        return load(uidPrefix) != null;
    }

    private String requireCurrentUserId() {
        SupabaseSessionSource.Session session = sessionSource.current();
        if (session == null || session.identity == null || session.identity.id == null) {
            throw new IllegalStateException("Supabase session is required");
        }
        return session.identity.id;
    }

    private static boolean matchesReferencePrefix(String uid, String prefix) {
        if (prefix == null || prefix.trim().isEmpty()) return false;
        String normalized = uid.length() <= 6 ? uid : uid.substring(0, 6);
        return normalized.equals(prefix);
    }

    private static String nullable(JSONObject row, String key) {
        return row.isNull(key) ? null : row.optString(key, null);
    }

    private static String encode(String value) {
        return value.replace("%", "%25").replace(" ", "%20").replace("?", "%3F")
                .replace("#", "%23").replace("/", "%2F");
    }
}
