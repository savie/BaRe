package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.topjohnwu.superuser.Shell;
import com.topjohnwu.superuser.ShellUtils;
import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kr7 extends File {
    public final String a;

    public kr7(File file) {
        super(file.getAbsolutePath());
        this.a = ShellUtils.b(getPath());
    }

    public final String a(String str) {
        int i = Shell.UNKNOWN;
        return ShellUtils.fastCmd(k55.j(), str.replace("@@", this.a));
    }

    public final boolean b(String str) {
        int i = Shell.UNKNOWN;
        zd7 zd7VarJ = k55.j();
        String[] strArr = {str.replace("@@", this.a)};
        od7 od7VarNewJob = zd7VarJ.newJob();
        od7VarNewJob.a(strArr);
        rh4 rh4Var = (rh4) od7VarNewJob;
        rh4Var.a = null;
        rh4Var.b = null;
        rh4Var.e = false;
        return od7VarNewJob.b().c == 0;
    }

    public final kr7 c(String str) {
        return new kr7(new File(getPath(), str));
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
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final kr7[] listFiles() {
        String[] list;
        if (!b("[ -d @@ ]") || (list = list(null)) == null) {
            return null;
        }
        int length = list.length;
        kr7[] kr7VarArr = new kr7[length];
        for (int i = 0; i < length; i++) {
            kr7VarArr[i] = c(list[i]);
        }
        return kr7VarArr;
    }

    @Override // java.io.File
    public final boolean delete() {
        return b("rm -f @@ || rmdir -f @@");
    }

    @Override // java.io.File
    public final void deleteOnExit() {
        throw new UnsupportedOperationException("Unsupported SuFile operation");
    }

    public final boolean e(int i, boolean z, boolean z2) {
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

    @Override // java.io.File
    public final boolean exists() {
        return b("[ -e @@ ]");
    }

    public final long f(String str) {
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
    public final String getAbsolutePath() {
        return getPath();
    }

    @Override // java.io.File
    public final File getCanonicalFile() {
        return new kr7(getCanonicalPath());
    }

    @Override // java.io.File
    public final String getCanonicalPath() {
        String strA = a("readlink -f @@");
        return strA.isEmpty() ? getPath() : strA;
    }

    @Override // java.io.File
    public final long getFreeSpace() {
        return f("%f");
    }

    @Override // java.io.File
    public final File getParentFile() {
        String parent = getParent();
        if (parent == null) {
            return null;
        }
        return new kr7(parent);
    }

    @Override // java.io.File
    public final long getTotalSpace() {
        return f("%b");
    }

    @Override // java.io.File
    public final long getUsableSpace() {
        return f("%a");
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
    public final String[] list(FilenameFilter filenameFilter) {
        if (!b("[ -d @@ ]")) {
            return null;
        }
        String str = "ls -a " + this.a;
        int i = Shell.UNKNOWN;
        rh4 rh4Var = new rh4(k55.j());
        rh4Var.a(str);
        rh4Var.a = new LinkedList();
        rh4Var.b = null;
        rh4Var.e = true;
        List listA = rh4Var.b().a();
        ListIterator listIterator = listA.listIterator();
        while (listIterator.hasNext()) {
            String str2 = (String) listIterator.next();
            if (str2.equals(".") || str2.equals("..") || (filenameFilter != null && !filenameFilter.accept(this, str2))) {
                listIterator.remove();
            }
        }
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
            kr7 kr7VarC = c(str);
            if (fileFilter == null || fileFilter.accept(kr7VarC)) {
                arrayList.add(kr7VarC);
            }
        }
        return (kr7[]) arrayList.toArray(new kr7[0]);
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
        String str = "mv -f " + this.a + TokenAuthenticationScheme.SCHEME_DELIMITER + ShellUtils.b(file.getAbsolutePath());
        int i = Shell.UNKNOWN;
        od7 od7VarNewJob = k55.j().newJob();
        od7VarNewJob.a(str);
        rh4 rh4Var = (rh4) od7VarNewJob;
        rh4Var.a = null;
        rh4Var.b = null;
        rh4Var.e = false;
        return od7VarNewJob.b().c == 0;
    }

    @Override // java.io.File
    public final boolean setExecutable(boolean z, boolean z2) {
        return e(1, z, z2);
    }

    @Override // java.io.File
    public final boolean setLastModified(long j) {
        return b("[ -e @@ ] && touch -t " + new SimpleDateFormat("yyyyMMddHHmm", Locale.US).format(new Date(j)) + " @@");
    }

    @Override // java.io.File
    public final boolean setReadOnly() {
        return e(2, false, false) && e(1, false, false);
    }

    @Override // java.io.File
    public final boolean setReadable(boolean z, boolean z2) {
        return e(4, z, z2);
    }

    @Override // java.io.File
    public final boolean setWritable(boolean z, boolean z2) {
        return e(2, z, z2);
    }

    public kr7(String str) {
        this(new File(str));
    }

    @Override // java.io.File
    public final File getAbsoluteFile() {
        return this;
    }

    @Override // java.io.File
    public final File[] listFiles(FilenameFilter filenameFilter) {
        String[] list;
        if (!b("[ -d @@ ]") || (list = list(filenameFilter)) == null) {
            return null;
        }
        int length = list.length;
        kr7[] kr7VarArr = new kr7[length];
        for (int i = 0; i < length; i++) {
            kr7VarArr[i] = c(list[i]);
        }
        return kr7VarArr;
    }

    @Override // java.io.File
    public final String[] list() {
        return list(null);
    }
}
