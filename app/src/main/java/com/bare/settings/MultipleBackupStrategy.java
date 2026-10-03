package com.bare.settings;

import android.content.SharedPreferences;
import android.os.Parcel;
import android.os.Parcelable;

import org.json.JSONObject;

public final class MultipleBackupStrategy implements Parcelable {
    public static final int TYPE_SINGLE_BACKUP = 0;
    public static final int TYPE_DATED_BACKUPS = 1;
    public static final int TYPE_CONDITIONAL_BACKUP = 2;
    public static final int CONDITION_APK_CHANGES = 0;
    public static final int CONDITION_DATA_CHANGES = 1;
    public static final int CONDITION_ANY_CHANGES = 2;
    public static final int MIN_NUM_OF_MULTIPLE_BACKUPS = 2;
    public static final int MAX_NUM_OF_MULTIPLE_BACKUPS = 10;
    public static final String PREF_KEY_STRATEGY = "apps_multiple_backups_strategy";
    public static final String PREF_KEY_LEGACY_ARCHIVING = "app_backup_archiving";

    private final int type;
    private final Integer maxNumOfBackups;
    private final Integer condition;

    public MultipleBackupStrategy(int type, int maxNumOfBackups, int condition) {
        this(type, type == TYPE_SINGLE_BACKUP ? null : clampCount(maxNumOfBackups),
                type == TYPE_CONDITIONAL_BACKUP ? clampCondition(condition) : null);
    }

    private MultipleBackupStrategy(int type, Integer maxNumOfBackups, Integer condition) {
        this.type = type;
        this.maxNumOfBackups = maxNumOfBackups;
        this.condition = condition;
    }

    public static MultipleBackupStrategy singleBackup() {
        return new MultipleBackupStrategy(TYPE_SINGLE_BACKUP, null, null);
    }

    public static MultipleBackupStrategy datedBackups(int count) {
        return new MultipleBackupStrategy(TYPE_DATED_BACKUPS, clampCount(count), null);
    }

    public static MultipleBackupStrategy conditionalBackup(int count, int condition) {
        return new MultipleBackupStrategy(TYPE_CONDITIONAL_BACKUP, clampCount(count), clampCondition(condition));
    }

    public static MultipleBackupStrategy fromPreferences(SharedPreferences prefs) {
        String encoded = prefs.getString(PREF_KEY_STRATEGY, null);
        if (encoded != null && !encoded.trim().isEmpty()) {
            try {
                JSONObject json = new JSONObject(encoded);
                int type = json.has("typeInt") ? json.optInt("typeInt", 0) : json.optInt("type", 0);
                Integer count = json.isNull("maxNumOfBackups") ? null : json.optInt("maxNumOfBackups");
                Integer condition = json.isNull("conditionInt") ? null : json.optInt("conditionInt");
                if (type == TYPE_DATED_BACKUPS) return datedBackups(count == null ? 2 : count);
                if (type == TYPE_CONDITIONAL_BACKUP) {
                    return conditionalBackup(count == null ? 2 : count,
                            condition == null ? CONDITION_APK_CHANGES : condition);
                }
                return singleBackup();
            } catch (Exception ignored) {
                // Continue with legacy/default resolution.
            }
        }

        if (prefs.getBoolean(PREF_KEY_LEGACY_ARCHIVING, false)) {
            MultipleBackupStrategy legacy = conditionalBackup(2, CONDITION_APK_CHANGES);
            prefs.edit().putBoolean(PREF_KEY_LEGACY_ARCHIVING, false)
                    .putString(PREF_KEY_STRATEGY, legacy.toJson().toString()).apply();
            return legacy;
        }
        return singleBackup();
    }

    public void saveTo(SharedPreferences prefs) {
        prefs.edit().putString(PREF_KEY_STRATEGY, toJson().toString()).apply();
    }

    public JSONObject toJson() {
        JSONObject json = new JSONObject();
        try {
            json.put("typeInt", type);
            json.put("maxNumOfBackups", maxNumOfBackups == null ? JSONObject.NULL : maxNumOfBackups);
            json.put("conditionInt", condition == null ? JSONObject.NULL : condition);
            return json;
        } catch (Exception e) {
            throw new IllegalStateException("Unable to serialize backup strategy", e);
        }
    }

    public int getType() { return type; }
    public int getMaxNumOfBackups() { return maxNumOfBackups == null ? 0 : maxNumOfBackups; }
    public int getCondition() { return condition == null ? CONDITION_APK_CHANGES : condition; }
    public Integer getMaxNumOfBackupsOrNull() { return maxNumOfBackups; }
    public Integer getConditionOrNull() { return condition; }
    public boolean isSingleBackup() { return type == TYPE_SINGLE_BACKUP; }
    public boolean isMultipleBackups() { return !isSingleBackup(); }

    public String displayTitle() {
        switch (type) {
            case TYPE_DATED_BACKUPS: return "New backup each time";
            case TYPE_CONDITIONAL_BACKUP: return "Conditional new backups";
            default: return "Single backup";
        }
    }

    public String displaySubtitle() {
        switch (type) {
            case TYPE_DATED_BACKUPS:
                return "Create a new backup each time you perform a backup.";
            case TYPE_CONDITIONAL_BACKUP:
                return "Create a new backup only if any of the below conditions are fulfilled when you perform a backup. Otherwise, just update the latest backup.";
            default:
                return "Keep a single backup and update/overwrite the changed parts when you perform a backup.";
        }
    }

    public static int clampCount(int count) {
        return Math.max(MIN_NUM_OF_MULTIPLE_BACKUPS, Math.min(MAX_NUM_OF_MULTIPLE_BACKUPS, count));
    }

    private static int clampCondition(int condition) {
        return Math.max(CONDITION_APK_CHANGES, Math.min(CONDITION_ANY_CHANGES, condition));
    }

    protected MultipleBackupStrategy(Parcel in) {
        type = in.readInt();
        maxNumOfBackups = in.readInt() == 0 ? null : in.readInt();
        condition = in.readInt() == 0 ? null : in.readInt();
    }

    public static final Creator<MultipleBackupStrategy> CREATOR = new Creator<MultipleBackupStrategy>() {
        @Override public MultipleBackupStrategy createFromParcel(Parcel in) { return new MultipleBackupStrategy(in); }
        @Override public MultipleBackupStrategy[] newArray(int size) { return new MultipleBackupStrategy[size]; }
    };

    @Override public int describeContents() { return 0; }

    @Override public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(type);
        if (maxNumOfBackups == null) dest.writeInt(0); else { dest.writeInt(1); dest.writeInt(maxNumOfBackups); }
        if (condition == null) dest.writeInt(0); else { dest.writeInt(1); dest.writeInt(condition); }
    }

    @Override public boolean equals(Object obj) {
        if (!(obj instanceof MultipleBackupStrategy)) return false;
        MultipleBackupStrategy other = (MultipleBackupStrategy) obj;
        return type == other.type
                && java.util.Objects.equals(maxNumOfBackups, other.maxNumOfBackups)
                && java.util.Objects.equals(condition, other.condition);
    }

    @Override public int hashCode() { return java.util.Objects.hash(type, maxNumOfBackups, condition); }

    @Override public String toString() {
        return "MultipleBackupStrategy(typeInt=" + type + ", maxNumOfBackups=" + maxNumOfBackups
                + ", conditionInt=" + condition + ")";
    }
}