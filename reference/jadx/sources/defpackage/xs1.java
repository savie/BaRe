package defpackage;

import android.content.res.TypedArray;
import android.database.Cursor;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.nimbusds.jwt.proc.DefaultJWTClaimsVerifier;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.Request;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class xs1 {
    public static String a(String str, char c) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(c);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static String b(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (Character.isLetter(cCharAt)) {
                if (Character.isUpperCase(cCharAt)) {
                    break;
                }
                char upperCase = Character.toUpperCase(cCharAt);
                if (i == 0) {
                    return upperCase + str.substring(1);
                }
                return str.substring(0, i) + upperCase + str.substring(i + 1);
            }
        }
        return str;
    }

    public static /* synthetic */ int c(int i) {
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    if (i == 4) {
                        return 4;
                    }
                    throw null;
                }
            }
        }
        return i2;
    }

    public static /* synthetic */ long d(int i) {
        switch (i) {
            case 1:
                return 1L;
            case 2:
                return 2L;
            case 3:
                return 3L;
            case 4:
                return 4L;
            case 5:
                return 5L;
            case 6:
                return 6L;
            case 7:
                return 7L;
            case 8:
                return 8L;
            case XmlPullParser.COMMENT /* 9 */:
                return 9L;
            case 10:
                return 10L;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return 11L;
            case 12:
                return 12L;
            case 13:
                return 13L;
            case 14:
                return 14L;
            case 15:
                return 15L;
            case Argon2.V10 /* 16 */:
                return 16L;
            case 17:
                return 17L;
            case 18:
                return 18L;
            case Argon2.V13 /* 19 */:
                return 19L;
            case 20:
                return 20L;
            case 21:
                return 21L;
            case 22:
                return 22L;
            case 23:
                return 23L;
            case 24:
                return 24L;
            case 25:
                return 25L;
            case 26:
                return 26L;
            case 27:
                return 27L;
            case 28:
                return 28L;
            case 29:
                return 29L;
            case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                return 30L;
            case 31:
                return 31L;
            case 32:
                return 32L;
            case 33:
                return 33L;
            case 34:
                return 34L;
            case 35:
                return 35L;
            case 36:
                return 36L;
            case 37:
                return 37L;
            case 38:
                return 38L;
            case 39:
                return 39L;
            case 40:
                return 40L;
            case 41:
                return 41L;
            case 42:
                return 42L;
            case 43:
                return 43L;
            case 44:
                return 44L;
            case 45:
                return 45L;
            case 46:
                return 46L;
            case 47:
                return 47L;
            case 48:
                return 48L;
            case 49:
                return 49L;
            case 50:
                return 50L;
            case 51:
                return 51L;
            case 52:
                return 52L;
            case 53:
                return 53L;
            case 54:
                return 54L;
            case 55:
                return 55L;
            case 56:
                return 56L;
            case 57:
                return 57L;
            case 58:
                return 58L;
            case 59:
                return 59L;
            case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                return 60L;
            case 61:
                return 61L;
            case 62:
                return 62L;
            case 63:
                return 63L;
            case 64:
                return 64L;
            default:
                throw null;
        }
    }

    public static float e(float f, float f2, float f3, float f4) {
        return ((f - f2) * f3) + f4;
    }

    public static int f(long j, int i, int i2) {
        return (Long.hashCode(j) + i) * i2;
    }

    public static String g(int i, int i2, String str) {
        return str.substring(i2, str.length() - i);
    }

    public static String h(int i, String str, String str2) {
        return str + i + str2;
    }

    public static String i(q63 q63Var, String str) {
        return str + q63Var;
    }

    public static String j(String str, String str2) {
        return str + str2;
    }

    public static String k(String str, StringBuilder sb) {
        return str + ((Object) sb);
    }

    public static String l(String str, List list) {
        return str + list;
    }

    public static String m(StringBuilder sb, int i, String str) {
        sb.append(i);
        sb.append(str);
        return sb.toString();
    }

    public static StringBuilder n(String str, int i, String str2, String str3, int i2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        sb.append(i2);
        sb.append(str3);
        return sb;
    }

    public static Request o(Headers.Builder builder, String str, String str2, Request.Builder builder2) {
        builder.d(str, str2);
        return new Request(builder2);
    }

    public static void p(int i, String str, HashMap map, String str2) {
        map.put(str2, new gg2(i, str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void q(Cursor cursor) throws Exception {
        boolean zIsTerminated;
        if (cursor instanceof AutoCloseable) {
            cursor.close();
            return;
        }
        if (!(cursor instanceof ExecutorService)) {
            if (cursor instanceof TypedArray) {
                ((TypedArray) cursor).recycle();
                return;
            }
            if (cursor instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) cursor).release();
                return;
            } else if (cursor instanceof MediaDrm) {
                ((MediaDrm) cursor).release();
                return;
            } else {
                c6.b();
                return;
            }
        }
        ExecutorService executorService = (ExecutorService) cursor;
        if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
            return;
        }
        executorService.shutdown();
        boolean z = false;
        while (!zIsTerminated) {
            try {
                zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
            } catch (InterruptedException unused) {
                if (!z) {
                    executorService.shutdownNow();
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public static /* synthetic */ void r(Object obj) {
        if (obj == null) {
            return;
        }
        e6.d();
    }

    public static void s(StringBuilder sb, int i, String str, int i2, String str2) {
        sb.append(i);
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
    }

    public static void t(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    public static /* synthetic */ String u(int i) {
        switch (i) {
            case 1:
                return "NONE";
            case 2:
                return "LEFT";
            case 3:
                return "TOP";
            case 4:
                return "RIGHT";
            case 5:
                return "BOTTOM";
            case 6:
                return "BASELINE";
            case 7:
                return "CENTER";
            case 8:
                return "CENTER_X";
            case XmlPullParser.COMMENT /* 9 */:
                return "CENTER_Y";
            default:
                throw null;
        }
    }

    public static /* synthetic */ String v(int i) {
        if (i == 1) {
            return "LOCAL";
        }
        if (i == 2) {
            return "REMOTE";
        }
        if (i == 3) {
            return "DATA_DISK_CACHE";
        }
        if (i != 4) {
            return i != 5 ? "null" : "MEMORY_CACHE";
        }
        return "RESOURCE_DISK_CACHE";
    }

    public static /* synthetic */ String w(int i) {
        switch (i) {
            case 1:
                return "INITIALIZE";
            case 2:
                return "RESOURCE_CACHE";
            case 3:
                return "DATA_CACHE";
            case 4:
                return "SOURCE";
            case 5:
                return "ENCODE";
            case 6:
                return "FINISHED";
            default:
                return "null";
        }
    }

    public static /* synthetic */ String x(int i) {
        if (i == 1) {
            return "CHILD_REMOVED";
        }
        if (i == 2) {
            return "CHILD_ADDED";
        }
        if (i == 3) {
            return "CHILD_MOVED";
        }
        if (i != 4) {
            return i != 5 ? "null" : "VALUE";
        }
        return "CHILD_CHANGED";
    }
}
