package defpackage;

import java.io.File;
import java.util.List;
import okhttp3.Dns;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class z63 extends cu3 implements mt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ z63(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ee  */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        File parentFile;
        File parentFile2;
        boolean zContains = true;
        switch (this.a) {
            case 0:
                File file = (File) obj;
                file.getClass();
                p63 p63Var = (p63) this.receiver;
                p63Var.getClass();
                if (!p63Var.d(file)) {
                    String path = file.getPath();
                    path.getClass();
                    if (nq7.Z(path, "SwiftBackup", false)) {
                        if (pe4.d(file.getName(), "SwiftBackup") && file.canRead()) {
                            p63Var.a(file);
                        } else {
                            String path2 = file.getPath();
                            path2.getClass();
                            List listW0 = nq7.w0(path2, new char[]{'/'}, 6);
                            File file2 = new File(el1.Y0(listW0.subList(0, listW0.indexOf("SwiftBackup") + 1), "/", null, null, null, 62));
                            if (file2.canWrite()) {
                                p63Var.b(file2);
                            } else if (file.canRead()) {
                                parentFile = file.getParentFile();
                                if (parentFile == null) {
                                    parentFile2 = file.getParentFile();
                                    if (parentFile2 == null) {
                                        zContains = false;
                                    } else {
                                        zContains = p63Var.b.contains(parentFile2);
                                    }
                                } else {
                                    parentFile2 = file.getParentFile();
                                    if (parentFile2 == null) {
                                        zContains = false;
                                    } else {
                                        zContains = p63Var.b.contains(parentFile2);
                                    }
                                }
                            } else if (file.isDirectory()) {
                                p63Var.a(file);
                            } else {
                                p63Var.a(file.getParentFile());
                            }
                        }
                    } else if (file.canRead()) {
                        parentFile = file.getParentFile();
                        if (parentFile == null && parentFile.canRead()) {
                            p63Var.a(file.getParentFile());
                        } else {
                            parentFile2 = file.getParentFile();
                            if (parentFile2 == null) {
                                zContains = false;
                            } else {
                                zContains = p63Var.b.contains(parentFile2);
                            }
                        }
                    } else if (file.isDirectory()) {
                        p63Var.a(file);
                    } else {
                        p63Var.a(file.getParentFile());
                    }
                }
                return Boolean.valueOf(zContains);
            case 1:
                String str = (String) obj;
                str.getClass();
                return ((Dns) this.receiver).a(str);
            default:
                gz7 gz7Var = (gz7) obj;
                gz7Var.getClass();
                TaskActivity taskActivity = (TaskActivity) this.receiver;
                if (taskActivity.L) {
                    gz7Var = gz7.COMPLETE;
                }
                taskActivity.Q(true, gz7Var);
                if (gz7Var.isCancelled()) {
                    sz8.m(taskActivity.X);
                    sz8.m(taskActivity.Y);
                }
                if (gz7Var.isComplete()) {
                    taskActivity.O(null);
                }
                if (gz7Var.isCancelComplete()) {
                    taskActivity.finish();
                }
                return be8.a;
        }
    }
}
