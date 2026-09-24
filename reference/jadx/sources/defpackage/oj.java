package defpackage;

import androidx.credentials.playservices.controllers.ResponseUtils;
import com.nimbusds.jose.crypto.impl.XC20P;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class oj implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ oj(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        DetailActivity detailActivity;
        kk kkVar;
        Object bn6Var;
        boolean z = true;
        switch (this.a) {
            case 0:
                rj rjVar = (rj) this.b;
                BlacklistApp blacklistApp = (BlacklistApp) this.c;
                List list = (List) this.d;
                k28 k28Var = rjVar.e;
                if (blacklistApp == null) {
                    cs0 cs0Var = BlacklistApp.Companion;
                    ji jiVar = rjVar.f;
                    cs0Var.getClass();
                    jiVar.getClass();
                    BlacklistApp blacklistApp2 = new BlacklistApp(jiVar.getName(), jiVar.getPackageName(), 0, 4, null);
                    blacklistApp2.setInstalled(jiVar.isInstalled());
                    blacklistApp = blacklistApp2;
                }
                ns0.l(k28Var, blacklistApp, new ArrayList(list), new xi(rjVar, 2));
                return be8.a;
            case 1:
                ((AppsBatchActivity) this.b).a0().k((ArrayList) this.c, (ry7) this.d);
                return be8.a;
            case 2:
                iz4 iz4Var = (iz4) this.b;
                DetailActivity detailActivity2 = (DetailActivity) this.c;
                AppCloudBackup appCloudBackup = (AppCloudBackup) this.d;
                int i = DetailActivity.b0;
                if (iz4Var != null) {
                    hk hkVar = iz4Var.getBackup().a;
                    LocalMetadata metadata = iz4Var.getMetadata();
                    if (metadata == null) {
                        metadata = iz4Var.getBackup().b;
                    }
                    Long lValueOf = Long.valueOf(iz4Var.getDateBackup());
                    Long dateUpdated = iz4Var.getDateUpdated();
                    String backupTag = iz4Var.getBackupTag();
                    d65 d65Var = new d65();
                    DetailActivity.Z(d65Var, hk0.Apk, iz4Var.getApkSize());
                    hk0 hk0Var = hk0.SplitApks;
                    DetailActivity.Z(d65Var, hk0Var, iz4Var.getSplitsApkSize());
                    hk0 hk0Var2 = hk0.SharedLibs;
                    DetailActivity.Z(d65Var, hk0Var2, iz4Var.getSharedLibsSize());
                    hk0 hk0Var3 = hk0.Data;
                    DetailActivity.Z(d65Var, hk0Var3, iz4Var.getDataSize());
                    hk0 hk0Var4 = hk0.ExtData;
                    DetailActivity.Z(d65Var, hk0Var4, iz4Var.getExtDataSize());
                    hk0 hk0Var5 = hk0.Media;
                    DetailActivity.Z(d65Var, hk0Var5, iz4Var.getMediaSize());
                    hk0 hk0Var6 = hk0.Expansion;
                    detailActivity = detailActivity2;
                    DetailActivity.Z(d65Var, hk0Var6, iz4Var.getExpansionSize());
                    if (hkVar.B().j()) {
                        DetailActivity.Z(d65Var, hk0.SpecialData, hkVar.B().A());
                    }
                    d65 d65VarB = d65Var.b();
                    d65 d65Var2 = new d65();
                    for (pw5 pw5Var : fl1.A0(new pw5(hk0Var, hkVar.C()), new pw5(hk0Var2, hkVar.z()), new pw5(hk0Var3, hkVar.g()), new pw5(hk0Var4, hkVar.n()), new pw5(hk0Var5, hkVar.q()), new pw5(hk0Var6, hkVar.m()))) {
                        hk0 hk0Var7 = (hk0) pw5Var.a;
                        q63 q63Var = (q63) pw5Var.b;
                        try {
                            if (q63Var.j()) {
                                HashSet hashSet = mz6.a;
                                if (mz6.m(q63Var)) {
                                    List list2 = mz6.t(q63Var).i;
                                    bn6Var = new fk0(iz1.a(list2, jy6.c), iz1.a(list2, iy6.c));
                                } else {
                                    bn6Var = null;
                                }
                            } else {
                                bn6Var = null;
                            }
                        } catch (Throwable th) {
                            bn6Var = new bn6(th);
                        }
                        if (bn6Var instanceof bn6) {
                            bn6Var = null;
                        }
                        fk0 fk0Var = (fk0) bn6Var;
                        if (fk0Var != null) {
                            d65Var2.put(hk0Var7, fk0Var);
                        }
                        break;
                    }
                    d65 d65VarB2 = d65Var2.b();
                    metadata.getClass();
                    boolean zIsProtectedBackup = metadata.isProtectedBackup();
                    ww4 ww4VarP = nc8.p();
                    hk0 hk0Var8 = hk0.Apk;
                    Long apkBackupSize = (Long) d65VarB.get(hk0Var8);
                    if (apkBackupSize == null) {
                        apkBackupSize = metadata.getApkBackupSize();
                    }
                    lk.s(ww4VarP, hk0Var8, apkBackupSize, null, false, null, metadata.getVersionName(), metadata.getVersionCode(), (fk0) d65VarB2.get(hk0Var8), 24);
                    hk0 hk0Var9 = hk0.SplitApks;
                    Long splitsBackupSize = (Long) d65VarB.get(hk0Var9);
                    if (splitsBackupSize == null) {
                        splitsBackupSize = metadata.getSplitsBackupSize();
                    }
                    lk.s(ww4VarP, hk0Var9, splitsBackupSize, metadata.getSplitsSizeMirrored(), false, null, null, null, (fk0) d65VarB2.get(hk0Var9), 120);
                    hk0 hk0Var10 = hk0.SharedLibs;
                    Long sharedLibsBackupSize = (Long) d65VarB.get(hk0Var10);
                    if (sharedLibsBackupSize == null) {
                        sharedLibsBackupSize = metadata.getSharedLibsBackupSize();
                    }
                    lk.s(ww4VarP, hk0Var10, sharedLibsBackupSize, metadata.getSharedLibsSizeMirrored(), false, null, null, null, (fk0) d65VarB2.get(hk0Var10), 120);
                    hk0 hk0Var11 = hk0.Data;
                    Long dataBackupSize = (Long) d65VarB.get(hk0Var11);
                    if (dataBackupSize == null) {
                        dataBackupSize = metadata.getDataBackupSize();
                    }
                    Long l = dataBackupSize;
                    Long dataSizeMirrored = metadata.getDataSizeMirrored();
                    Boolean boolIsDataEncrypted = metadata.isDataEncrypted();
                    Boolean bool = Boolean.TRUE;
                    lk.s(ww4VarP, hk0Var11, l, dataSizeMirrored, pe4.d(boolIsDataEncrypted, bool), metadata.getDataEncryptionMethod(), null, null, (fk0) d65VarB2.get(hk0Var11), 96);
                    hk0 hk0Var12 = hk0.ExtData;
                    Long extDataBackupSize = (Long) d65VarB.get(hk0Var12);
                    if (extDataBackupSize == null) {
                        extDataBackupSize = metadata.getExtDataBackupSize();
                    }
                    lk.s(ww4VarP, hk0Var12, extDataBackupSize, metadata.getExtDataSizeMirrored(), pe4.d(metadata.isExtDataEncrypted(), bool), metadata.getExtDataEncryptionMethod(), null, null, (fk0) d65VarB2.get(hk0Var12), 96);
                    hk0 hk0Var13 = hk0.Media;
                    Long mediaBackupSize = (Long) d65VarB.get(hk0Var13);
                    if (mediaBackupSize == null) {
                        mediaBackupSize = metadata.getMediaBackupSize();
                    }
                    lk.s(ww4VarP, hk0Var13, mediaBackupSize, metadata.getMediaSizeMirrored(), pe4.d(metadata.isMediaEncrypted(), bool), metadata.getMediaEncryptionMethod(), null, null, (fk0) d65VarB2.get(hk0Var13), 96);
                    hk0 hk0Var14 = hk0.Expansion;
                    Long expBackupSize = (Long) d65VarB.get(hk0Var14);
                    if (expBackupSize == null) {
                        expBackupSize = metadata.getExpBackupSize();
                    }
                    lk.s(ww4VarP, hk0Var14, expBackupSize, metadata.getExpSizeMirrored(), false, null, null, null, (fk0) d65VarB2.get(hk0Var14), 120);
                    hk0 hk0Var15 = hk0.SpecialData;
                    lk.s(ww4VarP, hk0Var15, (Long) d65VarB.get(hk0Var15), null, false, null, null, null, (fk0) d65VarB2.get(hk0Var15), 120);
                    kkVar = new kk(lValueOf, dateUpdated, backupTag, zIsProtectedBackup, nc8.h(ww4VarP));
                } else {
                    detailActivity = detailActivity2;
                    if (appCloudBackup != null) {
                        CloudMetadata metadata2 = appCloudBackup.getMetadata();
                        Long lValueOf2 = Long.valueOf(appCloudBackup.getDateBackup());
                        Long lValueOf3 = Long.valueOf(appCloudBackup.getDateBackedUpOrUpdated());
                        String backupTag2 = appCloudBackup.getBackupTag();
                        metadata2.getClass();
                        boolean zIsProtectedBackup2 = metadata2.isProtectedBackup();
                        ww4 ww4VarP2 = nc8.p();
                        lk.q(ww4VarP2, metadata2.hasApk(), hk0.Apk, metadata2.getApkSize(), null, false, null, metadata2.getVersionName(), metadata2.getVersionCode(), 48);
                        lk.q(ww4VarP2, metadata2.hasSplitApks(), hk0.SplitApks, metadata2.getSplitsSize(), metadata2.getSplitsSizeMirrored(), false, null, null, null, 240);
                        lk.q(ww4VarP2, metadata2.hasSharedLibs(), hk0.SharedLibs, metadata2.getSharedLibsSize(), metadata2.getSharedLibsSizeMirrored(), false, null, null, null, 240);
                        boolean zHasData = metadata2.hasData();
                        hk0 hk0Var16 = hk0.Data;
                        Long dataSize = metadata2.getDataSize();
                        Long dataSizeMirrored2 = metadata2.getDataSizeMirrored();
                        Boolean boolIsDataEncrypted2 = metadata2.isDataEncrypted();
                        Boolean bool2 = Boolean.TRUE;
                        lk.q(ww4VarP2, zHasData, hk0Var16, dataSize, dataSizeMirrored2, pe4.d(boolIsDataEncrypted2, bool2), metadata2.getDataEncryptionMethod(), null, null, XC20P.IV_BIT_LENGTH);
                        lk.q(ww4VarP2, metadata2.hasExtData(), hk0.ExtData, metadata2.getExtDataSize(), metadata2.getExtDataSizeMirrored(), pe4.d(metadata2.isExtDataEncrypted(), bool2), metadata2.getExtDataEncryptionMethod(), null, null, XC20P.IV_BIT_LENGTH);
                        lk.q(ww4VarP2, metadata2.hasMedia(), hk0.Media, metadata2.getMediaSize(), metadata2.getMediaSizeMirrored(), pe4.d(metadata2.isMediaEncrypted(), bool2), metadata2.getMediaEncryptionMethod(), null, null, XC20P.IV_BIT_LENGTH);
                        lk.q(ww4VarP2, metadata2.hasExpansion(), hk0.Expansion, metadata2.getExpSize(), metadata2.getExpSizeMirrored(), false, null, null, null, 240);
                        lk.q(ww4VarP2, metadata2.hasSpecialData(), hk0.SpecialData, metadata2.getSpecialDataSize(), null, false, null, null, null, 240);
                        kkVar = new kk(lValueOf2, lValueOf3, backupTag2, zIsProtectedBackup2, nc8.h(ww4VarP2));
                    } else {
                        kkVar = null;
                    }
                }
                if (kkVar != null) {
                    zn4 zn4Var = zn4.a;
                    zn4.e(new d11(7, detailActivity, kkVar));
                }
                return be8.a;
            case 3:
                gm gmVar = (gm) this.b;
                String str = (String) this.c;
                mk2 mk2Var = (mk2) this.d;
                LocalMetadata localMetadata = gmVar.b;
                hk hkVar2 = gmVar.a;
                if (str != null && str.length() != 0) {
                    z = false;
                }
                if (z) {
                    vr6 vr6Var = vr6.INSTANCE;
                    String str2 = mk2Var.b;
                    ji jiVar2 = mk2Var.e;
                    if (jiVar2 == null) {
                        pe4.F("app");
                        throw null;
                    }
                    vr6.i$default(vr6Var, str2, dj7.l("Removing note from local backup for ", jiVar2.asString(), " with backup id: ", hkVar2.a), null, 4, null);
                } else {
                    vr6 vr6Var2 = vr6.INSTANCE;
                    String str3 = mk2Var.b;
                    ji jiVar3 = mk2Var.e;
                    if (jiVar3 == null) {
                        pe4.F("app");
                        throw null;
                    }
                    vr6.i$default(vr6Var2, str3, dj7.l("Adding note for local backup for ", jiVar3.asString(), " with backup id: ", hkVar2.a), null, 4, null);
                    vr6.i$default(vr6Var2, mk2Var.b, eq3.k("Note: '", str, "'"), null, 4, null);
                }
                localMetadata.updateNote(str);
                cu.a.f(localMetadata, hkVar2.v());
                vr6.i$default(vr6.INSTANCE, mk2Var.b, (!z ? "Adding" : "Removing").concat(" note successful"), null, 4, null);
                g00 g00Var = g00.a;
                ji jiVar4 = mk2Var.e;
                if (jiVar4 != null) {
                    g00.F(jiVar4.getPackageName());
                    return be8.a;
                }
                pe4.F("app");
                throw null;
            case 4:
                ((dm3) this.d).c(qp3.class, new qp3(nc8.I((eo3) this.b), (ty7) this.c, new pp3()));
                return be8.a;
            case 5:
                qf4 qf4Var = (qf4) this.b;
                lh6 lh6Var = (lh6) this.c;
                Exception exc = (Exception) this.d;
                zn7 zn7Var = (zn7) lh6Var.a;
                synchronized (qf4Var) {
                    if (!qf4Var.h && qf4Var.g == pf4.RUNNING) {
                        pf4 pf4Var = pf4.FAILED;
                        qf4Var.g = pf4Var;
                        qf4Var.e.invoke(pf4Var);
                        qf4Var.f.invoke(new of4(zn7Var, exc));
                    }
                }
                return be8.a;
            case 6:
                fs4 fs4Var = (fs4) this.b;
                qo0 qo0Var = (qo0) this.c;
                CharSequence charSequence = (CharSequence) this.d;
                be8 be8Var = be8.a;
                if (!fs4Var.isDetached() && fs4Var.q() != null) {
                    qo0Var.f();
                    SettingsDetailActivity settingsDetailActivityQ = fs4Var.q();
                    settingsDetailActivityQ.getClass();
                    tk0 tk0Var = new tk0(settingsDetailActivityQ, charSequence);
                    SettingsDetailActivity settingsDetailActivityQ2 = fs4Var.q();
                    settingsDetailActivityQ2.getClass();
                    tk0Var.F(settingsDetailActivityQ2, true, true);
                }
                return be8Var;
            default:
                return ResponseUtils.Companion.handleGetCredentialResponse$lambda$3((Executor) this.b, (t22) this.c, (bw3) this.d);
        }
    }
}
