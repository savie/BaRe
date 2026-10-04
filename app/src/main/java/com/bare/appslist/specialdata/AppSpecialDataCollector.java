package com.bare.appslist.specialdata;

import android.Manifest;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.UserHandle;
import android.provider.Settings;

import com.bare.appslist.engine.AppLocalBackupEngine;
import com.bare.appslist.engine.AppLocalBackupEngine.PrivilegedFileAccess;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Static special-data producer for the app-side restore graph.
 *
 * The supported permission-id list and g/ds/df tokens mirror the Reference
 * AppPermissionsHelper contract. System component state is read from the same
 * secure settings surfaces used by Android for notification/accessibility state.
 */
public final class AppSpecialDataCollector {
    private static final String[] SUPPORTED_PERMISSIONS = {
            "android.permission.READ_CALENDAR","android.permission.WRITE_CALENDAR",
            "android.permission.READ_CALL_LOG","android.permission.WRITE_CALL_LOG",
            "android.permission.PROCESS_OUTGOING_CALLS","android.permission.CAMERA",
            "android.permission.READ_CONTACTS","android.permission.WRITE_CONTACTS",
            "android.permission.GET_ACCOUNTS","android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_COARSE_LOCATION","android.permission.RECORD_AUDIO",
            "android.permission.READ_PHONE_STATE","android.permission.READ_PHONE_NUMBERS",
            "android.permission.CALL_PHONE","android.permission.ANSWER_PHONE_CALLS",
            "com.android.voicemail.permission.ADD_VOICEMAIL","android.permission.USE_SIP",
            "android.permission.BODY_SENSORS","android.permission.SEND_SMS",
            "android.permission.RECEIVE_SMS","android.permission.READ_SMS",
            "android.permission.RECEIVE_WAP_PUSH","android.permission.RECEIVE_MMS",
            "android.permission.READ_EXTERNAL_STORAGE","android.permission.WRITE_EXTERNAL_STORAGE",
            "android.permission.ACCESS_BACKGROUND_LOCATION","android.permission.PACKAGE_USAGE_STATS",
            "android.permission.REQUEST_INSTALL_PACKAGES","android.permission.ACCESS_NOTIFICATION_POLICY",
            "android.permission.SYSTEM_ALERT_WINDOW",
            "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS",
            "RESTRICT_BACKGROUND_DATA_WHITELIST","android.permission.WRITE_SETTINGS",
            "android.permission.BIND_VPN_SERVICE","android.permission.BIND_APPWIDGET",
            "MAGISK_HIDE","android.permission.MANAGE_EXTERNAL_STORAGE",
            "RESTRICT_BACKGROUND_DATA_BLACKLIST","RUN_IN_BACKGROUND_DISABLED",
            "android.permission.SCHEDULE_EXACT_ALARM","android.permission.POST_NOTIFICATIONS",
            "android.permission.NEARBY_WIFI_DEVICES","android.permission.BODY_SENSORS_BACKGROUND",
            "android.permission.READ_MEDIA_AUDIO","android.permission.READ_MEDIA_IMAGES",
            "android.permission.READ_MEDIA_VIDEO","android.permission.WRITE_SECURE_SETTINGS",
            "Wi-Fi Control disabled","Picture-in-picture disabled",
            "Turn screen on disabled","Pause app activity if unused disabled",
            "android.permission.ACCESS_LOCAL_NETWORK"
    };

    private final Context context;
    private final PrivilegedFileAccess privileged;

    public AppSpecialDataCollector(Context context, PrivilegedFileAccess privileged) {
        this.context = context.getApplicationContext();
        this.privileged = privileged;
    }

    public Capture capture(String packageName) throws Exception {
        PackageInfo info = context.getPackageManager().getPackageInfo(
                packageName, PackageManager.GET_PERMISSIONS);
        String permissions = capturePermissionStates(info, packageName);
        String notification = captureComponent(
                Settings.Secure.ENABLED_NOTIFICATION_LISTENERS, packageName);
        String accessibility = captureComponent(
                Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES, packageName);
        String ssaid = captureSsaid(packageName);
        return new Capture(permissions, ssaid, notification, accessibility, null);
    }

    private String capturePermissionStates(PackageInfo info, String packageName) {
        if (info.requestedPermissions == null || info.requestedPermissions.length == 0) return null;
        Map<String, Integer> ids = new HashMap<>();
        for (int i = 0; i < SUPPORTED_PERMISSIONS.length; i++) ids.put(SUPPORTED_PERMISSIONS[i], i);
        ArrayList<String> values = new ArrayList<>();
        for (String permission : info.requestedPermissions) {
            Integer id = ids.get(permission);
            if (id == null) continue;
            String token = "g";
            if (context.getPackageManager().checkPermission(permission, packageName)
                    != PackageManager.PERMISSION_GRANTED) {
                token = permissionFlags(permission, packageName);
            }
            values.add(id + ":" + token);
        }
        Collections.sort(values, (a, b) -> Integer.compare(
                Integer.parseInt(a.substring(0, a.indexOf(':'))),
                Integer.parseInt(b.substring(0, b.indexOf(':')))));
        return values.isEmpty() ? null : join(values, ",");
    }

    private String permissionFlags(String permission, String packageName) {
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                int flags = context.getPackageManager().getPermissionFlags(
                        permission, packageName, UserHandle.myUserHandle());
                if ((flags & PackageManager.FLAG_PERMISSION_USER_FIXED) != 0) return "df";
                if ((flags & PackageManager.FLAG_PERMISSION_USER_SET) != 0) return "ds";
            } catch (Exception ignored) {
            }
        }
        return "ds";
    }

    private String captureComponent(String setting, String packageName) {
        String raw = Settings.Secure.getString(context.getContentResolver(), setting);
        if (raw == null || raw.isEmpty()) return null;
        for (String value : raw.split(":")) {
            if (value == null || value.isEmpty()) continue;
            ComponentName component = ComponentName.unflattenFromString(value);
            if (component != null && packageName.equals(component.getPackageName())) {
                return component.flattenToString();
            }
        }
        return null;
    }

    private String captureSsaid(String packageName) {
        File staged = new File(context.getCacheDir(), "settings_ssaid-" + System.nanoTime() + ".xml");
        try {
            String source = "/data/system/users/" + UserHandle.myUserId() + "/settings_ssaid.xml";
            if (!privileged.copyTree(source, staged.getAbsolutePath(), false) || !staged.isFile()) return null;
            Document document = javax.xml.parsers.DocumentBuilderFactory.newInstance()
                    .newDocumentBuilder().parse(staged);
            NodeList settings = document.getElementsByTagName("setting");
            for (int i = 0; i < settings.getLength(); i++) {
                org.w3c.dom.Node node = settings.item(i);
                org.w3c.dom.NamedNodeMap attrs = node.getAttributes();
                org.w3c.dom.Node pkg = attrs == null ? null : attrs.getNamedItem("package");
                org.w3c.dom.Node value = attrs == null ? null : attrs.getNamedItem("value");
                if (pkg != null && value != null && packageName.equals(pkg.getNodeValue())
                        && value.getNodeValue() != null
                        && value.getNodeValue().matches("[0-9a-fA-F]{16}")) {
                    return value.getNodeValue();
                }
            }
            return null;
        } catch (Exception ignored) {
            return null;
        } finally {
            staged.delete();
        }
    }

    private static String join(List<String> values, String separator) {
        StringBuilder out = new StringBuilder();
        for (String value : values) {
            if (out.length() > 0) out.append(separator);
            out.append(value);
        }
        return out.toString();
    }

    public static final class Capture {
        public final String permissionStatesCsv;
        public final String ssaid;
        public final String ntfAccessComponent;
        public final String accessibilityComponent;
        public final String notificationPolicyXml;

        Capture(String permissionStatesCsv, String ssaid, String ntfAccessComponent,
                String accessibilityComponent, String notificationPolicyXml) {
            this.permissionStatesCsv = permissionStatesCsv;
            this.ssaid = ssaid;
            this.ntfAccessComponent = ntfAccessComponent;
            this.accessibilityComponent = accessibilityComponent;
            this.notificationPolicyXml = notificationPolicyXml;
        }
    }
}
