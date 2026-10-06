package defpackage;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wo5 {
    public final Context a;
    public CharSequence e;
    public CharSequence f;
    public PendingIntent g;
    public IconCompat h;
    public int i;
    public c00 k;
    public CharSequence l;
    public int m;
    public int n;
    public boolean o;
    public Bundle q;
    public String s;
    public final boolean t;
    public final Notification u;
    public final ArrayList v;
    public final ArrayList b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public final ArrayList d = new ArrayList();
    public final boolean j = true;
    public boolean p = false;
    public int r = 0;

    public wo5(Context context, String str) {
        Notification notification = new Notification();
        this.u = notification;
        this.a = context;
        this.s = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.i = 0;
        this.v = new ArrayList();
        this.t = true;
    }

    public static CharSequence b(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Notification a() {
        Bundle bundle;
        int i;
        ArrayList arrayList;
        int i2;
        Bundle bundle2 = new Bundle();
        String str = this.s;
        Context context = this.a;
        Notification.Builder builder = new Notification.Builder(context, str);
        Notification notification = this.u;
        Context context2 = null;
        builder.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(this.e).setContentText(this.f).setContentInfo(null).setContentIntent(this.g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setNumber(0).setProgress(this.m, this.n, this.o);
        IconCompat iconCompat = this.h;
        builder.setLargeIcon(iconCompat == null ? null : iconCompat.d(context));
        builder.setSubText(this.l).setUsesChronometer(false).setPriority(this.i);
        for (vo5 vo5Var : this.b) {
            if (vo5Var.b == null && (i2 = vo5Var.e) != 0) {
                vo5Var.b = IconCompat.a(i2);
            }
            IconCompat iconCompat2 = vo5Var.b;
            boolean z = vo5Var.c;
            Bundle bundle3 = vo5Var.a;
            Notification.Action.Builder builder2 = new Notification.Action.Builder(iconCompat2 != null ? iconCompat2.d(context2) : context2, vo5Var.f, vo5Var.g);
            Bundle bundle4 = bundle3 != null ? new Bundle(bundle3) : new Bundle();
            bundle4.putBoolean("android.support.allowGeneratedReplies", z);
            builder2.setAllowGeneratedReplies(z);
            bundle4.putInt("android.support.action.semanticAction", 0);
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 28) {
                cf.q(builder2);
            }
            if (i3 >= 29) {
                du.l(builder2);
            }
            if (i3 >= 31) {
                f76.c(builder2);
            }
            bundle4.putBoolean("android.support.action.showsUserInterface", vo5Var.d);
            builder2.addExtras(bundle4);
            builder.addAction(builder2.build());
            context2 = null;
        }
        Bundle bundle5 = this.q;
        if (bundle5 != null) {
            bundle2.putAll(bundle5);
        }
        builder.setShowWhen(this.j);
        builder.setLocalOnly(this.p);
        builder.setGroup(null);
        builder.setSortKey(null);
        builder.setGroupSummary(false);
        builder.setCategory(null);
        builder.setColor(this.r);
        builder.setVisibility(0);
        builder.setPublicVersion(null);
        builder.setSound(notification.sound, notification.audioAttributes);
        int i4 = Build.VERSION.SDK_INT;
        ArrayList arrayList2 = this.v;
        ArrayList arrayList3 = this.c;
        if (i4 < 28) {
            if (arrayList3 == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList(arrayList3.size());
                Iterator it = arrayList3.iterator();
                if (it.hasNext()) {
                    throw eq3.h(it);
                }
            }
            if (arrayList != null) {
                if (arrayList2 == null) {
                    arrayList2 = arrayList;
                } else {
                    p50 p50Var = new p50(arrayList2.size() + arrayList.size());
                    p50Var.addAll(arrayList);
                    p50Var.addAll(arrayList2);
                    arrayList2 = new ArrayList(p50Var);
                }
            }
        }
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                builder.addPerson((String) it2.next());
            }
        }
        ArrayList arrayList4 = this.d;
        if (arrayList4.size() > 0) {
            if (this.q == null) {
                this.q = new Bundle();
            }
            Bundle bundle6 = this.q.getBundle("android.car.EXTENSIONS");
            if (bundle6 == null) {
                bundle6 = new Bundle();
            }
            Bundle bundle7 = new Bundle(bundle6);
            Bundle bundle8 = new Bundle();
            int i5 = 0;
            while (i5 < arrayList4.size()) {
                String string = Integer.toString(i5);
                vo5 vo5Var2 = (vo5) arrayList4.get(i5);
                Bundle bundle9 = new Bundle();
                if (vo5Var2.b == null && (i = vo5Var2.e) != 0) {
                    vo5Var2.b = IconCompat.a(i);
                }
                IconCompat iconCompat3 = vo5Var2.b;
                Bundle bundle10 = vo5Var2.a;
                ArrayList arrayList5 = arrayList4;
                bundle9.putInt("icon", iconCompat3 != null ? iconCompat3.b() : 0);
                bundle9.putCharSequence("title", vo5Var2.f);
                bundle9.putParcelable("actionIntent", vo5Var2.g);
                Bundle bundle11 = bundle10 != null ? new Bundle(bundle10) : new Bundle();
                bundle11.putBoolean("android.support.allowGeneratedReplies", vo5Var2.c);
                bundle9.putBundle("extras", bundle11);
                bundle9.putParcelableArray("remoteInputs", null);
                bundle9.putBoolean("showsUserInterface", vo5Var2.d);
                bundle9.putInt("semanticAction", 0);
                bundle8.putBundle(string, bundle9);
                i5++;
                arrayList4 = arrayList5;
            }
            bundle6.putBundle("invisible_actions", bundle8);
            bundle7.putBundle("invisible_actions", bundle8);
            if (this.q == null) {
                this.q = new Bundle();
            }
            this.q.putBundle("android.car.EXTENSIONS", bundle6);
            bundle2.putBundle("android.car.EXTENSIONS", bundle7);
        }
        builder.setExtras(this.q);
        builder.setRemoteInputHistory(null);
        builder.setBadgeIconType(0);
        builder.setSettingsText(null);
        builder.setShortcutId(null);
        builder.setTimeoutAfter(0L);
        builder.setGroupAlertBehavior(0);
        if (!TextUtils.isEmpty(this.s)) {
            builder.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 28) {
            Iterator it3 = arrayList3.iterator();
            if (it3.hasNext()) {
                throw eq3.h(it3);
            }
        }
        if (i6 >= 29) {
            du.j(builder, this.t);
            du.k(builder);
        }
        if (i6 >= 36) {
            k6.f(builder);
        }
        c00 c00Var = this.k;
        if (c00Var != null) {
            new Notification.BigTextStyle(builder).setBigContentTitle(null).bigText((CharSequence) c00Var.c);
        }
        Notification notificationBuild = builder.build();
        if (c00Var != null) {
            this.k.getClass();
        }
        if (c00Var != null && (bundle = notificationBuild.extras) != null) {
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", "androidx.core.app.NotificationCompat$BigTextStyle");
        }
        return notificationBuild;
    }

    public final void c(int i) {
        Notification notification = this.u;
        notification.flags = i | notification.flags;
    }

    public final void d(Bitmap bitmap) {
        IconCompat iconCompat;
        if (bitmap == null) {
            iconCompat = null;
        } else {
            if (Build.VERSION.SDK_INT < 27) {
                Resources resources = this.a.getResources();
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
                int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
                if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                    double dMin = Math.min(((double) dimensionPixelSize) / ((double) Math.max(1, bitmap.getWidth())), ((double) dimensionPixelSize2) / ((double) Math.max(1, bitmap.getHeight())));
                    bitmap = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(((double) bitmap.getWidth()) * dMin), (int) Math.ceil(((double) bitmap.getHeight()) * dMin), true);
                }
            }
            PorterDuff.Mode mode = IconCompat.k;
            bitmap.getClass();
            IconCompat iconCompat2 = new IconCompat(1);
            iconCompat2.b = bitmap;
            iconCompat = iconCompat2;
        }
        this.h = iconCompat;
    }

    public final void e(c00 c00Var) {
        if (this.k != c00Var) {
            this.k = c00Var;
            c00Var.q(this);
        }
    }
}
