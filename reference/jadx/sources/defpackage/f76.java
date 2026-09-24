package defpackage;

import android.app.Notification;
import android.content.AttributionSource;
import android.content.res.Configuration;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.Display;
import android.view.RoundedCorner;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f76 {
    public static oq6 a(Display display, int i) {
        RoundedCorner roundedCorner;
        int i2;
        if (Build.VERSION.SDK_INT < 31 || (roundedCorner = display.getRoundedCorner(i)) == null) {
            return null;
        }
        int position = roundedCorner.getPosition();
        if (position != 0) {
            i2 = 1;
            if (position != 1) {
                i2 = 2;
                if (position != 2) {
                    i2 = 3;
                    if (position != 3) {
                        c6.f(fz5.j(position, "Invalid position: "));
                        return null;
                    }
                }
            }
        } else {
            i2 = 0;
        }
        return new oq6(i2, roundedCorner.getRadius(), roundedCorner.getCenter());
    }

    public static Typeface b(Configuration configuration, Typeface typeface) {
        int i;
        if (Build.VERSION.SDK_INT < 31 || (i = configuration.fontWeightAdjustment) == Integer.MAX_VALUE || i == 0 || typeface == null) {
            return null;
        }
        return Typeface.create(typeface, iz1.d(typeface.getWeight() + configuration.fontWeightAdjustment, 1, PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT), typeface.isItalic());
    }

    public static void c(Notification.Action.Builder builder) {
        builder.setAuthenticationRequired(false);
    }

    public static Bundle d(xr8 xr8Var) {
        Bundle bundle = new Bundle();
        xr8Var.getClass();
        AttributionSource attributionSourceBuild = new AttributionSource.Builder(xr8Var.a).setPackageName("com.android.shell").setAttributionTag("com.android.shell").build();
        attributionSourceBuild.getClass();
        bundle.putParcelable("EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE", attributionSourceBuild);
        return bundle;
    }
}
