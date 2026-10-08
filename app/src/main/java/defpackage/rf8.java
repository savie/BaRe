package defpackage;

import org.swiftapps.swiftbackup.folders.data.FolderItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rf8 {
    public final q63 a;
    public final int b;
    public final boolean c;
    public final String d;
    public final boolean e;
    public String f;
    public final gv7 g;
    public final String h;
    public final gv7 i;

    public rf8(q63 q63Var, int i, boolean z, String str, boolean z2) {
        String str2;
        q63Var.getClass();
        this.a = q63Var;
        this.b = i;
        this.c = z;
        this.d = str;
        this.e = z2;
        this.g = new gv7(new as4(this, 18));
        switch (i) {
            case 1:
                str2 = "APK";
                break;
            case 2:
                str2 = "Split APKs";
                break;
            case 3:
                str2 = "Shared Libs";
                break;
            case 4:
                str2 = "Data";
                break;
            case 5:
                str2 = "Expansion";
                break;
            case 6:
                str2 = "Ext Data";
                break;
            case 7:
                str2 = "Media";
                break;
            case 8:
                str2 = "App special data";
                break;
            default:
                switch (i) {
                    case 20:
                        str2 = "Messages";
                        break;
                    case 21:
                        str2 = "Call Logs";
                        break;
                    case 22:
                        str2 = "Wallpaper";
                        break;
                    case 23:
                        str2 = "WiFi";
                        break;
                    default:
                        switch (i) {
                            case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                                str2 = "Folder base backup";
                                break;
                            case 31:
                                str2 = "Folder base backup manifest";
                                break;
                            case 32:
                                str2 = "Folder incremental backup";
                                break;
                            case 33:
                                str2 = "Folder incremental backup manifest";
                                break;
                            default:
                                str2 = "Unknown file type";
                                break;
                        }
                        break;
                }
                break;
        }
        this.h = str2;
        this.i = new gv7(new pr4(this, 12));
    }

    public final long a() {
        return ((Number) this.g.getValue()).longValue();
    }

    public final String b() {
        return (String) this.i.getValue();
    }
}
