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
    public final defpackage.yz3 m(
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r41v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */
    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        */
}
