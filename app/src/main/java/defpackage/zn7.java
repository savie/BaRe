package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zn7 implements Parcelable {
    public final q63 a;
    public final boolean b;
    public final boolean c;
    public final gv7 d;
    public final gv7 e;
    public final gv7 f;
    public final gv7 k;
    public final gv7 n;
    public final gv7 p;
    public static final yn7 q = new yn7();
    public static final Parcelable.Creator<zn7> CREATOR = new yj0(4);

    public zn7(q63 q63Var, boolean z, boolean z2) {
        q63Var.getClass();
        this.a = q63Var;
        this.b = z;
        this.c = z2;
        int i = 6;
        this.d = new gv7(new us5(this, i));
        this.e = new gv7(new no5(this, i));
        int i2 = 9;
        this.f = new gv7(new qb5(this, i2));
        this.k = new gv7(new n55(this, i2));
        this.n = new gv7(new u14(this, 11));
        this.p = new gv7(new kn3(this, 16));
    }

    public final Intent c() {
        StorageVolume storageVolumeV;
        Intent intentCreateOpenDocumentTreeIntent = null;
        if (b67.b() && (storageVolumeV = v()) != null) {
            intentCreateOpenDocumentTreeIntent = storageVolumeV.createOpenDocumentTreeIntent();
        }
        if (intentCreateOpenDocumentTreeIntent != null) {
            return intentCreateOpenDocumentTreeIntent;
        }
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
        Uri uriBuildRootUri = DocumentsContract.buildRootUri("com.android.externalstorage.documents", (String) this.n.getValue());
        uriBuildRootUri.getClass();
        intent.putExtra("android.provider.extra.INITIAL_URI", uriBuildRootUri);
        intent.putExtra("android.provider.extra.SHOW_ADVANCED", true);
        return intent;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String e(List list) {
        Object next;
        String str = (String) this.n.getValue();
        String str2 = null;
        if (str != null) {
            if (nq7.j0(str)) {
                str = null;
            }
            if (str != null) {
                if (list == null) {
                    list = yn7.c(str);
                }
                Iterator it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!nq7.Z((String) next, "mnt/media_rw/".concat(str), false));
                String str3 = (String) next;
                if (str3 != null) {
                    String strA = jq7.a(str3, "fs=", ",");
                    if (strA == null) {
                        strA = jq7.a(str3, "type ", " (");
                    }
                    str2 = strA;
                }
                if (pe4.d(str2, "texfat")) {
                    return "exfat";
                }
            }
        }
        return str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zn7)) {
            return false;
        }
        zn7 zn7Var = (zn7) obj;
        return pe4.d(this.a, zn7Var.a) && this.b == zn7Var.b && this.c == zn7Var.c;
    }

    public final boolean g() throws Throwable {
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        Uri uriBuildTreeDocumentUri = DocumentsContract.buildTreeDocumentUri("com.android.externalstorage.documents", ((String) this.n.getValue()) + ":");
        uriBuildTreeDocumentUri.getClass();
        cb8 cb8VarC = tn2.c(contextC, uriBuildTreeDocumentUri);
        Context context = cb8VarC.a;
        Uri uri = cb8VarC.b;
        if (context.checkCallingOrSelfUriPermission(uri, 1) != 0 || TextUtils.isEmpty(iz1.u(context, uri, "mime_type")) || context.checkCallingOrSelfUriPermission(uri, 2) != 0) {
            return false;
        }
        String strU = iz1.u(context, uri, "mime_type");
        int iT = (int) iz1.t(context, uri, "flags", 0L);
        if (TextUtils.isEmpty(strU)) {
            return false;
        }
        return (iT & 4) != 0 || ("vnd.android.document/directory".equals(strU) && (iT & 8) != 0) || !(TextUtils.isEmpty(strU) || (iT & 2) == 0);
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + fz5.h(this.a.a.hashCode() * 31, 31, this.b);
    }

    public final q63 l() {
        return (q63) this.e.getValue();
    }

    public final boolean m() {
        q63 q63VarN = n();
        return (q63VarN.n().getFile().canRead() && q63VarN.n().getFile().canWrite()) ? false : true;
    }

    public final q63 n() {
        return (q63) this.d.getValue();
    }

    public final String q(Context context) {
        String strN;
        StorageVolume storageVolumeV = v();
        String str = null;
        if (storageVolumeV != null) {
            strN = storageVolumeV.isRemovable() ? u48.n(storageVolumeV.getDescription(context), " (", storageVolumeV.getUuid(), ")") : context.getString(R.string.internal_storage);
        } else {
            strN = null;
        }
        if (strN != null && strN.length() != 0 && !nq7.j0(strN)) {
            str = strN;
        }
        if (str != null) {
            return str;
        }
        if (this.b) {
            String string = context.getString(R.string.external_storage);
            string.getClass();
            return u48.n(string, " (", (String) this.n.getValue(), ")");
        }
        String string2 = context.getString(R.string.internal_storage);
        string2.getClass();
        return string2;
    }

    public final String toString() {
        return u();
    }

    public final String u() {
        return (String) this.k.getValue();
    }

    public final StorageVolume v() {
        StorageVolume storageVolume;
        SwiftApp.Companion companion = SwiftApp.d;
        StorageManager storageManager = (StorageManager) SwiftApp.Companion.c().getSystemService(StorageManager.class);
        storageManager.getClass();
        q63 q63Var = this.a;
        File file = new File(q63Var.v());
        Object obj = null;
        try {
            storageVolume = storageManager.getStorageVolume(file);
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "Storage", eq3.k("getStorageVolumeForFile (", file.getPath(), ")"), e, null, 8, null);
            storageVolume = null;
        }
        if (storageVolume == null && b67.c()) {
            for (Object obj2 : yn7.g()) {
                File directory = ((StorageVolume) obj2).getDirectory();
                if (pe4.d(directory != null ? directory.getPath() : null, n().v())) {
                    obj = obj2;
                    break;
                }
            }
            storageVolume = (StorageVolume) obj;
        }
        if (storageVolume == null) {
            vr6.i$default(vr6.INSTANCE, "Storage", xs1.i(q63Var, "Storage volume not found for "), null, 4, null);
        }
        return storageVolume;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeSerializable(this.a);
        parcel.writeInt(this.b ? 1 : 0);
        parcel.writeInt(this.c ? 1 : 0);
    }
}
