#!/usr/bin/env python3
"""Inject build-time Firebase resources into the BΛR☰ build copy."""

from pathlib import Path
import json
import re
from xml.sax.saxutils import escape

root = Path("build-src")
firebase_json = json.loads(Path("build/google-services.json").read_text())
project_info = firebase_json.get("project_info", {})
clients = firebase_json.get("client", [])
firebase_client = next(
    (
        item
        for item in clients
        if item.get("client_info", {}).get("android_client_info", {}).get("package_name")
        == "com.bareapps.barebackup"
    ),
    {},
)
client_info = firebase_client.get("client_info", {})
api_keys = firebase_client.get("api_key", [])

firebase_values = {
    "google_app_id": client_info.get("mobilesdk_app_id", ""),
    "google_api_key": api_keys[0].get("current_key", "") if api_keys else "",
    "gcm_defaultSenderId": project_info.get("project_number", ""),
    "project_id": project_info.get("project_id", ""),
}
if project_info.get("storage_bucket"):
    firebase_values["google_storage_bucket"] = project_info["storage_bucket"]

# Use only an explicitly configured or already confirmed project endpoint.
if project_info.get("firebase_url"):
    firebase_values["firebase_database_url"] = project_info["firebase_url"]
elif project_info.get("project_id") == "bare-6f8d6":
    firebase_values["firebase_database_url"] = (
        "https://bare-6f8d6-default-rtdb.asia-southeast1.firebasedatabase.app"
    )

for oauth_client in firebase_client.get("oauth_client", []):
    if str(oauth_client.get("client_type")) == "3" and oauth_client.get("client_id"):
        firebase_values["default_web_client_id"] = oauth_client["client_id"]
        break

values_dir = root / "res/values"
values_dir.mkdir(parents=True, exist_ok=True)
strings_path = values_dir / "strings.xml"
strings_text = strings_path.read_text()

# Clear optional values from a previous backend before injecting this config.
optional_firebase_keys = (
    "firebase_database_url",
    "google_storage_bucket",
    "default_web_client_id",
)
for name in optional_firebase_keys:
    strings_text, _ = re.subn(
        rf'<string\s+name="{re.escape(name)}"[^>]*>.*?</string>',
        "",
        strings_text,
        count=1,
        flags=re.DOTALL,
    )

for name, value in firebase_values.items():
    tag = f'<string name="{name}"[^>]*>.*?</string>'
    new_tag = (
        f'<string name="{name}" translatable="false">'
        f'{escape(str(value))}</string>'
    )
    strings_text, count = re.subn(
        tag,
        lambda _match, new_tag=new_tag: new_tag,
        strings_text,
        count=1,
        flags=re.DOTALL,
    )
    if count == 0:
        strings_text = strings_text.replace(
            "</resources>", f"    {new_tag}\n</resources>", 1
        )

strings_path.write_text(strings_text)
print("Applied Firebase values from app/google-services.json (values redacted).")

# Firebase init belongs only in the disposable build copy; keep it idempotent.
app_smali_path = root / "smali/org/swiftapps/swiftbackup/SwiftApp.smali"
app_smali = app_smali_path.read_text()
firebase_init = (
    "invoke-static {p0}, "
    "Lcom/google/firebase/FirebaseApp;->initializeApp"
    "(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;"
)
if firebase_init not in app_smali:
    on_create = re.search(
        r"(?ms)(^\.method public final onCreate\(\)V\n.*?^\s*invoke-super "
        r"\{p0\}, Landroid/app/Application;->onCreate\(\)V\n)",
        app_smali,
    )
    if on_create:
        app_smali = (
            app_smali[:on_create.end()]
            + "\n    "
            + firebase_init
            + app_smali[on_create.end():]
        )
        app_smali_path.write_text(app_smali)
