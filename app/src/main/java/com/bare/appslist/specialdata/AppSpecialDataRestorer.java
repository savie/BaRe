package com.bare.appslist.specialdata;

import android.content.Context;
import android.os.UserHandle;
import android.provider.Settings;

import com.bare.appslist.engine.AppLocalBackupEngine.PrivilegedFileAccess;
import com.bare.appslist.actions.PrivilegedAppActionExecutor;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/** Concrete privileged consumer for the special-data payload. */
public final class AppSpecialDataRestorer {
    private final Context context;
    private final PrivilegedFileAccess privileged;
    private final PrivilegedAppActionExecutor.RootCommandRunner runner =
            new PrivilegedAppActionExecutor.RootCommandRunner();

    public AppSpecialDataRestorer(Context context, PrivilegedFileAccess privileged) {
        this.context = context.getApplicationContext();
        this.privileged = privileged;
    }

    public void restore(String packageName, AppSpecialDataPayload payload) throws Exception {
        if (payload == null || packageName == null || !payload.hasPayloads()) return;
        restorePermissions(packageName, payload.getPermissionStatesCsv());
        restoreComponent(Settings.Secure.ENABLED_NOTIFICATION_LISTENERS,
                packageName, payload.getNtfAccessComponent());
        restoreComponent(Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES,
                packageName, payload.getAccessibilityComponent());
        if (payload.getSsaid() != null) {
            restoreSsaid(packageName, payload.getSsaid());
        }
        if (payload.getNotificationPolicyXml() != null) {
            try {
                NotificationPolicyProxy.restore(
                        UserHandle.myUserId(), packageName, payload.getNotificationPolicyXml());
            } catch (Exception ignored) {
            }
        }
    }

    private void restorePermissions(String packageName, String csv) throws Exception {
        if (csv == null || csv.isEmpty()) return;
        for (String item : csv.split(",")) {
            int colon = item.indexOf(':');
            if (colon <= 0) continue;
            int id;
            try { id = Integer.parseInt(item.substring(0, colon)); }
            catch (NumberFormatException ignored) { continue; }
            String token = item.substring(colon + 1);
            if (id < 0 || id >= 53) continue;
            String permission = supportedPermission(id);
            if (permission == null || !permission.startsWith("android.permission.")) continue;
            String command;
            if ("g".equals(token)) {
                command = "pm grant " + shell(packageName) + " " + shell(permission);
            } else {
                command = "pm revoke " + shell(packageName) + " " + shell(permission);
            }
            PrivilegedAppActionExecutor.Result result = runner.run(command);
            if (!result.isSuccess()) {
                // Unsupported/special permissions are deliberately non-fatal per Reference.
            }
        }
    }

    private void restoreComponent(String setting, String packageName, String component)
            throws Exception {
        if (component == null || component.isEmpty()) return;
        String current = Settings.Secure.getString(context.getContentResolver(), setting);
        ArrayList<String> values = new ArrayList<>();
        if (current != null && !current.isEmpty()) {
            for (String value : current.split(":")) if (!value.isEmpty()) values.add(value);
        }
        if (!values.contains(component)) values.add(component);
        String joined = join(values, ":");
        PrivilegedAppActionExecutor.Result result = runner.run(
                "settings put secure " + shell(setting) + " " + shell(joined));
        if (!result.isSuccess()) throw new IllegalStateException(result.getError());
    }

    private void restoreSsaid(String packageName, String value) throws Exception {
        if (!value.matches("[0-9a-fA-F]{16}")) return;
        File staged = new File(context.getCacheDir(), "settings_ssaid-restore-" + System.nanoTime() + ".xml");
        String source = "/data/system/users/" + UserHandle.myUserId() + "/settings_ssaid.xml";
        try {
            if (!privileged.copyTree(source, staged.getAbsolutePath(), false) || !staged.isFile()) {
                return;
            }
            javax.xml.parsers.DocumentBuilderFactory factory =
                    javax.xml.parsers.DocumentBuilderFactory.newInstance();
            org.w3c.dom.Document document = factory.newDocumentBuilder().parse(staged);
            org.w3c.dom.NodeList settings = document.getElementsByTagName("setting");
            org.w3c.dom.Node target = null;
            for (int i = 0; i < settings.getLength(); i++) {
                org.w3c.dom.Node node = settings.item(i);
                org.w3c.dom.NamedNodeMap attrs = node.getAttributes();
                org.w3c.dom.Node pkg = attrs == null ? null : attrs.getNamedItem("package");
                if (pkg != null && packageName.equals(pkg.getNodeValue())) {
                    target = node;
                    break;
                }
            }
            if (target == null) {
                target = document.createElement("setting");
                target.getAttributes().setNamedItem(
                        document.createAttribute("package"));
                target.getAttributes().getNamedItem("package").setNodeValue(packageName);
                document.getDocumentElement().appendChild(target);
            }
            org.w3c.dom.NamedNodeMap attrs = target.getAttributes();
            org.w3c.dom.Node valueNode = attrs.getNamedItem("value");
            if (valueNode == null) {
                valueNode = document.createAttribute("value");
                attrs.setNamedItem(valueNode);
            }
            valueNode.setNodeValue(value);
            javax.xml.transform.Transformer transformer =
                    javax.xml.transform.TransformerFactory.newInstance().newTransformer();
            transformer.transform(
                    new javax.xml.transform.dom.DOMSource(document),
                    new javax.xml.transform.stream.StreamResult(staged));
            privileged.copyTree(
                    staged.getAbsolutePath(), source, true);
        } finally {
            staged.delete();
        }
    }

    private static String supportedPermission(int id) {
        if (id < 0 || id >= 53) return null;
        return AppSpecialDataCollectorPermissionMap.values[id];
    }

    private static String join(List<String> values, String separator) {
        StringBuilder out = new StringBuilder();
        for (String value : values) {
            if (out.length() > 0) out.append(separator);
            out.append(value);
        }
        return out.toString();
    }

    private static String shell(String value) {
        return "'" + value.replace("'", "'\\''") + "'";
    }

    private static final class AppSpecialDataCollectorPermissionMap {
        static final String[] values = {
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
    }
}
