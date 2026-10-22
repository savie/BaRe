package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$BaseBackup;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$IncrementalBackup;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kj3 {
    public final String a;
    public final boolean b;
    public final gv7 c;
    public final gv7 d;
    public final gv7 e = new gv7(new ek(this, 24));
    public final gv7 f = new gv7(new ah(this, 25));
    public final gv7 g = new gv7(new bh(this, 21));
    public final gv7 h = new gv7(new d76(this, 21));

    public kj3(String str, String str2, boolean z) {
        this.a = str;
        this.b = !z;
        this.c = new gv7(new ck(str2, 17));
        this.d = new gv7(new w10(z, this));
        new gv7(new kf(this, 26));
    }

    public final ArrayList a() {
        List listN1;
        ArrayList arrayListB = b().B();
        if (arrayListB != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : arrayListB) {
                q63 q63Var = (q63) obj;
                FolderBackup$IncrementalBackup.Companion.getClass();
                if (ij3.a(q63Var) && q63Var.A() > 0) {
                    arrayList.add(obj);
                }
            }
            listN1 = el1.n1(arrayList, new nx(4));
        } else {
            listN1 = null;
        }
        if (listN1 == null || listN1.isEmpty()) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = listN1.iterator();
        while (it.hasNext()) {
            FolderBackup$IncrementalBackup folderBackup$IncrementalBackup = new FolderBackup$IncrementalBackup(b(), jj3.a((q63) it.next()));
            if (!folderBackup$IncrementalBackup.exists()) {
                folderBackup$IncrementalBackup = null;
            }
            if (folderBackup$IncrementalBackup != null) {
                arrayList2.add(folderBackup$IncrementalBackup);
            }
        }
        return arrayList2;
    }

    public final q63 b() {
        return (q63) this.d.getValue();
    }

    public final FolderBackup$BaseBackup c() {
        return (FolderBackup$BaseBackup) this.f.getValue();
    }

    public final q63 d() {
        return (q63) this.g.getValue();
    }

    public final q63 e() {
        return (q63) this.c.getValue();
    }

    public final boolean f() {
        FolderMetadata folderMetadataH;
        return c().exists() && (folderMetadataH = h()) != null && folderMetadataH.isValid();
    }

    public final q63 g() {
        Object next;
        ArrayList arrayListA = a();
        if (arrayListA != null && !arrayListA.isEmpty()) {
            Iterator it = arrayListA.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    String timestamp = ((FolderBackup$IncrementalBackup) next).getTimestamp();
                    do {
                        Object next2 = it.next();
                        String timestamp2 = ((FolderBackup$IncrementalBackup) next2).getTimestamp();
                        if (timestamp.compareTo(timestamp2) < 0) {
                            next = next2;
                            timestamp = timestamp2;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            FolderBackup$IncrementalBackup folderBackup$IncrementalBackup = (FolderBackup$IncrementalBackup) next;
            if (folderBackup$IncrementalBackup != null) {
                return folderBackup$IncrementalBackup.getManifestFile();
            }
        } else if (c().exists()) {
            return c().getManifestFile();
        }
        return null;
    }

    public final FolderMetadata h() {
        if (!d().k()) {
            vr6.w$default(vr6.INSTANCE, "FolderBackup", xs1.i(d(), "Metadata file does not exist at "), null, 4, null);
            return null;
        }
        um3 um3Var = FolderMetadata.Companion;
        q63 q63VarD = d();
        um3Var.getClass();
        q63VarD.getClass();
        return (FolderMetadata) w14.b(q63VarD, FolderMetadata.class, true);
    }

    public final String toString() {
        return "FolderBackup(id='" + this.a + "', sourceFolder='" + e() + "')";
    }
}
