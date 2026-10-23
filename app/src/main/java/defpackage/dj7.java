package defpackage;

import android.content.Context;
import com.microsoft.identity.common.java.exception.ClientException;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import java.io.EOFException;
import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.SSLException;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class dj7 {
    public static final /* synthetic */ int[] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141};

    public static /* synthetic */ int A(int i) {
        if (i != 0) {
            return i - 1;
        }
        throw null;
    }

    public static /* synthetic */ String B(int i) {
        if (i != 1) {
            return i != 2 ? "null" : "TOKEN";
        }
        return "CODE";
    }

    public static /* synthetic */ int[] C(int i) {
        int[] iArr = new int[i];
        System.arraycopy(a, 0, iArr, 0, i);
        return iArr;
    }

    public static final ClientException _getClientException(IOException iOException) {
        int i;
        ClientException clientException = new ClientException("io_error", "An IO error occurred in the network layer: " + iOException.getMessage(), iOException);
        if (iOException instanceof SocketTimeoutException) {
            i = 4;
        } else if ((iOException instanceof EOFException) || (iOException instanceof SSLException) || (iOException instanceof ConnectException)) {
            i = 2;
        } else {
            i = ((iOException instanceof UnknownHostException) || (iOException instanceof SocketException)) ? 1 : 3;
        }
        clientException.setSubErrorCode(c(i));
        return clientException;
    }

    public static /* synthetic */ boolean a(int i, int i2) {
        if (i != 0) {
            return i == i2;
        }
        throw null;
    }

    public static /* synthetic */ String b(int i) {
        if (i == 1) {
            return "ipc_operation_not_supported_on_client_side";
        }
        if (i == 2) {
            return "ipc_operation_not_supported_on_server_side";
        }
        if (i == 3) {
            return "ipc_connection_error";
        }
        if (i == 4) {
            return "ipc_validation_error";
        }
        if (i == 5) {
            return "ipc_return_null_cursor";
        }
        throw null;
    }

    public static /* synthetic */ String c(int i) {
        if (i == 1) {
            return "ce_no_network";
        }
        if (i == 2) {
            return "ce_network_temporarily_unavailable";
        }
        if (i == 3) {
            return "ce_unexpected_exception";
        }
        if (i == 4) {
            return "ce_connection_timeout";
        }
        throw null;
    }

    public static long d(long j, long j2, long j3, long j4) {
        return (j * j2) + j3 + j4;
    }

    public static Object e(ArrayList arrayList, int i) {
        return arrayList.get(arrayList.size() - i);
    }

    public static RuntimeException f(int i, String str) {
        System.exit(i);
        return new RuntimeException(str);
    }

    public static String g(int i) {
        String string = SwiftApp.Companion.c().getString(i);
        string.getClass();
        return string;
    }

    public static String h(long j, String str, StringBuilder sb) {
        sb.append(j);
        sb.append(str);
        return sb.toString();
    }

    public static String i(String str, int i, int i2, String str2) {
        return str + i + str2 + i2;
    }

    public static String j(String str, int i, String str2, String str3, int i2) {
        return str + i + str2 + i2 + str3;
    }

    public static String k(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String l(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    public static String m(String str, boolean z) {
        return str + z;
    }

    public static String n(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static String o(StringBuilder sb, List list, String str) {
        sb.append(list);
        sb.append(str);
        return sb.toString();
    }

    public static String p(StringBuilder sb, boolean z, String str) {
        sb.append(z);
        sb.append(str);
        return sb.toString();
    }

    public static String q(Locale locale, String str, Locale locale2) {
        locale.getClass();
        String lowerCase = str.toLowerCase(locale2);
        lowerCase.getClass();
        return lowerCase;
    }

    public static StringBuilder r(int i, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder s(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static StringBuilder t(String str, String str2, long j) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(j);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder u(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder v(String str, String str2, String str3, int i, String str4) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(i);
        sb.append(str4);
        return sb;
    }

    public static void w(f1 f1Var) {
        qu0.d(f1Var, new si7());
    }

    public static void x(f1 f1Var, String str, String str2, String str3, String str4) {
        f1Var.x(str);
        f1Var.x(str2);
        f1Var.x(str3);
        f1Var.x(str4);
    }

    public static void y(Context context, String str) {
        zn4.e(new cv(14, context, str));
    }

    public static void z(f1 f1Var) {
        qu0.d(f1Var, new yv6());
    }
}
