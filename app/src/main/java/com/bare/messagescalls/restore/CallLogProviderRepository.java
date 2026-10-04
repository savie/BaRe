package com.bare.messagescalls.restore;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.provider.CallLog;
import android.telephony.SubscriptionManager;

import com.bare.messagescalls.model.CallLogItem;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/** Reference CallLogItem provider projection and restore-provider URI boundary. */
public final class CallLogProviderRepository {
    private static final String TELEPHONY_PHONE_ACCOUNT_COMPONENT_NAME =
            "com.android.phone/com.android.services.telephony.TelephonyConnectionService";
    private final Context context;

    public CallLogProviderRepository(Context context) {
        this.context = context.getApplicationContext();
    }

    public List<CallLogItem> readCurrent() {
        ContentResolver resolver = context.getContentResolver();
        // Reference r92.a queries the provider with a null projection; preserve that
        // behavior so OEM/provider-specific CallLog columns remain available.
            while (cursor.moveToNext()) {
                String component = getString(cursor, accountComponent);
                String subscriptionId = getString(cursor, accountId);
                result.add(new CallLogItem(
                        getLong(cursor, id), getInt(cursor, type), getInt(cursor, features),
                        getString(cursor, number), getInt(cursor, presentation),
                        getString(cursor, countryIso), getLong(cursor, date),
                        getLong(cursor, duration), getLong(cursor, dataUsage),
                        getInt(cursor, newCall), getString(cursor, name),
                        getInt(cursor, numberType), getString(cursor, voicemailUri),
                        getInt(cursor, isRead), getString(cursor, geo), getString(cursor, lookup),
                        getString(cursor, matched), getString(cursor, normalized),
                        getLong(cursor, photoId), getString(cursor, photoUri),
                        getString(cursor, formatted), component, subscriptionId,
                        sourceSimSlotIndex(Build.VERSION.SDK_INT, component, subscriptionId)));
            }
        } catch (SecurityException ignored) {
            return Collections.emptyList();
        }
        return result;
    }

    public static android.net.Uri contentUriForSdk(int sdk) {
        return sdk >= 37 ? CallLog.Calls.CONTENT_URI_WITH_VOIP_CALLS : CallLog.Calls.CONTENT_URI;
    }

    public static List<android.net.Uri> restoreContentUrisForSdk(int sdk) {
        if (sdk >= 37) {
            ArrayList<android.net.Uri> result = new ArrayList<>(2);
            result.add(CallLog.Calls.CONTENT_URI_WITH_VOIP_CALLS);
            result.add(CallLog.Calls.CONTENT_URI);
            return result;
        }
        return Collections.singletonList(CallLog.Calls.CONTENT_URI);
    }

    public static String telephonyPhoneAccountComponent() {
        return TELEPHONY_PHONE_ACCOUNT_COMPONENT_NAME;
    }

    public static Integer sourceSimSlotIndex(int sdk, String component, String subscriptionId) {
        if (sdk < 33 || !TELEPHONY_PHONE_ACCOUNT_COMPONENT_NAME.equals(component)
                || subscriptionId == null) return null;
        try {
            int slot = SubscriptionManager.getSlotIndex(Integer.parseInt(subscriptionId));
            return slot >= 0 ? slot : null;
        } catch (RuntimeException ignored) {
            return null;
        }
    }

    public static String subscriptionIdForSlot(Context context, int slot) {
        if (slot < 0) return null;
        try {
            if (Build.VERSION.SDK_INT >= 34) {
                int id = SubscriptionManager.getSubscriptionId(slot);
                return id >= 0 ? String.valueOf(id) : null;
            }
            if (Build.VERSION.SDK_INT >= 29) {
                SubscriptionManager manager = context.getSystemService(SubscriptionManager.class);
                if (manager != null) {
                    int[] ids = manager.getSubscriptionIds(slot);
                    if (ids != null && ids.length > 0) return String.valueOf(ids[0]);
                }
            }
        } catch (RuntimeException ignored) {
        }
        return null;
    }

    private static String getString(Cursor c, int index) {
        return index < 0 || c.isNull(index) ? null : c.getString(index);
    }
    private static long getLong(Cursor c, int index) {
        return index < 0 || c.isNull(index) ? 0L : c.getLong(index);
    }
    private static int getInt(Cursor c, int index) {
        return index < 0 || c.isNull(index) ? 0 : c.getInt(index);
    }
}
