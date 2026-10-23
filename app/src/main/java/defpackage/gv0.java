package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.swiftapps.swiftbackup.cloud.helpers.BoxRecentUploadCache$CachedBoxFile;
import org.swiftapps.swiftbackup.cloud.helpers.BoxRecentUploadCache$Data;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class gv0 {
    public static final List a = fl1.A0("msg", "cls", "wal");

    public static BoxRecentUploadCache$Data a() {
        gv7 gv7Var = w14.a;
        return (BoxRecentUploadCache$Data) io4.j("GsonHelper", "fromPrefs", false, new fv0(), 12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r1v4, types: [ov2] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.ArrayList] */
    public static void b(BoxRecentUploadCache$CachedBoxFile boxRecentUploadCache$CachedBoxFile) {
        ?? arrayList;
        List<BoxRecentUploadCache$CachedBoxFile> items;
        BoxRecentUploadCache$Data boxRecentUploadCache$DataA = a();
        if (boxRecentUploadCache$DataA == null || (items = boxRecentUploadCache$DataA.getItems()) == null) {
            arrayList = 0;
        } else {
            arrayList = new ArrayList();
            for (Object obj : items) {
                BoxRecentUploadCache$CachedBoxFile boxRecentUploadCache$CachedBoxFile2 = (BoxRecentUploadCache$CachedBoxFile) obj;
                if (!pe4.d(boxRecentUploadCache$CachedBoxFile2.getId(), boxRecentUploadCache$CachedBoxFile.getId()) && System.currentTimeMillis() - boxRecentUploadCache$CachedBoxFile2.getModifiedAtMillis() < 900000) {
                    arrayList.add(obj);
                }
            }
        }
        if (arrayList == 0) {
            arrayList = ov2.a;
        }
        ArrayList arrayListG1 = el1.g1(arrayList, nc8.I(boxRecentUploadCache$CachedBoxFile));
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayListG1) {
            if (hashSet.add(((BoxRecentUploadCache$CachedBoxFile) obj2).getId())) {
                arrayList2.add(obj2);
            }
        }
        BoxRecentUploadCache$Data.Companion.getClass();
        w14.h(new BoxRecentUploadCache$Data(arrayList2), "box_file_cache_data");
    }

    public static void c(List list) {
        ArrayList arrayList;
        List<BoxRecentUploadCache$CachedBoxFile> items;
        if (list.isEmpty()) {
            return;
        }
        BoxRecentUploadCache$Data boxRecentUploadCache$DataA = a();
        if (boxRecentUploadCache$DataA == null || (items = boxRecentUploadCache$DataA.getItems()) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (Object obj : items) {
                if (!list.contains(((BoxRecentUploadCache$CachedBoxFile) obj).getId())) {
                    arrayList.add(obj);
                }
            }
        }
        BoxRecentUploadCache$Data.Companion.getClass();
        w14.h(new BoxRecentUploadCache$Data(arrayList), "box_file_cache_data");
    }
}
