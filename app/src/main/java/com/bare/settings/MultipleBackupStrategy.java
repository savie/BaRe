package com.bare.settings;

import android.os.Parcel;
import android.os.Parcelable;

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

    private final int type;
    private final int maxNumOfBackups;
    private final int condition;

    public MultipleBackupStrategy(int type, int maxNumOfBackups, int condition) {
        this.type = type;
        this.maxNumOfBackups = maxNumOfBackups;
        this.condition = condition;
    }

    public static MultipleBackupStrategy singleBackup() {
        return new MultipleBackupStrategy(TYPE_SINGLE_BACKUP, 1, CONDITION_APK_CHANGES);
    }

    public static MultipleBackupStrategy datedBackups(int count) {
        return new MultipleBackupStrategy(TYPE_DATED_BACKUPS,
                clampCount(count), CONDITION_APK_CHANGES);
    }

    public static MultipleBackupStrategy conditionalBackup(int count, int condition) {
        return new MultipleBackupStrategy(TYPE_CONDITIONAL_BACKUP,
                clampCount(count), clampCondition(condition));
    }

    public static MultipleBackupStrategy fromPreferences(android.content.SharedPreferences prefs) {
        String encoded = prefs.getString(PREF_KEY_STRATEGY, null);
        if (encoded == null || encoded.isEmpty()) {
            return singleBackup();
        }
        try {
            String[] parts = encoded.split(",", -1);
            int type = Integer.parseInt(parts[0]);
            int count = parts.length > 1 ? Integer.parseInt(parts[1]) : 2;
            int condition = parts.length > 2 ? Integer.parseInt(parts[2]) : CONDITION_APK_CHANGES;
            if (type == TYPE_DATED_BACKUPS) return datedBackups(count);
            if (type == TYPE_CONDITIONAL_BACKUP) return conditionalBackup(count, condition);
        } catch (RuntimeException ignored) {
        }
        return singleBackup();
    }

    public void saveTo(android.content.SharedPreferences prefs) {
        prefs.edit().putString(PREF_KEY_STRATEGY,
                type + "," + maxNumOfBackups + "," + condition).apply();
    }

    public int getType() { return type; }
    public int getMaxNumOfBackups() { return maxNumOfBackups; }
    public int getCondition() { return condition; }

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
        return Math.max(MIN_NUM_OF_MULTIPLE_BACKUPS,
                Math.min(MAX_NUM_OF_MULTIPLE_BACKUPS, count));
    }

    private static int clampCondition(int condition) {
        return Math.max(CONDITION_APK_CHANGES, Math.min(CONDITION_ANY_CHANGES, condition));
    }

    protected MultipleBackupStrategy(Parcel in) {
        type = in.readInt();
        maxNumOfBackups = in.readInt();
        condition = in.readInt();
    }

    public static final Creator<MultipleBackupStrategy> CREATOR = new Creator<MultipleBackupStrategy>() {
        @Override public MultipleBackupStrategy createFromParcel(Parcel in) {
            return new MultipleBackupStrategy(in);
        }
        @Override public MultipleBackupStrategy[] newArray(int size) {
            return new MultipleBackupStrategy[size];
        }
    };

    @Override public int describeContents() { return 0; }

    @Override public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(type);
        dest.writeInt(maxNumOfBackups);
        dest.writeInt(condition);
    }

    @Override public boolean equals(Object obj) {
        if (!(obj instanceof MultipleBackupStrategy)) return false;
        MultipleBackupStrategy other = (MultipleBackupStrategy) obj;
        return type == other.type && maxNumOfBackups == other.maxNumOfBackups && condition == other.condition;
    }

    @Override public int hashCode() {
        int result = type;
        result = 31 * result + maxNumOfBackups;
        return 31 * result + condition;
    }

    @Override public String toString() {
        return "MultipleBackupStrategy(type=" + type + ", maxNumOfBackups=" + maxNumOfBackups
                + ", condition=" + condition + ")";
    }
}
