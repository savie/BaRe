package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import defpackage.ib;
import defpackage.ly8;
import defpackage.mq7;
import defpackage.wc9;
import defpackage.x13;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class FirebaseOptions {
    private static final String API_KEY_RESOURCE_NAME = "google_api_key";
    private static final String APP_ID_RESOURCE_NAME = "google_app_id";
    private static final String DATABASE_URL_RESOURCE_NAME = "firebase_database_url";
    private static final String GA_TRACKING_ID_RESOURCE_NAME = "ga_trackingId";
    private static final String GCM_SENDER_ID_RESOURCE_NAME = "gcm_defaultSenderId";
    private static final String PROJECT_ID_RESOURCE_NAME = "project_id";
    private static final String STORAGE_BUCKET_RESOURCE_NAME = "google_storage_bucket";
    private final String apiKey;
    private final String applicationId;
    private final String databaseUrl;
    private final String gaTrackingId;
    private final String gcmSenderId;
    private final String projectId;
    private final String storageBucket;

    private FirebaseOptions(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        int i = mq7.a;
        ly8.k("ApplicationId must be set.", true ^ (str == null || str.trim().isEmpty()));
        this.applicationId = str;
        this.apiKey = str2;
        this.databaseUrl = str3;
        this.gaTrackingId = str4;
        this.gcmSenderId = str5;
        this.storageBucket = str6;
        this.projectId = str7;
    }

    public static FirebaseOptions fromResource(Context context) {
        wc9 wc9Var = new wc9(context, 8);
        String strE = wc9Var.e(APP_ID_RESOURCE_NAME);
        if (TextUtils.isEmpty(strE)) {
            return null;
        }
        return new FirebaseOptions(strE, wc9Var.e(API_KEY_RESOURCE_NAME), wc9Var.e(DATABASE_URL_RESOURCE_NAME), wc9Var.e(GA_TRACKING_ID_RESOURCE_NAME), wc9Var.e(GCM_SENDER_ID_RESOURCE_NAME), wc9Var.e(STORAGE_BUCKET_RESOURCE_NAME), wc9Var.e(PROJECT_ID_RESOURCE_NAME));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FirebaseOptions)) {
            return false;
        }
        FirebaseOptions firebaseOptions = (FirebaseOptions) obj;
        return x13.m(this.applicationId, firebaseOptions.applicationId) && x13.m(this.apiKey, firebaseOptions.apiKey) && x13.m(this.databaseUrl, firebaseOptions.databaseUrl) && x13.m(this.gaTrackingId, firebaseOptions.gaTrackingId) && x13.m(this.gcmSenderId, firebaseOptions.gcmSenderId) && x13.m(this.storageBucket, firebaseOptions.storageBucket) && x13.m(this.projectId, firebaseOptions.projectId);
    }

    public String getApiKey() {
        return this.apiKey;
    }

    public String getApplicationId() {
        return this.applicationId;
    }

    public String getDatabaseUrl() {
        return this.databaseUrl;
    }

    public String getGaTrackingId() {
        return this.gaTrackingId;
    }

    public String getGcmSenderId() {
        return this.gcmSenderId;
    }

    public String getProjectId() {
        return this.projectId;
    }

    public String getStorageBucket() {
        return this.storageBucket;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.applicationId, this.apiKey, this.databaseUrl, this.gaTrackingId, this.gcmSenderId, this.storageBucket, this.projectId});
    }

    public String toString() {
        ib ibVar = new ib(this);
        ibVar.b(this.applicationId, "applicationId");
        ibVar.b(this.apiKey, "apiKey");
        ibVar.b(this.databaseUrl, "databaseUrl");
        ibVar.b(this.gcmSenderId, "gcmSenderId");
        ibVar.b(this.storageBucket, "storageBucket");
        ibVar.b(this.projectId, "projectId");
        return ibVar.toString();
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Builder {
        private String apiKey;
        private String applicationId;
        private String databaseUrl;
        private String gaTrackingId;
        private String gcmSenderId;
        private String projectId;
        private String storageBucket;

        public Builder(FirebaseOptions firebaseOptions) {
            this.applicationId = firebaseOptions.applicationId;
            this.apiKey = firebaseOptions.apiKey;
            this.databaseUrl = firebaseOptions.databaseUrl;
            this.gaTrackingId = firebaseOptions.gaTrackingId;
            this.gcmSenderId = firebaseOptions.gcmSenderId;
            this.storageBucket = firebaseOptions.storageBucket;
            this.projectId = firebaseOptions.projectId;
        }

        public FirebaseOptions build() {
            return new FirebaseOptions(this.applicationId, this.apiKey, this.databaseUrl, this.gaTrackingId, this.gcmSenderId, this.storageBucket, this.projectId);
        }

        public Builder setApiKey(String str) {
            ly8.f(str, "ApiKey must be set.");
            this.apiKey = str;
            return this;
        }

        public Builder setApplicationId(String str) {
            ly8.f(str, "ApplicationId must be set.");
            this.applicationId = str;
            return this;
        }

        public Builder setDatabaseUrl(String str) {
            this.databaseUrl = str;
            return this;
        }

        public Builder setGaTrackingId(String str) {
            this.gaTrackingId = str;
            return this;
        }

        public Builder setGcmSenderId(String str) {
            this.gcmSenderId = str;
            return this;
        }

        public Builder setProjectId(String str) {
            this.projectId = str;
            return this;
        }

        public Builder setStorageBucket(String str) {
            this.storageBucket = str;
            return this;
        }

        public Builder() {
        }
    }
}
