package defpackage;

import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.a;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.AppCloudBackups;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ig1 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ig1(Object obj, Object obj2, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return new ig1((ng1) this.b, (eb2) obj2, jv1Var, 0);
            case 1:
                return new ig1((CsActivity) this.b, (tn2) obj2, jv1Var, 1);
            case 2:
                ig1 ig1Var = new ig1((Set) obj2, jv1Var);
                ig1Var.b = obj;
                return ig1Var;
            default:
                return new ig1((tp8) this.b, (List) obj2, jv1Var, 3);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) throws FileNotFoundException {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                ((ig1) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                return be8Var;
            case 1:
                ((ig1) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                return be8Var;
            case 2:
                return ((ig1) create((ij5) obj, (jv1) obj2)).invokeSuspend(be8Var);
            default:
                ((ig1) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                return be8Var;
        }
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws FileNotFoundException {
        AppCloudBackup latestBackup;
        m84 m84Var;
        CloudCredentials cloudCredentials;
        int i = this.a;
        CloudCredentials cloudCredentials2 = null;
        z = false;
        boolean z = false;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                lg7.H(obj);
                ex6 ex6Var = ((ng1) this.b).f;
                eb2 eb2Var = (eb2) obj2;
                db2 db2VarB = eb2Var.a("apps").b();
                Iterator it = (Iterator) db2VarB.b;
                int i2 = 0;
                long totalSize = 0;
                while (it.hasNext()) {
                    hk5 hk5Var = (hk5) it.next();
                    AppCloudBackups appCloudBackupsFromSnapshot = AppCloudBackups.Companion.fromSnapshot(new eb2(((eb2) db2VarB.c).b.d(hk5Var.a.a), sb4.d(hk5Var.b)));
                    CloudMetadata metadata = (appCloudBackupsFromSnapshot == null || (latestBackup = appCloudBackupsFromSnapshot.getLatestBackup()) == null) ? null : latestBackup.getMetadata();
                    if (metadata == null || metadata.hasBackups()) {
                        if (metadata != null && metadata.isValidCloudDetails()) {
                            i2++;
                            totalSize += metadata.getTotalSize();
                        }
                    }
                }
                db2 db2VarB2 = eb2Var.a("folders").b();
                Iterator it2 = (Iterator) db2VarB2.b;
                int i3 = 0;
                while (it2.hasNext()) {
                    hk5 hk5Var2 = (hk5) it2.next();
                    ((eb2) db2VarB2.c).b.d(hk5Var2.a.a);
                    sb4 sb4VarD = sb4.d(hk5Var2.b);
                    sf1.g.getClass();
                    FolderMetadata folderMetadata = (FolderMetadata) t62.b(FolderMetadata.class, sb4VarD.a.getValue());
                    if (folderMetadata != null) {
                        if (!folderMetadata.isValid()) {
                            folderMetadata = null;
                        }
                        if (folderMetadata != null) {
                            i3++;
                        }
                    }
                }
                eb2 eb2VarA = eb2Var.a("smsBackupsCount");
                Class cls = Integer.TYPE;
                Integer num = (Integer) eb2VarA.c(cls);
                int iIntValue = num != null ? num.intValue() : 0;
                Integer num2 = (Integer) eb2Var.a("callLogBackupsCount").c(cls);
                ex6Var.k(new z8(i2, totalSize, iIntValue, num2 != null ? num2.intValue() : 0, i3));
                return be8Var;
            case 1:
                lg7.H(obj);
                CsActivity csActivity = (CsActivity) this.b;
                m62 m62VarL0 = csActivity.a0();
                a aVar = CloudCredentials.Companion;
                dd1 dd1VarD0 = csActivity.d0();
                tn2 tn2Var = (tn2) obj2;
                m62 m62VarL1 = csActivity.a0();
                aVar.getClass();
                dd1VarD0.getClass();
                vr6 vr6Var = vr6.INSTANCE;
                vr6.i$default(vr6Var, "CloudCredentials", "importSettings called for file:" + (tn2Var != null ? tn2Var.e() : null), null, 4, null);
                if (tn2Var != null) {
                    long jF = tn2Var.f();
                    if (jF > 102400) {
                        p93 p93Var = p93.a;
                        vr6.e$default(vr6Var, "CloudCredentials", eq3.k("importSettings: Abnormally large file selected (", p93.c(Long.valueOf(jF)), ")"), null, 4, null);
                    } else {
                        m62VarL1.h(R.string.processing);
                        InputStream inputStreamOpenInputStream = f13.d().getContentResolver().openInputStream(tn2Var.e());
                        try {
                            Charset charsetDefaultCharset = Charset.defaultCharset();
                            int i4 = n84.a;
                            aq7 aq7Var = new aq7();
                            int i5 = g51.a;
                            if (charsetDefaultCharset == null) {
                                charsetDefaultCharset = Charset.defaultCharset();
                            }
                            InputStreamReader inputStreamReader = new InputStreamReader(inputStreamOpenInputStream, charsetDefaultCharset);
                            ThreadLocal threadLocal = m84.b;
                            Object[] objArr = (Object[]) threadLocal.get();
                            if (((Boolean) objArr[0]).booleanValue()) {
                                m84Var = new m84(new char[8192]);
                            } else {
                                objArr[0] = Boolean.TRUE;
                                m84Var = m84.c;
                            }
                            try {
                                char[] cArr = m84Var.a;
                                if (cArr == null) {
                                    cArr = (char[]) ((Object[]) threadLocal.get())[1];
                                }
                                while (true) {
                                    int i6 = inputStreamReader.read(cArr);
                                    if (-1 != i6) {
                                        aq7Var.write(cArr, 0, i6);
                                    } else {
                                        m84Var.close();
                                        String string = aq7Var.a.toString();
                                        rs9.c(inputStreamOpenInputStream, null);
                                        m62VarL1.f();
                                        try {
                                            gv7 gv7Var = w14.a;
                                            cloudCredentials = (CloudCredentials) w14.c().c(string, CloudCredentials.class);
                                        } catch (Exception e) {
                                            vr6.e$default(vr6.INSTANCE, "CloudCredentials", "importSettings", e, null, 8, null);
                                            cloudCredentials = null;
                                        }
                                        if (cloudCredentials != null) {
                                            CloudCredentials cloudCredentialsCopy = cloudCredentials.copy((16383 & 1) != 0 ? cloudCredentials.cloudTypeConstant : null, (16383 & 2) != 0 ? cloudCredentials.protocol : null, (16383 & 4) != 0 ? cloudCredentials.server : null, (16383 & 8) != 0 ? cloudCredentials.path : null, (16383 & 16) != 0 ? cloudCredentials.port : null, (16383 & 32) != 0 ? cloudCredentials.authType : null, (16383 & 64) != 0 ? cloudCredentials.username : null, (16383 & 128) != 0 ? cloudCredentials.password : null, (16383 & 256) != 0 ? cloudCredentials.key : null, (16383 & 512) != 0 ? cloudCredentials.encryption : null, (16383 & 1024) != 0 ? cloudCredentials.cloudServiceId : null, (16383 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? cloudCredentials._region : null, (16383 & 4096) != 0 ? cloudCredentials.providerPresetId : null, (16383 & 8192) != 0 ? cloudCredentials.displayName : null);
                                            if (cloudCredentialsCopy.getCloudType() != dd1VarD0) {
                                                String str = "importSettings: Fixing cloud type mismatch (expected=" + dd1VarD0 + ", actual=" + cloudCredentialsCopy.getCloudType() + ")";
                                                vr6 vr6Var2 = vr6.INSTANCE;
                                                vr6.w$default(vr6Var2, "CloudCredentials", str, null, 4, null);
                                                cloudCredentialsCopy.setCloudTypeConstant(dd1VarD0.getConstant());
                                                dd1 dd1Var = dd1.SFTP;
                                                if (dd1VarD0 != dd1Var && cloudCredentialsCopy.getCloudType() == dd1Var && cloudCredentialsCopy.getAuthType() == nc1.KEY_BASED) {
                                                    vr6.w$default(vr6Var2, "CloudCredentials", "importSettings: Removing key based authentication details as it isn't supported.", null, 4, null);
                                                    cloudCredentialsCopy.setAuthType(null);
                                                    cloudCredentialsCopy.setKey(null);
                                                    cloudCredentialsCopy.setPassword(null);
                                                }
                                            }
                                            if (!dd1VarD0.getProtocols().contains(cloudCredentialsCopy.getProtocol())) {
                                                String str2 = "importSettings: Fixing protocol mismatch (expected=" + dd1VarD0.getProtocols() + ", actual=" + cloudCredentialsCopy.getProtocol() + ")";
                                                vr6 vr6Var3 = vr6.INSTANCE;
                                                vr6.w$default(vr6Var3, "CloudCredentials", str2, null, 4, null);
                                                fd1 fd1Var = (fd1) el1.S0(dd1VarD0.getProtocols());
                                                vr6.w$default(vr6Var3, "CloudCredentials", "importSettings: Replacing with default protocol '" + fd1Var + "'", null, 4, null);
                                                cloudCredentialsCopy.setProtocol(fd1Var);
                                            }
                                            cloudCredentials2 = cloudCredentialsCopy;
                                        }
                                    }
                                }
                            } catch (Throwable th) {
                                if (m84Var == null) {
                                    throw th;
                                }
                                try {
                                    m84Var.close();
                                    throw th;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                    throw th;
                                }
                            }
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                rs9.c(inputStreamOpenInputStream, th3);
                                throw th4;
                            }
                        }
                    }
                }
                m62VarL0.g = cloudCredentials2;
                csActivity.a0().e().k(no0.a);
                return be8Var;
            case 2:
                lg7.H(obj);
                Set setKeySet = ((ij5) this.b).a().keySet();
                ArrayList arrayList = new ArrayList(hl1.G0(setKeySet, 10));
                Iterator it3 = setKeySet.iterator();
                while (it3.hasNext()) {
                    arrayList.add(((l46) it3.next()).a);
                }
                Set set = (Set) obj2;
                if (set == ed7.a) {
                    z = true;
                } else if (set == null || !set.isEmpty()) {
                    Iterator it4 = set.iterator();
                    while (it4.hasNext()) {
                        if (!arrayList.contains((String) it4.next())) {
                            z = true;
                        }
                    }
                }
                return Boolean.valueOf(z);
            default:
                lg7.H(obj);
                tp8 tp8Var = (tp8) this.b;
                tp8Var.h(R.string.syncing_in_cloud);
                ArrayList arrayListA = xj1.g.c.a();
                HashSet hashSet = new HashSet();
                ArrayList arrayList2 = new ArrayList();
                for (Object obj3 : (List) obj2) {
                    if (hashSet.add(Long.valueOf(((yn8) obj3).c))) {
                        arrayList2.add(obj3);
                    }
                }
                if (jo8.a(new jo8(true), arrayList2, arrayListA)) {
                    dv.i(xj1.g, true, null, false, false, 14);
                }
                tp8Var.f();
                tp8Var.l.k(Boolean.TRUE);
                return be8Var;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ig1(Set set, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = 2;
        this.c = set;
    }
}
