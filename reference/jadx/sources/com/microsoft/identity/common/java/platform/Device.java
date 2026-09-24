package com.microsoft.identity.common.java.platform;

import android.os.Build;
import com.microsoft.identity.common.adal.internal.PowerManagerWrapper;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import net.jcip.annotations.GuardedBy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class Device {
    private static PowerManagerWrapper sDeviceMetadata;
    private static Boolean sIsInPersonalProfileButClouddpcWorkProfileAvailable;
    private static final ReentrantReadWriteLock sLock = new ReentrantReadWriteLock();

    @GuardedBy("sLock")
    public static String getAndroidReleaseOs() {
        ReentrantReadWriteLock reentrantReadWriteLock = sLock;
        reentrantReadWriteLock.readLock().lock();
        try {
            return sDeviceMetadata != null ? Build.VERSION.RELEASE : "NOT_SET";
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    @GuardedBy("sLock")
    public static String getCpu() {
        String str;
        ReentrantReadWriteLock reentrantReadWriteLock = sLock;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (sDeviceMetadata != null) {
                String[] strArr = Build.SUPPORTED_ABIS;
                str = (strArr == null || strArr.length <= 0) ? "UNKNOWN" : strArr[0];
            } else {
                str = "NOT_SET";
            }
            return str;
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    @GuardedBy("sLock")
    public static String getManufacturer() {
        ReentrantReadWriteLock reentrantReadWriteLock = sLock;
        reentrantReadWriteLock.readLock().lock();
        try {
            return sDeviceMetadata != null ? Build.MANUFACTURER : "NOT_SET";
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    @GuardedBy("sLock")
    public static String getModel() {
        ReentrantReadWriteLock reentrantReadWriteLock = sLock;
        reentrantReadWriteLock.readLock().lock();
        try {
            return sDeviceMetadata != null ? Build.MODEL : "NOT_SET";
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    @GuardedBy("sLock")
    public static String getOsForEsts() {
        ReentrantReadWriteLock reentrantReadWriteLock = sLock;
        reentrantReadWriteLock.readLock().lock();
        try {
            return sDeviceMetadata != null ? String.valueOf(Build.VERSION.SDK_INT) : "NOT_SET";
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    @GuardedBy("sLock")
    public static Map<String, String> getPlatformIdParameters() {
        ReentrantReadWriteLock reentrantReadWriteLock = sLock;
        reentrantReadWriteLock.readLock().lock();
        try {
            HashMap map = new HashMap();
            if (sDeviceMetadata != null) {
                String[] strArr = Build.SUPPORTED_ABIS;
                map.put("x-client-CPU", (strArr == null || strArr.length <= 0) ? "UNKNOWN" : strArr[0]);
                sDeviceMetadata.getClass();
                map.put("x-client-OS", String.valueOf(Build.VERSION.SDK_INT));
                sDeviceMetadata.getClass();
                map.put("x-client-DM", Build.MODEL);
                sDeviceMetadata.getClass();
                map.put("x-client-MN", Build.MANUFACTURER);
            } else {
                map.put("x-client-CPU", "NOT_SET");
                map.put("x-client-OS", "NOT_SET");
                map.put("x-client-DM", "NOT_SET");
                map.put("x-client-MN", "NOT_SET");
            }
            return Collections.unmodifiableMap(map);
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    @GuardedBy("sLock")
    public static Boolean isInPersonalProfileButClouddpcWorkProfileAvailable() {
        ReentrantReadWriteLock reentrantReadWriteLock = sLock;
        reentrantReadWriteLock.readLock().lock();
        try {
            return sIsInPersonalProfileButClouddpcWorkProfileAvailable;
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    @GuardedBy("sLock")
    public static void setDeviceMetadata(PowerManagerWrapper powerManagerWrapper) {
        ReentrantReadWriteLock reentrantReadWriteLock = sLock;
        reentrantReadWriteLock.writeLock().lock();
        try {
            sDeviceMetadata = powerManagerWrapper;
        } finally {
            reentrantReadWriteLock.writeLock().unlock();
        }
    }

    @GuardedBy("sLock")
    public static void setIsInPersonalProfileButClouddpcWorkProfileAvailable(Boolean bool) {
        ReentrantReadWriteLock reentrantReadWriteLock = sLock;
        reentrantReadWriteLock.writeLock().lock();
        try {
            sIsInPersonalProfileButClouddpcWorkProfileAvailable = bool;
        } finally {
            reentrantReadWriteLock.writeLock().unlock();
        }
    }
}
