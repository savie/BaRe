package defpackage;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ft {
    public String a;
    public String b;
    public final List c;
    public final int d;

    public ft(List list) {
        iy iyVar = iy.a;
        this.c = iy.f(list, null);
        this.d = 30;
    }

    public final String a() throws IOException {
        String strEncodeToString;
        ArrayList arrayList = new ArrayList();
        String strF0 = this.a;
        if (strF0 == null) {
            strF0 = nq7.F0("<meta charset=\"utf-8\"/>\n<h1 style=\"text-align:center\">&nbsp;</h1>\n\n<h1 style=\"text-align:center\"><span style=\"font-size:20px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Apps list</strong></span></span></h1>\n\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Generated from Swift Backup on [dateGenerated]</span></span></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p><img src=\"data:image/png;base64,[base64Icon]\" style=\"float:right; margin-right:40px; width:[base64IconSize]\" /></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:20px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>[index]. [appNameShort] </strong></span></span></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><a href=\"https://play.google.com/store/apps/details?id=[packageName]\" target=\"_blank\">Play Store</a>&nbsp; &nbsp;&nbsp;<a href=\"https://google.com/search?q=[appName]+apk+download+[packageName]\">Google search</a></span></span></p>\n\n<p style=\"margin-left:40px\">&nbsp;</p>\n", "<hr />\n", "");
            this.a = strF0;
        }
        arrayList.add(uq7.T(strF0, "[dateGenerated]", Const.i(System.currentTimeMillis())));
        int i = 0;
        for (ji jiVar : this.c) {
            i++;
            String strT = this.b;
            if (strT == null) {
                String strF1 = this.a;
                if (strF1 == null) {
                    strF1 = nq7.F0("<meta charset=\"utf-8\"/>\n<h1 style=\"text-align:center\">&nbsp;</h1>\n\n<h1 style=\"text-align:center\"><span style=\"font-size:20px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Apps list</strong></span></span></h1>\n\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Generated from Swift Backup on [dateGenerated]</span></span></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p><img src=\"data:image/png;base64,[base64Icon]\" style=\"float:right; margin-right:40px; width:[base64IconSize]\" /></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:20px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>[index]. [appNameShort] </strong></span></span></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><a href=\"https://play.google.com/store/apps/details?id=[packageName]\" target=\"_blank\">Play Store</a>&nbsp; &nbsp;&nbsp;<a href=\"https://google.com/search?q=[appName]+apk+download+[packageName]\">Google search</a></span></span></p>\n\n<p style=\"margin-left:40px\">&nbsp;</p>\n", "<hr />\n", "");
                    this.a = strF1;
                }
                strT = uq7.T(nq7.z0("<meta charset=\"utf-8\"/>\n<h1 style=\"text-align:center\">&nbsp;</h1>\n\n<h1 style=\"text-align:center\"><span style=\"font-size:20px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Apps list</strong></span></span></h1>\n\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Generated from Swift Backup on [dateGenerated]</span></span></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p><img src=\"data:image/png;base64,[base64Icon]\" style=\"float:right; margin-right:40px; width:[base64IconSize]\" /></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:20px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>[index]. [appNameShort] </strong></span></span></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><a href=\"https://play.google.com/store/apps/details?id=[packageName]\" target=\"_blank\">Play Store</a>&nbsp; &nbsp;&nbsp;<a href=\"https://google.com/search?q=[appName]+apk+download+[packageName]\">Google search</a></span></span></p>\n\n<p style=\"margin-left:40px\">&nbsp;</p>\n", strF1, ""), "<hr />\n", "");
                this.b = strT;
            }
            String strT2 = uq7.T(strT, "[index]", String.valueOf(i));
            Set set = j94.a;
            jiVar.getClass();
            Bitmap bitmapA = j94.a(new sx3(jiVar.getPackageName(), jiVar.isInstalled()));
            if (bitmapA != null) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    bitmapA.compress(Build.VERSION.SDK_INT >= 30 ? Bitmap.CompressFormat.WEBP_LOSSY : Bitmap.CompressFormat.PNG, 80, byteArrayOutputStream);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArray.getClass();
                    strEncodeToString = Base64.encodeToString(byteArray, 0);
                    byteArrayOutputStream.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(byteArrayOutputStream, th);
                        throw th2;
                    }
                }
            } else {
                strEncodeToString = null;
            }
            if (strEncodeToString == null) {
                strEncodeToString = "";
            }
            String strT3 = uq7.T(uq7.T(uq7.T(uq7.T(strT2, "[base64Icon]", strEncodeToString), "[base64IconSize]", "96"), "[appName]", jiVar.getName()), "[packageName]", jiVar.getPackageName());
            String name = jiVar.getName();
            int length = name.length();
            int i2 = this.d;
            if (length > i2) {
                name = nq7.G0(i2 - 3, name).concat("...");
            }
            String strT4 = uq7.T(strT3, "[appNameShort]", name);
            String packageName = jiVar.getPackageName();
            if (packageName.length() > i2) {
                packageName = nq7.G0(i2 - 3, packageName).concat("...");
            }
            arrayList.add(uq7.T(uq7.T(uq7.T(strT4, "[packageNameShort]", packageName), "[versionName]", String.valueOf(jiVar.getVersionName())), "[versionCode]", String.valueOf(jiVar.getVersionCode())));
        }
        return el1.Y0(arrayList, "\n", null, null, null, 62);
    }
}
