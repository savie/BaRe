package defpackage;

import android.content.Context;
import android.util.Log;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.YandexSignInActivity;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'GoogleDrive' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:160)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class dd1 {
    private static final /* synthetic */ jx2 $ENTRIES;
    private static final /* synthetic */ dd1[] $VALUES;
    public static final dd1 Box;
    public static final dd1 CloudMailRu2;
    public static final dd1 Dropbox;
    public static final dd1 FTP;
    public static final dd1 Filen;
    public static final dd1 GoogleDrive;
    public static final dd1 MegaNz;
    public static final dd1 OneDrive;
    public static final dd1 PCloud;
    public static final dd1 S3;
    public static final dd1 SFTP;
    public static final dd1 SMB;
    public static final dd1 TeraBox;
    public static final dd1 WebDav;
    public static final dd1 YandexDisk;
    private final boolean allowSavingSetupDetails;
    private final List<nc1> authTypes;
    private final int brandingIconRes;
    private final bt3 clientProvider;
    private final String constant;
    private final String displayNameEn;
    private final int displayNameRes;
    private final String firebaseNodePrefix;
    private final boolean isAppFolderBased;
    private final boolean isEmailPasswordBasedWebDav;
    private final boolean isHttpsOptional;
    private final boolean isWebDav;
    private final List<fd1> protocols;
    private final xi6 releaseState;
    private final boolean showUrlInSetup;
    private final qt3 startConnectActivity;
    private final bt3 subtitle;
    private final boolean supportsCurrentAndroidSdk;

    private static final /* synthetic */ dd1[] $values() {
        return new dd1[]{GoogleDrive, OneDrive, Dropbox, MegaNz, Filen, Box, TeraBox, PCloud, YandexDisk, CloudMailRu2, S3, WebDav, SMB, SFTP, FTP};
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        pu puVar = new pu(1);
        zc1 zc1Var = zc1.a;
        int i = 0;
        pc1 pc1Var = new pc1(i);
        xi6 xi6Var = xi6.Production;
        GoogleDrive = new dd1("GoogleDrive", i, "google_drive", R.string.google_drive, "Google Drive", puVar, null, false, R.drawable.ic_branding_google_drive, false, false, false, zc1Var, pc1Var, null, null, false, false, xi6Var, false, 193456, null);
        final int i2 = 0;
        DefaultConstructorMarker defaultConstructorMarker = null;
        bt3 bt3Var = null;
        int i3 = R.drawable.ic_branding_onedrive;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        List list = null;
        List list2 = null;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        Object[] objArr = 0 == true ? 1 : 0;
        OneDrive = new dd1("OneDrive", 1, "one_drive", R.string.one_drive, "OneDrive", bt3Var, objArr, false, i3, z, z2, z3, ad1.a, new vc1(i2), list, list2, z4, z5, xi6Var, z6, 193464, defaultConstructorMarker);
        final int i4 = 1;
        int i5 = R.drawable.ic_branding_dropbox;
        Object[] objArr2 = 0 == true ? 1 : 0;
        Dropbox = new dd1("Dropbox", 2, "dropbox", R.string.dropbox, "Dropbox", bt3Var, objArr2, true, i5, z, z2, z3, bd1.a, new oc1(i4), list, list2, z4, z5, xi6Var, z6, 193432, defaultConstructorMarker);
        int i6 = 3;
        cl clVar = new cl(i6);
        wc1 wc1Var = new wc1(i2);
        int i7 = 193464;
        boolean z7 = false;
        MegaNz = new dd1("MegaNz", 3, "mega_nz", R.string.mega_nz, "Mega.nz", bt3Var, 0 == true ? 1 : 0, z7, R.drawable.ic_branding_mega, z, z2, z3, clVar, wc1Var, list, list2, z4, z5, xi6Var, z6, i7, defaultConstructorMarker);
        int i8 = 4;
        el elVar = new el(i8);
        qc1 qc1Var = new qc1(i4);
        Filen = new dd1("Filen", 4, "filen", R.string.filen, "Filen", bt3Var, 0 == true ? 1 : 0, z7, R.drawable.ic_branding_filen, z, z2, z3, elVar, qc1Var, list, list2, z4, z5, xi6Var, z6, i7, defaultConstructorMarker);
        yc1 yc1Var = yc1.n;
        xc1 xc1Var = new xc1(i2);
        Box = new dd1("Box", 5, "box", R.string.box, "Box", bt3Var, 0 == true ? 1 : 0, z7, R.drawable.ic_branding_box, z, z2, z3, yc1Var, xc1Var, list, list2, z4, z5, xi6Var, z6, i7, defaultConstructorMarker);
        TeraBox = new dd1("TeraBox", 6, "terabox", R.string.terabox, "TeraBox", null, null, false, R.drawable.ic_branding_terabox, false, false, false, new q9(i6), new tc1(i2), null, null, false, false, xi6.Dev, false, 193464, null);
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        int i9 = R.drawable.ic_branding_pcloud;
        boolean z8 = false;
        PCloud = new dd1("PCloud", 7, "pcloud", R.string.pcloud, "pCloud", bt3Var, 0 == true ? 1 : 0, z7, i9, z, z2, z3, new jx(6), new qt3() { // from class: sc1
            @Override // defpackage.qt3
            public final Object invoke(Object obj, Object obj2) {
                switch (i4) {
                    case 0:
                        return dd1._init_$lambda$27((il0) obj, ((Integer) obj2).intValue());
                    case 1:
                        return dd1._init_$lambda$13((il0) obj, ((Integer) obj2).intValue());
                    default:
                        String str = (String) obj;
                        String str2 = (String) obj2;
                        str.getClass();
                        str2.getClass();
                        Log.d(str, str2);
                        return be8.a;
                }
            }
        }, list, list2, z4, z5, xi6Var, z8, 193464, defaultConstructorMarker2);
        YandexDisk = new dd1("YandexDisk", 8, "yandex_disk", R.string.yandex_disk, "Yandex.Disk", bt3Var, "yandex-remote", z7, R.drawable.ic_branding_yandex_disk, z, z2, z3, new b7(10), new tc1(i4), list, list2, z4, z5, xi6Var, z8, 193448, defaultConstructorMarker2);
        qm qmVar = new qm(i8);
        vc1 vc1Var = new vc1(i4);
        fd1 fd1Var = fd1.HTTPS;
        CloudMailRu2 = new dd1("CloudMailRu2", 9, "cloud_mail_ru2", R.string.cloud_mail_ru, "Cloud Mail.Ru", bt3Var, null, z7, R.drawable.ic_branding_cloud_mail_ru, true, true, z3, qmVar, vc1Var, nc8.I(fd1Var), list2, z4, z5, xi6Var, z8, 188472, defaultConstructorMarker2);
        int i10 = 5;
        boolean z9 = false;
        boolean z10 = true;
        boolean z11 = true;
        S3 = new dd1("S3", 10, "s3", R.string.s3, "S3 Storage", new sm(i10), "remote", z7, R.drawable.ic_branding_s3, false, z9, z10, new cl(i8), new oc1(i2), nc8.I(fd1Var), list2, z4, z11, xi6Var, z8, 139680, defaultConstructorMarker2);
        WebDav = new dd1("WebDav", 11, "webdav", R.string.webdav, "WebDAV", new dl(i8), "remote", z7, R.drawable.ic_webdav_new, true, z9, z10, new el(i6), new qc1(i2), fl1.A0(fd1Var, fd1.HTTP), list2, z4, z11, xi6Var, z8, 155936, defaultConstructorMarker2);
        bt3 bt3Var2 = null;
        boolean z12 = false;
        SMB = new dd1("SMB", 12, "smb", R.string.smb, "SMB", bt3Var2, "remote", z7, R.drawable.ic_branding_smb, z12, z9, z10, new fl(i6), new rc1(i2), nc8.I(fd1.SMB), list2, z4, z11, xi6Var, z8, 139688, defaultConstructorMarker2);
        SFTP = new dd1("SFTP", 13, "sftp", R.string.sftp, "SFTP", bt3Var2, "remote", z7, R.drawable.ic_branding_sftp, z12, z9, z10, new jx(i10), new qt3() { // from class: sc1
            @Override // defpackage.qt3
            public final Object invoke(Object obj, Object obj2) {
                switch (i2) {
                    case 0:
                        return dd1._init_$lambda$27((il0) obj, ((Integer) obj2).intValue());
                    case 1:
                        return dd1._init_$lambda$13((il0) obj, ((Integer) obj2).intValue());
                    default:
                        String str = (String) obj;
                        String str2 = (String) obj2;
                        str.getClass();
                        str2.getClass();
                        Log.d(str, str2);
                        return be8.a;
                }
            }
        }, nc8.I(fd1.SFTP), fl1.A0(nc1.USERNAME_PASSWORD, nc1.KEY_BASED), z4, z11, xi6Var, z8, 131496, defaultConstructorMarker2);
        FTP = new dd1("FTP", 14, "ftp", R.string.ftp, "FTP", bt3Var2, "remote", z7, R.drawable.ic_branding_ftp, z12, z9, z10, new b7(9), new uc1(i2), fl1.A0(fd1.FTP, fd1.FTPS_IMPLICIT, fd1.FTPS_EXPLICIT), null, z4, z11, xi6Var, z8, 139560, defaultConstructorMarker2);
        dd1[] dd1VarArr$values = $values();
        $VALUES = dd1VarArr$values;
        $ENTRIES = ly8.q(dd1VarArr$values);
    }

    public /* synthetic */ dd1(String str, int i, String str2, int i2, String str3, bt3 bt3Var, String str4, boolean z, int i3, boolean z2, boolean z3, boolean z4, bt3 bt3Var2, qt3 qt3Var, List list, List list2, boolean z5, boolean z6, xi6 xi6Var, boolean z7, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, str2, i2, str3, (i4 & 8) != 0 ? null : bt3Var, (i4 & 16) != 0 ? null : str4, (i4 & 32) != 0 ? false : z, i3, (i4 & 128) != 0 ? false : z2, (i4 & 256) != 0 ? false : z3, (i4 & 512) != 0 ? false : z4, bt3Var2, qt3Var, (i4 & 4096) != 0 ? ov2.a : list, (i4 & 8192) != 0 ? nc8.I(nc1.USERNAME_PASSWORD) : list2, (i4 & 16384) != 0 ? true : z5, (32768 & i4) != 0 ? false : z6, xi6Var, (i4 & 131072) != 0 ? true : z7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$0() {
        Boolean boolValueOf;
        d45.b.getClass();
        MFirebaseUser mFirebaseUserA = d45.a();
        if (mFirebaseUserA == null) {
            throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
        }
        String email = mFirebaseUserA.getEmail();
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA2 = d45.a();
            boolValueOf = mFirebaseUserA2 != null ? Boolean.valueOf(mFirebaseUserA2.isAnonymous()) : null;
        } catch (Exception unused) {
        }
        if (pe4.d(boolValueOf, Boolean.TRUE)) {
            return null;
        }
        return email;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$1(il0 il0Var, int i) {
        il0Var.getClass();
        hz3.c(il0Var, i);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tb1 _init_$lambda$10() {
        return new v52(new i08(new zz7()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$11(il0 il0Var, int i) {
        il0Var.getClass();
        io4.i(il0Var, ph6.a(TeraBoxSignInActivity.class), i);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tb1 _init_$lambda$12() {
        return new v52(new ov5());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$13(il0 il0Var, int i) {
        il0Var.getClass();
        io4.i(il0Var, ph6.a(PCloudSignInActivity.class), i);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tb1 _init_$lambda$14() {
        return new v52(new jy8());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$15(il0 il0Var, int i) {
        il0Var.getClass();
        io4.i(il0Var, ph6.a(YandexSignInActivity.class), i);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tb1 _init_$lambda$16() {
        return new v52(new vq8(CloudMailRu2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$17(il0 il0Var, int i) {
        il0Var.getClass();
        int i2 = CsActivity.P0;
        vm4.B(il0Var, CloudMailRu2, i);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$18() {
        SwiftApp.Companion companion = SwiftApp.d;
        return SwiftApp.Companion.c().getString(R.string.s3_cloud_picker_subtitle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tb1 _init_$lambda$19() {
        return new v52(new ar6());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$2(il0 il0Var, int i) {
        il0Var.getClass();
        io4.i(il0Var, ph6.a(OneDriveSignInActivity.class), i);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$20(il0 il0Var, int i) {
        il0Var.getClass();
        int i2 = CsActivity.P0;
        vm4.B(il0Var, S3, i);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$21() {
        SwiftApp.Companion companion = SwiftApp.d;
        return SwiftApp.Companion.c().getString(R.string.webdav_cloud_picker_subtitle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tb1 _init_$lambda$22() {
        return new v52(new vq8(WebDav));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$23(il0 il0Var, int i) {
        il0Var.getClass();
        int i2 = CsActivity.P0;
        vm4.B(il0Var, WebDav, i);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tb1 _init_$lambda$24() {
        return new v52(new ji7());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$25(il0 il0Var, int i) {
        il0Var.getClass();
        int i2 = CsActivity.P0;
        vm4.B(il0Var, SMB, i);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tb1 _init_$lambda$26() {
        return new v52(new li4());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$27(il0 il0Var, int i) {
        il0Var.getClass();
        int i2 = CsActivity.P0;
        vm4.B(il0Var, SFTP, i);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tb1 _init_$lambda$28() {
        return new v52(new o23());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$29(il0 il0Var, int i) {
        il0Var.getClass();
        int i2 = CsActivity.P0;
        vm4.B(il0Var, FTP, i);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$3(il0 il0Var, int i) {
        il0Var.getClass();
        io4.i(il0Var, ph6.a(DropboxSignInActivity.class), i);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$5(il0 il0Var, int i) {
        il0Var.getClass();
        io4.i(il0Var, ph6.a(MegaSignInActivity.class), i);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tb1 _init_$lambda$6() {
        return new v52(new sb3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$7(il0 il0Var, int i) {
        il0Var.getClass();
        io4.i(il0Var, ph6.a(FilenSignInActivity.class), i);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 _init_$lambda$9(il0 il0Var, int i) {
        il0Var.getClass();
        io4.i(il0Var, ph6.a(BoxSignInActivity.class), i);
        return be8.a;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public static dd1 valueOf(String str) {
        return (dd1) Enum.valueOf(dd1.class, str);
    }

    public static dd1[] values() {
        return (dd1[]) $VALUES.clone();
    }

    public final boolean getAllowSavingSetupDetails() {
        return this.allowSavingSetupDetails;
    }

    public final List<nc1> getAuthTypes() {
        return this.authTypes;
    }

    public final int getBrandingIconRes() {
        return this.brandingIconRes;
    }

    public final tb1 getClient() {
        Object objInvoke;
        try {
            objInvoke = new zk(13).invoke();
        } catch (Exception unused) {
            objInvoke = null;
        }
        if (!pe4.d(objInvoke, Boolean.TRUE)) {
            return (tb1) this.clientProvider.invoke();
        }
        kv2 kv2Var = kv2.i;
        return kv2.i;
    }

    public final String getCloudFolderAddress() {
        String mainCloudFolderName = getMainCloudFolderName();
        return this.isAppFolderBased ? xs1.j("Apps > SwiftBackup > ", mainCloudFolderName) : mainCloudFolderName;
    }

    public final String getConstant() {
        return this.constant;
    }

    public final String getDisplayName() {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(this.displayNameRes);
        string.getClass();
        return string;
    }

    public final String getDisplayNameEn() {
        return this.displayNameEn;
    }

    public final int getDisplayNameRes() {
        return this.displayNameRes;
    }

    public final String getFirebaseNodePrefix() {
        return this.firebaseNodePrefix;
    }

    public final String getMainCloudFolderName() {
        String str = ry5.u;
        d45.b.getClass();
        MFirebaseUser mFirebaseUserA = d45.a();
        if (mFirebaseUserA == null) {
            throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
        }
        String strE = qy5.e(mFirebaseUserA);
        return this.clientProvider.invoke() instanceof v52 ? "SwiftBackup_".concat(strE) : eq3.k("Swift Backup (", strE, ")");
    }

    public final String getPasswordFieldHint(Context context) {
        context.getClass();
        if (cd1.a[ordinal()] == 1) {
            return "Secret access key";
        }
        String string = context.getString(R.string.password);
        string.getClass();
        return string;
    }

    public final String getPathFieldHint(Context context) {
        context.getClass();
        int i = cd1.a[ordinal()];
        if (i == 1) {
            return "Path: Eg. [bucket_name]/mybackups";
        }
        if (i == 2) {
            return "Path: Eg. [share_name]/mybackups";
        }
        String string = context.getString(R.string.path);
        string.getClass();
        return string;
    }

    public final List<fd1> getProtocols() {
        return this.protocols;
    }

    public final xi6 getReleaseState() {
        return this.releaseState;
    }

    public final String getServerFieldHint(Context context) {
        context.getClass();
        int i = cd1.a[ordinal()];
        if (i == 1) {
            return "Server Endpoint";
        }
        if (i == 2) {
            return "IP address";
        }
        String string = context.getString(R.string.server_ip_address);
        string.getClass();
        return string;
    }

    public final boolean getShowUrlInSetup() {
        return this.showUrlInSetup;
    }

    public final qt3 getStartConnectActivity() {
        return this.startConnectActivity;
    }

    public final bt3 getSubtitle() {
        return this.subtitle;
    }

    public final boolean getSupportsCurrentAndroidSdk() {
        return this.supportsCurrentAndroidSdk;
    }

    public final String getUsernameFieldHint(Context context) {
        context.getClass();
        if (cd1.a[ordinal()] == 1) {
            return "Access key ID";
        }
        String string = context.getString(R.string.user_name);
        string.getClass();
        return string;
    }

    public final boolean isEmailPasswordBasedWebDav() {
        return this.isEmailPasswordBasedWebDav;
    }

    public final boolean isHttpsOptional() {
        return this.isHttpsOptional;
    }

    public final boolean isWebDav() {
        return this.isWebDav;
    }

    private dd1(String str, int i, String str2, int i2, String str3, bt3 bt3Var, String str4, boolean z, int i3, boolean z2, boolean z3, boolean z4, bt3 bt3Var2, qt3 qt3Var, List list, List list2, boolean z5, boolean z6, xi6 xi6Var, boolean z7) {
        super(str, i);
        this.constant = str2;
        this.displayNameRes = i2;
        this.displayNameEn = str3;
        this.subtitle = bt3Var;
        this.firebaseNodePrefix = str4;
        this.isAppFolderBased = z;
        this.brandingIconRes = i3;
        this.isWebDav = z2;
        this.isEmailPasswordBasedWebDav = z3;
        this.isHttpsOptional = z4;
        this.clientProvider = bt3Var2;
        this.startConnectActivity = qt3Var;
        this.protocols = list;
        this.authTypes = list2;
        this.showUrlInSetup = z5;
        this.allowSavingSetupDetails = z6;
        this.releaseState = xi6Var;
        this.supportsCurrentAndroidSdk = z7;
    }
}
