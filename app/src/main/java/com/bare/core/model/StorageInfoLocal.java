package com.bare.core.model;

import android.os.Parcel;
import android.os.Parcelable;

/**
 * Reference-shaped local storage state: Loading, Error, or Success.
 *
 * Persistence/execution remains outside the model; the Reference persistence key is
 * saved_storage_info_local.
 */
public abstract class StorageInfoLocal {
    public static final class Error extends StorageInfoLocal {
        public static final Error INSTANCE = new Error();

        private Error() {
        }

        @Override
        public boolean equals(Object obj) {
            return this == obj || obj instanceof Error;
        }

        @Override
        public int hashCode() {
            return -2054543763;
        }

        @Override
        public String toString() {
            return "Error";
        }
    }

    public static final class Loading extends StorageInfoLocal {
        public static final Loading INSTANCE = new Loading();

        private Loading() {
        }

        @Override
        public boolean equals(Object obj) {
            return this == obj || obj instanceof Loading;
        }

        @Override
        public int hashCode() {
            return -1210929055;
        }

        @Override
        public String toString() {
            return "Loading";
        }
    }

    public static final class Success extends StorageInfoLocal implements Parcelable {
        public static final String SAVED_STORAGE_INFO_KEY = "saved_storage_info_local";

        public static final Creator<Success> CREATOR = new Creator<Success>() {
            @Override
            public Success createFromParcel(Parcel parcel) {
                return new Success(
                        parcel.readLong(),
                        parcel.readLong(),
                        parcel.readInt(),
                        parcel.readLong(),
                        parcel.readFloat()
                );
            }

            @Override
            public Success[] newArray(int size) {
                return new Success[size];
            }
        };

        private final long totalMemory;
        private final long usedMemory;
        private final int usedPercent;
        private final long appUsage;
        private final float appUsagePercent;

        public Success(long totalMemory, long usedMemory, int usedPercent,
                       long appUsage, float appUsagePercent) {
            this.totalMemory = totalMemory;
            this.usedMemory = usedMemory;
            this.usedPercent = usedPercent;
            this.appUsage = appUsage;
            this.appUsagePercent = appUsagePercent;
        }

        public long getTotalMemory() {
            return totalMemory;
        }

        public long getUsedMemory() {
            return usedMemory;
        }

        public int getUsedPercent() {
            return usedPercent;
        }

        public float getUsedPercentExact() {
            return (usedMemory * 100.0f) / totalMemory;
        }

        public long getAppUsage() {
            return appUsage;
        }

        public float getAppUsagePercent() {
            return appUsagePercent;
        }

        public Success copy(long totalMemory, long usedMemory, int usedPercent,
                            long appUsage, float appUsagePercent) {
            return new Success(totalMemory, usedMemory, usedPercent, appUsage, appUsagePercent);
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int flags) {
            parcel.writeLong(totalMemory);
            parcel.writeLong(usedMemory);
            parcel.writeInt(usedPercent);
            parcel.writeLong(appUsage);
            parcel.writeFloat(appUsagePercent);
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success other = (Success) obj;
            return totalMemory == other.totalMemory
                    && usedMemory == other.usedMemory
                    && usedPercent == other.usedPercent
                    && appUsage == other.appUsage
                    && Float.compare(appUsagePercent, other.appUsagePercent) == 0;
        }

        @Override
        public int hashCode() {
            int result = Long.hashCode(totalMemory);
            result = 31 * result + Long.hashCode(usedMemory);
            result = 31 * result + usedPercent;
            result = 31 * result + Long.hashCode(appUsage);
            result = 31 * result + Float.hashCode(appUsagePercent);
            return result;
        }

        @Override
        public String toString() {
            return "Success(totalMemory=" + totalMemory
                    + ", usedMemory=" + usedMemory
                    + ", usedPercent=" + usedPercent
                    + ", appUsage=" + appUsage
                    + ", appUsagePercent=" + appUsagePercent + ")";
        }
    }
}
