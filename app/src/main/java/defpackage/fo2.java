package defpackage;

import org.swiftapps.swiftbackup.folders.data.FolderItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fo2 {
    public final String a;
    public final int b;
    public long c;
    public final q63 d;
    public boolean e;
    public boolean f;

    public fo2(String str, int i, long j, q63 q63Var) {
        str.getClass();
        q63Var.getClass();
        this.a = str;
        this.b = i;
        this.c = j;
        this.d = q63Var;
    }

    public final String a() {
        int i = this.b;
        switch (i) {
            case 1:
                return "APK";
            case 2:
                return "Split APKs";
            case 3:
                return "Shared Libs";
            case 4:
                return "Data";
            case 5:
                return "Expansion";
            case 6:
                return "Ext Data";
            case 7:
                return "Media";
            case 8:
                return "App special data";
            default:
                switch (i) {
                    case 20:
                        return "Messages";
                    case 21:
                        return "Call Logs";
                    case 22:
                        return "Wallpaper";
                    case 23:
                        return "WiFi";
                    default:
                        switch (i) {
                            case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                                return "Folder base backup";
                            case 31:
                                return "Folder base backup manifest";
                            case 32:
                                return "Folder incremental backup";
                            case 33:
                                return "Folder incremental backup manifest";
                            default:
                                return "Unknown file type";
                        }
                }
        }
    }
}
