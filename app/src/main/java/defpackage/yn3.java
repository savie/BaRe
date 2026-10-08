package defpackage;

import android.os.Looper;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.swiftapps.swiftbackup.folders.data.Changes;
import org.swiftapps.swiftbackup.folders.data.FileEntry;
import org.swiftapps.swiftbackup.folders.data.FolderState;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yn3 {
    public static Changes a(FolderState folderState, FolderState folderState2) {
        folderState.getClass();
        folderState2.getClass();
        vr6.i$default(vr6.INSTANCE, "FolderScanner", "Detecting changes between current and previous state", null, 4, null);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        for (Map.Entry<String, FileEntry> entry : folderState.getFiles().entrySet()) {
            String key = entry.getKey();
            FileEntry value = entry.getValue();
            FileEntry fileEntry = folderState2.getFiles().get(key);
            if (fileEntry == null) {
                arrayList.add(key);
            } else if (value.getSize() != fileEntry.getSize() || value.getMtime() != fileEntry.getMtime()) {
                arrayList2.add(key);
            }
        }
        for (String str : folderState2.getFiles().keySet()) {
            if (!folderState.getFiles().containsKey(str)) {
                arrayList3.add(str);
            }
        }
        Set setZ1 = el1.z1(folderState.getDirectories());
        Set setZ2 = el1.z1(folderState2.getDirectories());
        arrayList4.addAll(b(folderState, sz8.L(setZ1, setZ2)));
        arrayList5.addAll(sz8.L(setZ2, setZ1));
        Changes changes = new Changes(arrayList, arrayList2, arrayList3, arrayList4, arrayList5);
        vr6.i$default(vr6.INSTANCE, "FolderScanner", Changes.asString$default(changes, false, 1, null), null, 4, null);
        changes.changesCount();
        return changes;
    }

    public static List b(FolderState folderState, Collection collection) {
        folderState.getClass();
        collection.getClass();
        if (collection.isEmpty()) {
            return ov2.a;
        }
        HashSet hashSet = new HashSet();
        Iterator<String> it = folderState.getFiles().keySet().iterator();
        while (it.hasNext()) {
            c(it.next(), hashSet);
        }
        Iterator<String> it2 = folderState.getDirectories().iterator();
        while (it2.hasNext()) {
            c(it2.next(), hashSet);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (!hashSet.contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static void c(String str, HashSet hashSet) {
        int iK0 = nq7.k0('/', 0, 6, str);
        while (iK0 > 0) {
            hashSet.add(str.substring(0, iK0));
            iK0 = nq7.k0('/', iK0 - 1, 4, str);
        }
    }

    public final FolderState d(q63 q63Var) {
        q63Var.getClass();
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "FolderScanner", "Scanning folder: ".concat(q63Var.v()), null, 4, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        mp6 mp6Var = mp6.a;
        List listA0 = fl1.A0("find", q63Var.v(), "(", "-type", "f", "-printf", "F\\t%P\\t%s\\t%T@\\n", ")", "-o", "(", "-type", "d", "-printf", "D\\t%P\\n", ")");
        xs xsVar = new xs(this, linkedHashMap, arrayList);
        String str = null;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        Process processStart = new ProcessBuilder((List<String>) listA0).redirectErrorStream(false).start();
        try {
            StringBuilder sb = new StringBuilder();
            lh6 lh6Var = new lh6();
            lh6 lh6Var2 = new lh6();
            Thread thread = new Thread(new nu2(2, processStart, lh6Var, xsVar));
            thread.start();
            Thread thread2 = new Thread(new uy1(2, processStart, lh6Var2, sb));
            thread2.start();
            int iWaitFor = processStart.waitFor();
            thread.join();
            thread2.join();
            Exception exc = (Exception) lh6Var.a;
            if (exc != null) {
                throw exc;
            }
            Exception exc2 = (Exception) lh6Var2.a;
            if (exc2 != null) {
                throw exc2;
            }
            if (iWaitFor == 0) {
                processStart.destroy();
                FolderState folderState = new FolderState(linkedHashMap, arrayList);
                vr6.i$default(vr6Var, "FolderScanner", dj7.j("Scanned ", folderState.getFiles().size(), " files and ", " directories", folderState.getDirectories().size()), null, 4, null);
                return folderState;
            }
            String strY0 = el1.Y0(listA0, TokenAuthenticationScheme.SCHEME_DELIMITER, null, null, new nu(8), 30);
            if (sb.length() <= 0) {
                sb = null;
            }
            if (sb != null) {
                str = "\nStderr: " + ((Object) sb);
            }
            if (str == null) {
                str = "";
            }
            throw new IllegalStateException("Command failed with exit code " + iWaitFor + ": " + strY0 + str);
        } catch (Throwable th) {
            processStart.destroy();
            throw th;
        }
    }
}
