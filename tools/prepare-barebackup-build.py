#!/usr/bin/env python3
"""Inject Firebase resources and validate the BΛR☰ APK source before build."""

from pathlib import Path
import json
import re
from xml.sax.saxutils import escape

root = Path("build-src")
firebase_json = json.loads(Path("build/google-services.json").read_text())
project_info = firebase_json.get("project_info", {})
clients = firebase_json.get("client", [])
firebase_client = next(
    (item for item in clients
     if item.get("client_info", {}).get("android_client_info", {}).get("package_name")
     == "com.bareapps.barebackup"),
    None,
)
assert firebase_client is not None, (
    "rewrite/app/google-services.json has no client for com.bareapps.barebackup"
)
client_info = firebase_client.get("client_info", {})
api_keys = firebase_client.get("api_key", [])
assert client_info.get("mobilesdk_app_id"), "Firebase mobilesdk_app_id is missing"
assert api_keys and api_keys[0].get("current_key"), "Firebase API key is missing"
assert project_info.get("project_id") and project_info.get("project_number"), (
    "Firebase project_id/project_number is missing"
)

firebase_values = {
    "google_app_id": client_info["mobilesdk_app_id"],
    "google_api_key": api_keys[0]["current_key"],
    "gcm_defaultSenderId": project_info["project_number"],
    "project_id": project_info["project_id"],
}
if project_info.get("storage_bucket"):
    firebase_values["google_storage_bucket"] = project_info["storage_bucket"]
# Never infer a Realtime Database endpoint from a project ID. Inject only an
# explicit endpoint from configuration or the confirmed BΛR☰ regional endpoint.
if project_info.get("firebase_url"):
    firebase_values["firebase_database_url"] = project_info["firebase_url"]
elif project_info.get("project_id") == "bare-6f8d6":
    firebase_values["firebase_database_url"] = (
        "https://bare-6f8d6-default-rtdb.asia-southeast1.firebasedatabase.app"
    )
else:
    print("Firebase RTDB URL is not configured; not injecting a guessed endpoint.")
for oauth_client in firebase_client.get("oauth_client", []):
    if str(oauth_client.get("client_type")) == "3" and oauth_client.get("client_id"):
        firebase_values["default_web_client_id"] = oauth_client["client_id"]
        break

values_dir = root / "res/values"
values_dir.mkdir(parents=True, exist_ok=True)
strings_path = values_dir / "strings.xml"
strings_text = strings_path.read_text()
optional_firebase_keys = (
    "firebase_database_url", "google_storage_bucket", "default_web_client_id"
)
for name in optional_firebase_keys:
    strings_text, _ = re.subn(
        rf'<string\s+name="{re.escape(name)}"[^>]*>.*?</string>',
        "", strings_text, count=1, flags=re.DOTALL,
    )
strings_path.write_text(strings_text)

for name, value in firebase_values.items():
    tag = f'<string name="{name}"[^>]*>.*?</string>'
    new_tag = (
        f'<string name="{name}" translatable="false">'
        f'{escape(str(value))}</string>'
    )
    strings_text, count = re.subn(
        tag, lambda _match, new_tag=new_tag: new_tag,
        strings_text, count=1, flags=re.DOTALL,
    )
    if count == 0:
        assert strings_text.count("</resources>") == 1, (
            "Expected one resources closing tag in strings.xml"
        )
        strings_text = strings_text.replace(
            "</resources>", f"    {new_tag}\n</resources>", 1
        )
strings_path.write_text(strings_text)
print("Applied Firebase values from rewrite/app/google-services.json (values redacted).")

# Validate app identity against the current namespaced manifest.
manifest_path = root / "AndroidManifest.xml"
manifest = manifest_path.read_text()
assert 'package="com.bareapps.barebackup"' in manifest
assert 'android:authorities="com.bareapps.barebackup.fileprovider"' in manifest
assert 'android:authorities="org.swiftapps.swiftbackup.fileprovider"' not in manifest
assert 'android:label="@string/bare_backup"' in manifest
assert 'android:name="com.bareapps.barebackup.BareApp"' in manifest
assert 'android:theme="@style/BareTheme"' in manifest
strings_text = strings_path.read_text()
assert re.search(r'<string name="bare_backup">BΛR☰</string>', strings_text)
assert 'name="google_app_id"' in strings_text
assert 'name="google_api_key"' in strings_text

# The namespace migration renamed the manifest Application implementation.
# Add Firebase initialization to the actual Application class, not old SwiftApp.
app_smali_path = root / "smali/com/bareapps/barebackup/BareApp.smali"
app_smali = app_smali_path.read_text()
firebase_init = "invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;"
if firebase_init not in app_smali:
    on_create = re.search(
        r"(?ms)(^\.method public final onCreate\(\)V\n.*?^\s*invoke-super \{p0\}, Landroid/app/Application;->onCreate\(\)V\n)",
        app_smali,
    )
    assert on_create is not None, "Could not locate BareApp.onCreate() Application super call"
    app_smali = app_smali[:on_create.end()] + "\n    " + firebase_init + app_smali[on_create.end():]
    app_smali_path.write_text(app_smali)
assert firebase_init in app_smali, "Firebase initialization was not added to BareApp build copy"

# Ensure old Swift Backup Firebase endpoints are not left in generated resources.
assert 'swift-backup-31751.firebaseio.com' not in strings_text, (
    "Legacy Swift Backup Firebase URL remains in resources"
)
assert 'swift-backup-31751.appspot.com' not in strings_text, (
    "Legacy Swift Backup storage bucket remains in resources"
)
expected_database_url = project_info.get("firebase_url")
if not expected_database_url and project_info.get("project_id") == "bare-6f8d6":
    expected_database_url = (
        "https://bare-6f8d6-default-rtdb.asia-southeast1.firebasedatabase.app"
    )
if expected_database_url:
    assert re.search(
        r'<string name="firebase_database_url" translatable="false">'
        + re.escape(escape(str(expected_database_url))) + r'</string>',
        strings_text,
    ), "Configured Firebase Database URL was not injected"
else:
    assert 'name="firebase_database_url"' not in strings_text, (
        "Unconfigured Firebase Database URL must not be guessed or retained"
    )
assert re.search(
    r'<string name="project_id" translatable="false">bare-6f8d6</string>',
    strings_text,
), "Expected BΛR☰ Firebase project_id was not injected"
print("Validated BΛR☰ manifest identity and injected Firebase configuration.")

# Validate premium flags and batch-gate bypasses in the current namespace.
smali_root = root / "smali"
secondary = root / "smali_classes2"

def method_body(path, signature):
    source = path.read_text()
    match = re.search(
        rf"(?ms)^\.method public final {re.escape(signature)}\n(.*?)^\.end method",
        source,
    )
    assert match is not None, f"Missing method {signature} in {path}"
    return match.group(1)

premium_state = method_body(
    smali_root / "com/bareapps/barebackup/common/V.smali", "getA()Z"
)
assert re.search(r"(?m)^\s*const/4 p0, 0x1\s*$", premium_state), (
    "BΛR☰ global premium entitlement must be enabled"
)
folder_premium = method_body(
    secondary / "com/bareapps/barebackup/settings/FolderBackupStrategy.smali",
    "isPremium()Z",
)
assert re.search(r"(?m)^\s*const/4 p0, 0x0\s*$", folder_premium), (
    "Incremental folder backup must be marked free"
)
multi_premium = method_body(
    secondary / "com/bareapps/barebackup/settings/MultipleBackupStrategy$Representation.smali",
    "isPremium()Z",
)
assert re.search(r"(?m)^\s*const/4 p0, 0x0\s*$", multi_premium), (
    "Multi-version app backups must be treated as free"
)

gates = [
    (smali_root / "com/bareapps/barebackup/appslist/ui/listbatch/AppsBatchActivity.smali", "goto :cond_c"),
    (secondary / "com/bareapps/barebackup/appslist/ui/listconfig/AppsConfigRunActivity.smali", "goto :cond_0"),
    (secondary / "com/bareapps/barebackup/folders/ui/batch/FoldersBatchActivity.smali", "goto :cond_6"),
]
for path, expected in gates:
    source_text = path.read_text()
    assert expected in source_text, f"Expected premium gate bypass in {path}"
    assert "User not premium! Finishing." in source_text, (
        f"Gate audit marker missing in {path}"
    )
print("Validated BΛR☰ entitlement flags and batch gates.")

# Reject active Supabase dependencies in the app source tree.
sign_in = (
    smali_root / "com/bareapps/barebackup/cloud/connect/GmsSignInActivity.smali"
).read_text()
app_smali = app_smali_path.read_text()
manifest = manifest_path.read_text()
for path in list(smali_root.rglob("*.smali")) + list(secondary.rglob("*.smali")):
    source_text = path.read_text()
    assert "supabase.co" not in source_text.lower(), (
        f"Supabase endpoint remains in {path}"
    )
    assert "BareSupabase" not in source_text and "SupabaseLoginSuccessListener" not in source_text, (
        f"Supabase backend hook remains in {path}"
    )
assert "SupabaseLoginSuccessListener" not in sign_in
assert "BareSupabaseProfileSync" not in app_smali
assert "android.permission.INTERNET" in manifest
print("Validated Firebase-only sources: no Supabase endpoints, backend classes, or login/startup hooks.")

# Validate branding/storage markers and explicit RTDB configuration.
home = (
    smali_root / "com/bareapps/barebackup/home/HomeActivity.smali"
).read_text()
rtdb_factory = (smali_root / "ig3.smali").read_text()
connection_path = secondary / "gg3.smali"
if not connection_path.exists():
    connection_path = secondary / "com/bareapps/barebackup/gg3.smali"
connection_text = connection_path.read_text()
storage = (smali_root / "qy5.smali").read_text()

assert 'const-string v4, "BΛR☰"' in home, "Home title must use the BΛR☰ branding"
assert 'const/4 v4, 0x4' in home, "Home title span length must match the four-character brand"
assert 'default-rtdb.firebaseio.com' not in rtdb_factory, (
    "Firebase Database URL must never be inferred from project ID"
)
assert (
    "Firebase Realtime Database is not configured; provide an explicit database URL."
    in rtdb_factory
)
assert 'const-string p0, "/BΛR☰/"' in storage, (
    "Local backup storage directory must be isolated under /storage/emulated/0/BΛR☰/"
)
assert 'const-string p0, "/SwiftBackup/"' not in storage, (
    "Legacy SwiftBackup local storage path remains in the implementation"
)

apk_saver_path = secondary / "qm.smali"
if not apk_saver_path.exists():
    apk_saver_path = secondary / "com/bareapps/barebackup/qm.smali"
apk_saver = apk_saver_path.read_text()
assert 'const-string v4, "bare_backup_apks/"' in apk_saver, (
    "Saved APKs must use the BΛR☰ bare_backup_apks directory"
)
assert 'const-string v4, "swift_backup_apks/"' not in apk_saver, (
    "Legacy Swift Backup APK directory must not be used by BΛR☰"
)

storage_switch = smali_root / "ji8.smali"
if not storage_switch.exists():
    storage_switch = smali_root / "com/bareapps/barebackup/ji8.smali"
storage_switch_text = storage_switch.read_text()
assert '"/BΛR☰/"' in storage_switch_text, (
    "Alternate internal-storage path must use BΛR☰"
)
assert '"/SwiftBackup/"' not in storage_switch_text, (
    "Legacy SwiftBackup root remains in active storage code"
)
logger_export = smali_root / "dt7.smali"
if not logger_export.exists():
    logger_export = smali_root / "com/bareapps/barebackup/dt7.smali"
logger_share = smali_root / "er.smali"
if not logger_share.exists():
    logger_share = smali_root / "com/bareapps/barebackup/er.smali"
assert "SwiftLogger" not in logger_export.read_text()
assert "SwiftLogger" not in logger_share.read_text()
print("Validated BΛR☰ branding, storage paths, logger names, and explicit Firebase RTDB setup.")
