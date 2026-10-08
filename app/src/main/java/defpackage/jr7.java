package defpackage;

import android.text.TextUtils;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.topjohnwu.superuser.Shell;
import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jr7 extends File {
    public final String a;

    public jr7(File file) {
        super(file.getAbsolutePath());
        this.a = c(getPath());
    }

    public static String c(String str) {
        StringBuilder sb = new StringBuilder("\"");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if ("$`\"\\".indexOf(cCharAt) >= 0) {
                sb.append('\\');
            }
            sb.append(cCharAt);
        }
        sb.append('\"');
        return sb.toString();
    }

    public static boolean d(String... strArr) {
        int i = Shell.UNKNOWN;
        if (!k55.j().isRoot() && e()) {
            return qe7.c(strArr).b == 0;
        }
        rh4 rh4Var = new rh4(k55.j());
        rh4Var.a(strArr);
        rh4Var.a = null;
        rh4Var.b = null;
        rh4Var.e = false;
        return rh4Var.b().c == 0;
    }

    public static boolean e() {
        gv7 gv7Var = qe7.a;
        return le7.f() && qe7.b();
    }

    public static File g(String str) {
        int i = Shell.UNKNOWN;
        return (k55.j().isRoot() || e()) ? new jr7(str) : new File(str);
    }

    public final String a(String str) {
        List listA;
        String[] strArr = {str.replace("@@", this.a)};
        int i = Shell.UNKNOWN;
        if (k55.j().isRoot() || !e()) {
            rh4 rh4Var = new rh4(k55.j());
            rh4Var.a(strArr);
            rh4Var.a = new ArrayList();
            rh4Var.b = null;
            rh4Var.e = true;
            listA = rh4Var.b().a();
        } else {
            listA = qe7.c(strArr).a;
        }
        if (listA == null || listA.isEmpty()) {
            return "";
        }
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            if (!TextUtils.isEmpty((String) it.next())) {
                return (String) listA.get(listA.size() - 1);
            }
        }
        return "";
    }

    public final boolean b(String str) {
        return d(str.replace("@@", this.a));
    }

    @Override // java.io.File
    public final boolean canExecute() {
        return b("[ -x @@ ]");
    }

    @Override // java.io.File
    public final boolean canRead() {
        return b("[ -r @@ ]");
    }

    @Override // java.io.File
    public final boolean canWrite() {
        return b("[ -w @@ ]");
    }

    @Override // java.io.File
    public final boolean createNewFile() {
        return b("[ ! -e @@ ] && echo -n > @@");
    }

    @Override // java.io.File
    public final boolean delete() {
        return b("rm -f @@ || rmdir -f @@");
    }

    @Override // java.io.File
    public final void deleteOnExit() {
        throw new UnsupportedOperationException("Unsupported SuFile operation");
    }

    @Override // java.io.File
    public final boolean exists() {
        return b("[ -e @@ ]");
    }

    @Override // java.io.File
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final jr7[] listFiles() {
        String[] list;
        if (!b("[ -d @@ ]") || (list = list(null)) == null) {
            return null;
        }
        int length = list.length;
        jr7[] jr7VarArr = new jr7[length];
        for (int i = 0; i < length; i++) {
            jr7VarArr[i] = new jr7(getAbsolutePath(), list[i]);
        }
        return jr7VarArr;
    }

    @Override // java.io.File
    public final String getAbsolutePath() {
        return getPath();
    }

    @Override // java.io.File
    public final File getCanonicalFile() {
        return new jr7(getCanonicalPath());
    }

    @Override // java.io.File
    public final String getCanonicalPath() {
        String strA = a("readlink -f @@");
        return strA.isEmpty() ? getPath() : strA;
    }

    @Override // java.io.File
    public final long getFreeSpace() {
        return i("%f");
    }

    @Override // java.io.File
    public final File getParentFile() {
        String parent = getParent();
        if (parent == null) {
            return null;
        }
        return new jr7(parent);
    }

    @Override // java.io.File
    public final long getTotalSpace() {
        return i("%b");
    }

    @Override // java.io.File
    public final long getUsableSpace() {
        return i("%a");
    }

    public final boolean h(int i, boolean z, boolean z2) {
        char[] charArray = a("stat -c '%a' @@").toCharArray();
        int i2 = 0;
        if (charArray.length != 3) {
            return false;
        }
        while (i2 < 3) {
            int i3 = charArray[i2] - '0';
            charArray[i2] = (char) (((!z || (z2 && i2 != 0)) ? i3 & (~i) : i3 | i) + 48);
            i2++;
        }
        return b("chmod " + new String(charArray) + " @@");
    }

    public final long i(String str) {
        String[] strArrSplit = a("stat -fc '%S " + str + "' @@").split(TokenAuthenticationScheme.SCHEME_DELIMITER);
        if (strArrSplit.length != 2) {
            return Long.MAX_VALUE;
        }
        try {
            return Long.parseLong(strArrSplit[0]) * Long.parseLong(strArrSplit[1]);
        } catch (NumberFormatException unused) {
            return Long.MAX_VALUE;
        }
    }

    @Override // java.io.File
    public final boolean isDirectory() {
        return b("[ -d @@ ]");
    }

    @Override // java.io.File
    public final boolean isFile() {
        return b("[ -f @@ ]");
    }

    @Override // java.io.File
    public final long lastModified() {
        try {
            return Long.parseLong(a("stat -c '%Y' @@")) * 1000;
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    @Override // java.io.File
    public final long length() {
        try {
            return Long.parseLong(a("stat -c '%s' @@"));
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    @Override // java.io.File
    public final String[] list(final FilenameFilter filenameFilter) {
        List listA;
        if (!b("[ -d @@ ]")) {
            return null;
        }
        String str = "ls -a " + this.a;
        int i = Shell.UNKNOWN;
        if (k55.j().isRoot() || !e()) {
            rh4 rh4Var = new rh4(k55.j());
            rh4Var.a(str);
            rh4Var.a = new LinkedList();
            rh4Var.b = null;
            rh4Var.e = true;
            listA = rh4Var.b().a();
        } else {
            listA = qe7.c(new String[]{str}).a;
        }
        listA.removeIf(new Predicate() { // from class: ir7
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                String str2 = (String) obj;
                if (str2 == null || str2.isEmpty() || str2.equals(".") || str2.equals("..")) {
                    return true;
                }
                FilenameFilter filenameFilter2 = filenameFilter;
                return (filenameFilter2 == null || filenameFilter2.accept(this, str2)) ? false : true;
            }
        });
        return (String[]) listA.toArray(new String[0]);
    }

    @Override // java.io.File
    public final File[] listFiles(FileFilter fileFilter) {
        String[] list = list(null);
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            jr7 jr7Var = new jr7(getAbsolutePath(), str);
            if (fileFilter == null || fileFilter.accept(jr7Var)) {
                arrayList.add(jr7Var);
            }
        }
        return (jr7[]) arrayList.toArray(new jr7[0]);
    }

    @Override // java.io.File
    public final boolean mkdir() {
        return b("mkdir @@");
    }

    @Override // java.io.File
    public final boolean mkdirs() {
        return b("mkdir -p @@");
    }

    @Override // java.io.File
    public final boolean renameTo(File file) {
        return d("mv -f " + this.a + TokenAuthenticationScheme.SCHEME_DELIMITER + c(file.getAbsolutePath()));
    }

    @Override // java.io.File
    public final boolean setExecutable(boolean z, boolean z2) {
        return h(1, z, z2);
    }

    @Override // java.io.File
    public final boolean setLastModified(long j) {
        return b("[ -e @@ ] && touch -t " + new SimpleDateFormat("yyyyMMddHHmm", Locale.US).format(new Date(j)) + " @@");
    }

    @Override // java.io.File
    public final boolean setReadOnly() {
        return h(2, false, false) && h(1, false, false);
    }

    @Override // java.io.File
    public final boolean setReadable(boolean z, boolean z2) {
        return h(4, z, z2);
    }

    @Override // java.io.File
    public final boolean setWritable(boolean z, boolean z2) {
        return h(2, z, z2);
    }

    public jr7(String str) {
        this(new File(str));
    }

    @Override // java.io.File
    public final File getAbsoluteFile() {
        return this;
    }

    public jr7(String str, String str2) {
        this(new File(str, str2));
    }

    @Override // java.io.File
    public final File[] listFiles(FilenameFilter filenameFilter) {
        String[] list;
        if (!b("[ -d @@ ]") || (list = list(filenameFilter)) == null) {
            return null;
        }
        int length = list.length;
        jr7[] jr7VarArr = new jr7[length];
        for (int i = 0; i < length; i++) {
            jr7VarArr[i] = new jr7(getAbsolutePath(), list[i]);
        }
        return jr7VarArr;
    }

    @Override // java.io.File
    public final String[] list() {
        return list(null);
    }
}
