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
public enum dd1 {
    GoogleDrive("google_drive",R.string.google_drive,"Google Drive",new pu(1),null,false,R.drawable.ic_branding_google_drive,false,false,false,zc1.a,new pc1(0),null,null,false,false,xi6.Production,false),OneDrive("one_drive",R.string.one_drive,"OneDrive",null,null,false,R.drawable.ic_branding_onedrive,false,false,false,ad1.a,new vc1(0),null,null,false,false,xi6.Production,false),Dropbox("dropbox",R.string.dropbox,"Dropbox",null,null,true,R.drawable.ic_branding_dropbox,false,false,false,bd1.a,new oc1(1),null,null,false,false,xi6.Production,false),MegaNz("mega_nz",R.string.mega_nz,"Mega.nz",null,null,false,R.drawable.ic_branding_mega,false,false,false,new cl(3),new wc1(0),null,null,false,false,xi6.Production,false),Filen("filen",R.string.filen,"Filen",null,null,false,R.drawable.ic_branding_filen,false,false,false,new el(4),new qc1(1),null,null,false,false,xi6.Production,false),Box("box",R.string.box,"Box",null,null,false,R.drawable.ic_branding_box,false,false,false,yc1.n,new xc1(0),null,null,false,false,xi6.Production,false),TeraBox("terabox",R.string.terabox,"TeraBox",null,null,false,R.drawable.ic_branding_terabox,false,false,false,new q9(3),new tc1(0),null,null,false,false,xi6.Dev,false),PCloud("pcloud",R.string.pcloud,"pCloud",null,null,false,R.drawable.ic_branding_pcloud,false,false,false,new jx(6),new qt3(){public Object invoke(Object o,Object o2){return dd1._init_$lambda$13((il0)o,((Integer)o2).intValue());}},null,null,false,false,xi6.Production,false),YandexDisk("yandex_disk",R.string.yandex_disk,"Yandex.Disk",null,"yandex-remote",false,R.drawable.ic_branding_yandex_disk,false,false,false,new b7(10),new tc1(1),null,null,false,false,xi6.Production,false),CloudMailRu2("cloud_mail_ru2",R.string.cloud_mail_ru,"Cloud Mail.Ru",null,null,true,R.drawable.ic_branding_cloud_mail_ru,true,true,false,new qm(4),new vc1(1),nc8.I(fd1.HTTPS),null,false,false,xi6.Production,false),S3("s3",R.string.s3,"S3 Storage",new sm(5),"remote",false,R.drawable.ic_branding_s3,false,false,true,new cl(4),new oc1(0),nc8.I(fd1.HTTPS),null,false,true,xi6.Production,false),WebDav("webdav",R.string.webdav,"WebDAV",new dl(4),"remote",false,R.drawable.ic_webdav_new,true,false,true,new el(3),new qc1(0),fl1.A0(fd1.HTTPS,fd1.HTTP),null,false,true,xi6.Production,false),SMB("smb",R.string.smb,"SMB",null,"remote",false,R.drawable.ic_branding_smb,false,false,true,new fl(3),new rc1(0),nc8.I(fd1.SMB),null,false,true,xi6.Production,false),SFTP("sftp",R.string.sftp,"SFTP",null,"remote",false,R.drawable.ic_branding_sftp,false,false,true,new jx(5),new qt3(){public Object invoke(Object o,Object o2){return dd1._init_$lambda$27((il0)o,((Integer)o2).intValue());}},nc8.I(fd1.SFTP),fl1.A0(nc1.USERNAME_PASSWORD,nc1.KEY_BASED),false,true,xi6.Production,false),FTP("ftp",R.string.ftp,"FTP",null,"remote",false,R.drawable.ic_branding_ftp,false,false,true,new b7(9),new uc1(0),fl1.A0(fd1.FTP,fd1.FTPS_IMPLICIT,fd1.FTPS_EXPLICIT),null,false,true,xi6.Production,false);

    private final boolean allowSavingSetupDetails; private final List<nc1> authTypes; private final int brandingIconRes; private final bt3 clientProvider; private final String constant; private final String displayNameEn; private final int displayNameRes; private final String firebaseNodePrefix; private final boolean isAppFolderBased; private final boolean isEmailPasswordBasedWebDav; private final boolean isHttpsOptional; private final boolean isWebDav; private final List<fd1> protocols; private final xi6 releaseState; private final boolean showUrlInSetup; private final qt3 startConnectActivity; private final bt3 subtitle; private final boolean supportsCurrentAndroidSdk;
    private dd1(String constant,int displayNameRes,String displayNameEn,bt3 subtitle,String firebaseNodePrefix,boolean isAppFolderBased,int brandingIconRes,boolean isWebDav,boolean isEmailPasswordBasedWebDav,boolean isHttpsOptional,bt3 clientProvider,qt3 startConnectActivity,List<fd1> protocols,List<nc1> authTypes,boolean showUrlInSetup,boolean allowSavingSetupDetails,xi6 releaseState,boolean supportsCurrentAndroidSdk){this.constant=constant;this.displayNameRes=displayNameRes;this.displayNameEn=displayNameEn;this.subtitle=subtitle;this.firebaseNodePrefix=firebaseNodePrefix;this.isAppFolderBased=isAppFolderBased;this.brandingIconRes=brandingIconRes;this.isWebDav=isWebDav;this.isEmailPasswordBasedWebDav=isEmailPasswordBasedWebDav;this.isHttpsOptional=isHttpsOptional;this.clientProvider=clientProvider;this.startConnectActivity=startConnectActivity;this.protocols=protocols;this.authTypes=authTypes;this.showUrlInSetup=showUrlInSetup;this.allowSavingSetupDetails=allowSavingSetupDetails;this.releaseState=releaseState;this.supportsCurrentAndroidSdk=supportsCurrentAndroidSdk;}

}
