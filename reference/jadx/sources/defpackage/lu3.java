package defpackage;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lu3 extends no2 {
    public final fu3 n;
    public final d04 p;
    public final fo2 q;
    public final String r;
    public oi5 t;
    public int x;

    /* JADX WARN: Illegal instructions before constructor call */
    public lu3(fu3 fu3Var, d04 d04Var, fo2 fo2Var) {
        d04Var.getClass();
        fo2Var.getClass();
        String str = fo2Var.a;
        super(fo2Var.c, fo2Var.d, str);
        this.n = fu3Var;
        this.p = d04Var;
        this.q = fo2Var;
        this.r = "GRestDownloadSession: ".concat(fo2Var.a());
    }

    @Override // defpackage.no2
    public final void a() {
        tb1 tb1Var = tb1.a;
        String displayNameEn = qb1.f().getDisplayNameEn();
        vr6.w$default(vr6.INSTANCE, this.r, eq3.k("Closing connection with ", displayNameEn, ", may result in unknown errors"), null, 4, null);
        close();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        f13.a(this.t);
    }

    @Override // defpackage.no2
    public final void g() {
        this.x = 0;
        j(false);
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0188  */
    /* JADX WARN: Code duplicated, block: B:60:0x018d  */
    /* JADX WARN: Code duplicated, block: B:62:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:64:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:67:0x01b6  */
    /* JADX WARN: Instruction removed from duplicated block: B:60:0x018d, please report this as an issue */
    public final void j(final boolean z) {
        Object bn6Var;
        fu3 fu3Var;
        int i;
        vz3 vz3Var;
        long jLongValue;
        Long l;
        String str = this.a;
        fo2 fo2Var = this.q;
        String strJ = eq3.j(this.r, ": executeDownload");
        ph0 ph0Var = new ph0(this, new kh6(), new kh6(), 2);
        try {
            oi5 oi5Var = new oi5(new st3() { // from class: ku3
                @Override // defpackage.st3
                public final Object d(Object obj, Object obj2, Object obj3, Object obj4) throws IOException {
                    long jLongValue2 = ((Long) obj).longValue();
                    long jLongValue3 = ((Long) obj2).longValue();
                    ((Long) obj3).getClass();
                    OutputStream outputStream = (OutputStream) obj4;
                    outputStream.getClass();
                    lu3 lu3Var = this.a;
                    d04 d04Var = lu3Var.p;
                    String str2 = lu3Var.a;
                    if (jLongValue2 < jLongValue3) {
                        long j = jLongValue3 % 1;
                        if (j < 0) {
                            j++;
                        }
                        long j2 = jLongValue2 % 1;
                        if (j2 < 0) {
                            j2++;
                        }
                        long j3 = (j - j2) % 1;
                        if (j3 < 0) {
                            j3++;
                        }
                        jLongValue3 -= j3;
                    }
                    d04Var.getClass();
                    str2.getClass();
                    HttpUrl.Builder builderG = d04.u(d04Var.d, "/drive/v3/files/".concat(str2)).g();
                    builderG.d("alt", "media");
                    builderG.d("supportsAllDrives", "true");
                    if (z) {
                        builderG.d("acknowledgeAbuse", "true");
                    }
                    Request.Builder builder = new Request.Builder();
                    builder.a = builderG.e();
                    builder.b();
                    builder.c.d("Range", "bytes=" + jLongValue2 + "-" + jLongValue3);
                    Response responseE = d04Var.e(new Request(builder));
                    try {
                        InputStream inputStreamA = responseE.k.a();
                        try {
                            try {
                                cy0.j(inputStreamA, outputStream, 262144);
                                outputStream.close();
                                inputStreamA.close();
                                responseE.close();
                                return be8.a;
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    rs9.c(outputStream, th);
                                    throw th2;
                                }
                            }
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                rs9.c(inputStreamA, th3);
                                throw th4;
                            }
                        }
                    } catch (Throwable th5) {
                        try {
                            throw th5;
                        } catch (Throwable th6) {
                            rs9.c(responseE, th5);
                            throw th6;
                        }
                    }
                }
            }, this.b, fo2Var.c, true, fo2Var.a(), "google_drive:" + str + ":" + fo2Var.c, fo2Var.e, fo2Var.f);
            this.t = oi5Var;
            oi5Var.b(ph0Var);
        } catch (Exception e) {
            if (this.d.isCancelled()) {
                return;
            }
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, strJ, eq3.k("Error while downloading file id '", str, "'"), e, null, 8, null);
            boolean z2 = e instanceof vz3;
            if (z2) {
                vr6.e$default(vr6Var, this.r, rs9.w((vz3) e), null, 4, null);
            }
            ai6 ai6Var = nf1.a;
            boolean zE = x13.E(e);
            ke keVar = this.e;
            fu3 fu3Var2 = this.n;
            if (zE) {
                try {
                    bn6Var = fu3Var2.p(false);
                } catch (Throwable th) {
                    bn6Var = new bn6(th);
                }
                Throwable thA = en6.a(bn6Var);
                if (thA != null) {
                    fu3Var = fu3Var2;
                    vr6.e$default(vr6.INSTANCE, strJ, "Error while checking Google Drive main folder after file-not-found response", thA, null, 8, null);
                } else {
                    fu3Var = fu3Var2;
                }
                boolean z3 = bn6Var instanceof bn6;
                if (!z3) {
                    if (z3) {
                        bn6Var = null;
                    }
                    if (bn6Var == null) {
                        tb1 tb1Var = tb1.a;
                        String strJ2 = qb1.j();
                        vr6 vr6Var2 = vr6.INSTANCE;
                        vr6.e$default(vr6Var2, strJ, eq3.l("Main Swift Backup folder '", fu3Var.i(), "' with id '", strJ2, "' not found!"), null, 4, null);
                        String strL = oq7.L("\n                    User has manually deleted the Main Swift Backup folder '" + fu3Var.i() + "' from Google Drive. ALL cloud backups are now invalid and should be deleted from Swift Backup.\n                    ----------------\n                    Steps to resolve\n                    ----------------\n                    1. Open Swift Backup and go to 'Cloud sync' section.\n                    2. Use 'Delete tag and associated backups' button to delete backups. Do the same for all tags you may have.\n                    3. Disconnect then reconnect Google Drive in Swift Backup.\n                    ");
                        vr6.e$default(vr6Var2, strJ, strL, null, 4, null);
                        keVar.b = new Exception(strL);
                        return;
                    }
                }
            } else {
                fu3Var = fu3Var2;
            }
            if (zE) {
                vr6 vr6Var3 = vr6.INSTANCE;
                vr6.e$default(vr6Var3, strJ, eq3.k("User has manually deleted the synced file '", this.b.p(), " (...)' from Google Drive."), null, 4, null);
                fu3Var.getClass();
                vr6.e$default(vr6Var3, strJ, "User has manually deleted uploaded files from Google Drive. If multiple files were deleted, it is best to delete ALL cloud backups in Swift Backup and start fresh.\n----------------\nSteps to resolve\n----------------\n1. Open Swift Backup and go to 'Cloud sync' section.\n2. Use 'Delete tag and associated backups' button to delete backups. Do the same for all tags you may have.\n3. Disconnect then reconnect Google Drive in Swift Backup.", null, 4, null);
                keVar.b = new Exception("User has manually deleted uploaded files from Google Drive. If multiple files were deleted, it is best to delete ALL cloud backups in Swift Backup and start fresh.\n----------------\nSteps to resolve\n----------------\n1. Open Swift Backup and go to 'Cloud sync' section.\n2. Use 'Delete tag and associated backups' button to delete backups. Do the same for all tags you may have.\n3. Disconnect then reconnect Google Drive in Swift Backup.");
                return;
            }
            ai6 ai6Var2 = nf1.a;
            if (x13.J(e) || x13.G(e) || x13.I(e) || x13.C(e)) {
                i = this.x;
                if (i < 5) {
                    int i2 = i + 1;
                    this.x = i2;
                    Log.d(strJ, "Retrying download (" + i2 + "/5)");
                    vz3Var = z2 ? (vz3) e : null;
                    if (vz3Var != null || (l = vz3Var.d) == null) {
                        jLongValue = 5000;
                    } else {
                        jLongValue = l.longValue();
                    }
                    try {
                        Thread.sleep(jLongValue);
                    } catch (Exception unused) {
                    }
                    j(false);
                    return;
                }
            } else {
                String message = e.getMessage();
                if (message == null) {
                    message = "";
                }
                if (nq7.Z(message, "Connection reset by peer", true)) {
                    i = this.x;
                    if (i < 5) {
                        int i3 = i + 1;
                        this.x = i3;
                        Log.d(strJ, "Retrying download (" + i3 + "/5)");
                        if (z2) {
                        }
                        if (vz3Var != null) {
                            jLongValue = 5000;
                        } else {
                            jLongValue = 5000;
                        }
                        Thread.sleep(jLongValue);
                        j(false);
                        return;
                    }
                } else {
                    String message2 = e.getMessage();
                    if (message2 == null) {
                        message2 = "";
                    }
                    if (nq7.Z(message2, "Internal Error", true) || x13.K(e) || ((z2 && rs9.n((vz3) e)) || fu3Var.r(e))) {
                        i = this.x;
                        if (i < 5) {
                            int i4 = i + 1;
                            this.x = i4;
                            Log.d(strJ, "Retrying download (" + i4 + "/5)");
                            if (z2) {
                            }
                            if (vz3Var != null) {
                                jLongValue = 5000;
                            } else {
                                jLongValue = 5000;
                            }
                            Thread.sleep(jLongValue);
                            j(false);
                            return;
                        }
                    }
                }
            }
            String message3 = e.getMessage();
            if (!nq7.Z(message3 != null ? message3 : "", "cannotDownloadAbusiveFile", false) || z) {
                keVar.b = e;
                return;
            }
            Log.d(strJ, "Surpassing abuse acknowledgement request");
            Const.R();
            j(true);
        }
    }
}
