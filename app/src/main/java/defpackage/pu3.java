package defpackage;

import com.google.android.gms.auth.UserRecoverableAuthException;
import com.nimbusds.jose.HeaderParameterNames;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedHashMap;
import okhttp3.HttpUrl;
import okhttp3.Request;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pu3 extends ag8 {
    public final fu3 i;
    public final d04 j;
    public final String k;
    public InputStream l;
    public String m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pu3(fu3 fu3Var, d04 d04Var, rf8 rf8Var) {
        super(rf8Var);
        d04Var.getClass();
        rf8Var.getClass();
        this.i = fu3Var;
        this.j = d04Var;
        this.k = "GRestUploadSession";
    }

    @Override // defpackage.ag8
    public final void b() {
        tb1 tb1Var = tb1.a;
        String displayNameEn = qb1.f().getDisplayNameEn();
        vr6.w$default(vr6.INSTANCE, this.k, eq3.k("Closing connection with ", displayNameEn, ", may result in unknown errors"), null, 4, null);
        i();
    }

    @Override // defpackage.ag8
    public final String d() {
        return this.k;
    }

    @Override // defpackage.ag8
    public final void f() {
        tb1 tb1Var = tb1.a;
        String strE = qb1.e();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        rf8 rf8Var = this.a;
        boolean z = rf8Var.c;
        String str = rf8Var.d;
        if (z) {
            linkedHashMap.put(HeaderParameterNames.AUTHENTICATION_TAG, strE);
        }
        if (str != null && str.length() != 0) {
            linkedHashMap.put("backupId", str);
        }
        j(this.b, new zz3(rf8Var.b(), qb1.j(), rf8Var.b == 1 ? "application/vnd.android.package-archive" : null, linkedHashMap, 1), new mu3(0, this, new l86(rf8Var.a())));
    }

    public final void i() {
        f13.a(this.l);
        this.l = null;
    }

    public final void j(String str, zz3 zz3Var, mu3 mu3Var) {
        mu3 mu3Var2;
        Exception exc;
        fu3 fu3Var = this.i;
        String str2 = "Update request failed because backed up file id '";
        String str3 = "Retrying upload (";
        String strJ = eq3.j(this.k, ": executeUpload");
        tb1 tb1Var = tb1.a;
        String strJ2 = qb1.j();
        if (strJ2 != null) {
            String str4 = !nq7.j0(strJ2) ? strJ2 : null;
            if (str4 != null) {
                rf8 rf8Var = this.a;
                long jA = rf8Var.a.A();
                zz3 zz3VarA = zz3.a(zz3Var, null, str4, 27);
                ih6 ih6Var = new ih6();
                ih6 ih6Var2 = new ih6();
                String str5 = str4;
                try {
                    try {
                        zz3 zz3VarL = l(str, zz3VarA);
                        try {
                            mu3Var2 = mu3Var;
                            try {
                                this.d.a = m(str, zz3VarL, jA, mu3Var2, new rm(9, ih6Var, ih6Var2), new gj(ih6Var2, 20)).a;
                                mu3Var2.invoke(Long.valueOf(jA), 100);
                                return;
                            } catch (Exception e) {
                                e = e;
                                exc = e;
                                zz3VarA = zz3VarL;
                                vr6 vr6Var = vr6.INSTANCE;
                                vr6.e$default(vr6Var, strJ, "Upload failed for file '" + rf8Var.a.p() + "'", exc, null, 8, null);
                                Exception exc2 = exc;
                                if (exc2 instanceof vz3) {
                                    vr6.e$default(vr6Var, this.k, rs9.w((vz3) exc2), null, 4, null);
                                }
                                ai6 ai6Var = nf1.a;
                                if (x13.E(exc2) && nq7.Z(io4.b(exc2), str5, true)) {
                                    vr6.e$default(vr6Var, strJ, "Main Swift Backup folder '" + fu3Var.i() + "' with id '" + str5 + "' not found!", null, 4, null);
                                    String strI = fu3Var.i();
                                    StringBuilder sb = new StringBuilder("\n                    User has manually deleted the Main Swift Backup folder '");
                                    sb.append(strI);
                                    sb.append("' from Google Drive. ALL cloud backups are now invalid and should be deleted from Swift Backup.\n                    ----------------\n                    Steps to resolve\n                    ----------------\n                    1. Open Swift Backup and go to 'Cloud sync' section.\n                    2. Use 'Delete tag and associated backups' button to delete backups. Do the same for all tags you may have.\n                    3. Disconnect then reconnect Google Drive in Swift Backup.\n                    ");
                                    String strL = oq7.L(sb.toString());
                                    vr6.e$default(vr6Var, strJ, strL, null, 4, null);
                                    a(new Exception(strL), true);
                                    return;
                                }
                                if (e()) {
                                    return;
                                }
                                boolean z = (exc2 instanceof UserRecoverableAuthException) || (exc2 instanceof t04);
                                boolean z2 = ih6Var2.a && str != null && str.length() != 0 && x13.E(exc2) && nq7.Z(io4.b(exc2), str, true);
                                int i = this.f;
                                int i2 = this.e;
                                boolean z3 = i < i2;
                                boolean z4 = z2 || k(exc2);
                                boolean z5 = ih6Var.a && !z2;
                                boolean z6 = !z5 || this.n < 1;
                                if (!z3 || !z4 || !z6) {
                                    if (z) {
                                        vr6.i$default(vr6Var, strJ, "Disconnecting Google Drive due to authentication issue", null, 4, null);
                                        tb1 tb1Var2 = tb1.a;
                                        qb1.a();
                                    }
                                    a(exc2, z);
                                    return;
                                }
                                vz3 vz3Var = exc2 instanceof vz3 ? (vz3) exc2 : null;
                                if (h(vz3Var != null ? vz3Var.d : null)) {
                                    if (z5) {
                                        int i3 = this.n + 1;
                                        this.n = i3;
                                        vr6.i$default(vr6Var, strJ, "Restarting Google Drive upload with a fresh session (" + i3 + "/1)", null, 4, null);
                                    }
                                    int i4 = this.f + 1;
                                    this.f = i4;
                                    vr6.i$default(vr6Var, strJ, str3 + i4 + "/" + i2 + ")", null, 4, null);
                                    i();
                                    if (!z2) {
                                        j(str, zz3VarA, mu3Var2);
                                        return;
                                    }
                                    vr6.e$default(vr6Var, strJ, str2 + str + "' is missing. Retrying create.", null, 4, null);
                                    j(null, zz3.a(zz3Var, null, null, 30), mu3Var2);
                                    return;
                                }
                                return;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            mu3Var2 = mu3Var;
                        }
                    } catch (Exception e3) {
                        mu3Var2 = mu3Var;
                        str2 = "Update request failed because backed up file id '";
                        str3 = "Retrying upload (";
                        str5 = str5;
                        exc = e3;
                    }
                } finally {
                    i();
                }
            }
        }
        l0.e("CloudClient.mainFolderId is null or blank!");
    }

    public final boolean k(Exception exc) {
        ai6 ai6Var = nf1.a;
        if (!x13.H(exc)) {
            String message = exc.getMessage();
            if (message == null) {
                message = "";
            }
            if (!nq7.Z(message, "Internal Error", true) && ((!(exc instanceof vz3) || !rs9.n((vz3) exc)) && !this.i.r(exc))) {
                return false;
            }
        }
        return true;
    }

    public final zz3 l(String str, zz3 zz3Var) throws IOException {
        qj4 qj4Var;
        if (str != null && !nq7.j0(str)) {
            return zz3.a(zz3Var, null, null, 30);
        }
        String strA = zz3Var.a;
        if (strA == null && (strA = this.m) == null) {
            d04 d04Var = this.j;
            d04Var.getClass();
            Request.Builder builder = new Request.Builder();
            HttpUrl.Builder builderG = d04.u(d04Var.d, "/drive/v3/files/generateIds").g();
            builderG.d("count", "1");
            builderG.d("space", "drive");
            builderG.d("type", "files");
            builder.a = builderG.e();
            builder.b();
            qj4 qj4VarX = d04Var.g(new Request(builder)).x("ids");
            if (qj4VarX != null) {
                xi4 xi4VarG = !(qj4VarX instanceof xi4) ? null : qj4VarX.g();
                if (xi4VarG != null && (qj4Var = (qj4) el1.T0(xi4VarG)) != null && (strA = d04.a(qj4Var)) != null) {
                    if (nq7.j0(strA)) {
                        strA = null;
                    }
                    if (strA != null) {
                        this.m = strA;
                    }
                }
            }
            y5.m("Google Drive did not return a generated file id");
            return null;
        }
        this.m = strA;
        return zz3.a(zz3Var, strA, null, 30);
    }

    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:43)
        */
    public final yz3 m(String str, zz3 zz3Var, long total, mu3 progress, rm onError, gj onFatal) throws Exception {
        jh6 sessionCount = new jh6();
        int maxRetries = Math.max(0, this.e - this.f);
        int retryCount = 0;

        oh1 openInput = new oh1(1, this, pu3.class, "openInputStreamAt", "openInputStreamAt(J)Ljava/io/InputStream;", 0, 2);
        ou3 upload = new ou3(sessionCount, this, str, zz3Var, total, onError, onFatal);
        rk shouldStop = new rk(0, this, pu3.class, "shouldStopUpload", "shouldStopUpload()Z", 0, 3);
        ae1 recoverable = new ae1(1, this, pu3.class, "isRecoverableUploadError", "isRecoverableUploadError(Ljava/lang/Exception;)Z", 0, 6);
        rx recoverHandler = new rx(4);
        ox retryPredicate = new ox(this, 16);
        nu3 progressCallback = new nu3(progress, this, total);
        dk closeCallback = new dk(this, 28);

        long initialOffset = Math.max(0L, (long) this.e - (long) this.f);
        l04 state = new l04(total, maxRetries, openInput, upload, shouldStop, recoverable,
                recoverHandler, retryPredicate, progressCallback, closeCallback, retryCount);

        if (total < 0L || initialOffset < 0L) {
            throw new IllegalArgumentException("Invalid Google Drive upload range");
        }

        while (true) {
            Boolean stop = (Boolean) shouldStop.invoke();
            if (stop.booleanValue()) {
                throw new IOException("Google Drive upload stopped");
            }

            k04 session = upload.c();
            if (session instanceof i04) {
                return ((i04) session).a;
            }
            if (!(session instanceof j04)) {
                q.j();
                return null;
            }

            String uploadUrl = ((j04) session).a;
            if (uploadUrl == null || nq7.j0(uploadUrl)) {
                c6.f("Google Drive upload URL must not be blank");
                return null;
            }

            long offset = initialOffset;
            while (offset < total) {
                stop = (Boolean) shouldStop.invoke();
                if (stop.booleanValue()) {
                    throw new IOException("Google Drive upload stopped");
                }

                long remaining = total - offset;
                long chunkSize = Math.min(0x800000L, remaining);
                java.io.InputStream input = null;
                try {
                    input = (java.io.InputStream) openInput.invoke(Long.valueOf(offset));
                    kh6 chunkProgress = new kh6();
                    e04 callback = new e04(chunkProgress, total, state, offset);
                    h04 response = upload.a(uploadUrl, input, offset, chunkSize, total, callback);

                    if (response instanceof f04) {
                        state.b(total);
                        Object value = ((f04) response).a;
                        if (value instanceof yz3) {
                            return (yz3) value;
                        }
                        return null;
                    }

                    if (!(response instanceof g04)) {
                        q.j();
                        return null;
                    }

                    g04 incomplete = (g04) response;
                    long next = incomplete.a;
                    state.d(next, offset, offset + chunkSize, "chunk");
                    String nextUrl = incomplete.b;
                    if (nextUrl != null) {
                        uploadUrl = nextUrl;
                    }

                    if (next <= offset) {
                        throw new IOException("Google Drive resumable upload made no progress");
                    }
                    offset = next;
                    state.b(offset);
                    retryCount = 0;
                } catch (Exception ex) {
                    Boolean retryable = (Boolean) recoverable.invoke(ex);
                    if (!retryable.booleanValue() || !state.c(ex, retryCount)) {
                        throw ex;
                    }
                    retryCount++;
                    onError.invoke(ex);
                    closeCallback.invoke();
                    try {
                        Thread.yield();
                    } catch (Exception ignored) {
                    }
                    break;
                } finally {
                    f13.a(input);
                }
            }

            if (offset >= total) {
                k04 finalStatus = upload.b(total, uploadUrl);
                if (finalStatus instanceof i04) {
                    return ((i04) finalStatus).a;
                }
            }
        }
    }

}
