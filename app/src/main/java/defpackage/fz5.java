package defpackage;

import android.os.Parcel;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.z;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.HashMap;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class fz5 {
    /* JADX WARN: Code duplicated, block: B:9:0x0019  */
    public static final String a(char c, int i) {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = TokenAuthenticationScheme.SCHEME_DELIMITER;
        if (i == 1) {
            str = "";
        } else {
            if (i != 2) {
                if (i == 3) {
                    str = "";
                } else if (i != 4) {
                    throw null;
                }
            }
            str = TokenAuthenticationScheme.SCHEME_DELIMITER;
        }
        sb.append(str);
        sb.append(c);
        if (i == 1 || i == 2) {
            str2 = "";
        } else if (i != 3 && i != 4) {
            throw null;
        }
        sb.append(str2);
        return sb.toString();
    }

    public static final void b(int i, View view, ViewGroup viewGroup) {
        view.getClass();
        viewGroup.getClass();
        if (z.K(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Calling apply state");
        }
        int iA = dj7.A(i);
        if (iA == 0) {
            ViewParent parent = view.getParent();
            ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup2 != null) {
                if (z.K(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup2);
                }
                viewGroup2.removeView(view);
                return;
            }
            return;
        }
        if (iA == 1) {
            if (z.K(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
            }
            ViewParent parent2 = view.getParent();
            if ((parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null) == null) {
                if (z.K(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Adding view " + view + " to Container " + viewGroup);
                }
                viewGroup.addView(view);
            }
            view.setVisibility(0);
            return;
        }
        if (iA == 2) {
            if (z.K(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
            }
            view.setVisibility(8);
            return;
        }
        if (iA != 3) {
            return;
        }
        if (z.K(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
        }
        view.setVisibility(4);
    }

    public static /* synthetic */ boolean c(int i) {
        if (i == 1 || i == 2 || i == 3) {
            return false;
        }
        if (i == 4 || i == 5) {
            return true;
        }
        throw null;
    }

    public static /* synthetic */ int d(int i) {
        switch (i) {
            case 1:
                return -1;
            case 2:
                return 2001;
            case 3:
                return 2002;
            case 4:
                return 2003;
            case 5:
                return 2006;
            case 6:
                return 2007;
            case 7:
                return 2008;
            case 8:
                return 2009;
            case XmlPullParser.COMMENT /* 9 */:
                return 2010;
            case 10:
                return 2011;
            default:
                throw null;
        }
    }

    public static int e(int i, int i2, int i3, int i4) {
        return le6.j(i + i2, i3) + i4;
    }

    public static int f(int i, int i2, int i3, int i4, int i5) {
        return le6.j(i + i2 + i3, i4) + i5;
    }

    public static int g(int i, int i2, String str) {
        return (str.hashCode() + i) * i2;
    }

    public static int h(int i, int i2, boolean z) {
        return (Boolean.hashCode(z) + i) * i2;
    }

    public static int i(List list, int i, int i2) {
        return (list.hashCode() + i) * i2;
    }

    public static String j(int i, String str) {
        return str + i;
    }

    public static String k(Class cls, String str) {
        return str + cls;
    }

    public static String l(Class cls, String str, String str2) {
        return str + cls + str2;
    }

    public static String m(String str, String str2, long j) {
        return str + j + str2;
    }

    public static StringBuilder n(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static void o(Parcel parcel, int i, Integer num) {
        parcel.writeInt(i);
        parcel.writeInt(num.intValue());
    }

    public static void p(Parcel parcel, int i, Long l) {
        parcel.writeInt(i);
        parcel.writeLong(l.longValue());
    }

    public static void q(StringBuilder sb, Long l, String str, Long l2, String str2) {
        sb.append(l);
        sb.append(str);
        sb.append(l2);
        sb.append(str2);
    }

    public static void r(StringBuilder sb, String str, long j, String str2) {
        sb.append(str);
        sb.append(j);
        sb.append(str2);
    }

    public static void s(HashMap map, f1 f1Var) {
        map.put(f1Var, new bb6(1));
    }

    public static void t(HashMap map, f1 f1Var) {
        map.put(f1Var, new eb6(1));
    }

    public static void u(HashMap map, f1 f1Var) {
        map.put(f1Var, new fb6(1));
    }

    public static /* synthetic */ String v(int i) {
        switch (i) {
            case 1:
                return "UNKNOWN";
            case 2:
                return "CANCELLED";
            case 3:
                return "NON_OAUTH_ERROR";
            case 4:
                return "COMPLETED";
            case 5:
                return "BROKER_INSTALLATION_TRIGGERED";
            case 6:
                return "DEVICE_REGISTRATION_REQUIRED";
            case 7:
                return "SDK_CANCELLED";
            case 8:
                return "MDM_FLOW";
            case XmlPullParser.COMMENT /* 9 */:
                return "INSUFFICIENT_DEVICE_REGISTRATION";
            case 10:
                return "TIMED_OUT";
            default:
                return "null";
        }
    }

    public static /* synthetic */ String w(int i) {
        if (i == 1) {
            return "NONE";
        }
        if (i != 2) {
            return i != 3 ? "null" : "REMOVING";
        }
        return "ADDING";
    }

    public static /* synthetic */ String x(int i) {
        if (i == 1) {
            return "REMOVED";
        }
        if (i == 2) {
            return "VISIBLE";
        }
        if (i != 3) {
            return i != 4 ? "null" : "INVISIBLE";
        }
        return "GONE";
    }
}
