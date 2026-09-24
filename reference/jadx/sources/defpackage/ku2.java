package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ku2 {
    public static final Object j = new Object();
    public static volatile ku2 k;
    public final ReentrantReadWriteLock a;
    public final p50 b;
    public volatile int c;
    public final Handler d;
    public final fu2 e;
    public final ju2 f;
    public final fo8 g;
    public final int h;
    public final je2 i;

    public ku2(mu2 mu2Var) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.a = reentrantReadWriteLock;
        this.c = 3;
        ju2 ju2Var = (ju2) mu2Var.b;
        this.f = ju2Var;
        int i = mu2Var.a;
        this.h = i;
        this.i = (je2) mu2Var.c;
        this.d = new Handler(Looper.getMainLooper());
        this.b = new p50(0);
        this.g = new fo8(4);
        fu2 fu2Var = new fu2(this);
        this.e = fu2Var;
        reentrantReadWriteLock.writeLock().lock();
        if (i == 0) {
            try {
                this.c = 0;
            } catch (Throwable th) {
                this.a.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (b() == 0) {
            try {
                ju2Var.c(new eu2(fu2Var));
            } catch (Throwable th2) {
                d(th2);
            }
        }
    }

    public static ku2 a() {
        ku2 ku2Var;
        synchronized (j) {
            try {
                ku2Var = k;
                if (!(ku2Var != null)) {
                    throw new IllegalStateException("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return ku2Var;
    }

    public final int b() {
        this.a.readLock().lock();
        try {
            return this.c;
        } finally {
            this.a.readLock().unlock();
        }
    }

    public final void c() {
        if (!(this.h == 1)) {
            l0.e("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
            return;
        }
        if (b() == 1) {
            return;
        }
        this.a.writeLock().lock();
        try {
            if (this.c == 0) {
                this.a.writeLock().unlock();
                return;
            }
            this.c = 0;
            this.a.writeLock().unlock();
            fu2 fu2Var = this.e;
            ku2 ku2Var = fu2Var.a;
            try {
                ku2Var.f.c(new eu2(fu2Var));
            } catch (Throwable th) {
                ku2Var.d(th);
            }
        } catch (Throwable th2) {
            this.a.writeLock().unlock();
            throw th2;
        }
    }

    public final void d(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.a.writeLock().lock();
        try {
            this.c = 2;
            arrayList.addAll(this.b);
            this.b.clear();
            this.a.writeLock().unlock();
            this.d.post(new iu2(arrayList, this.c, th));
        } catch (Throwable th2) {
            this.a.writeLock().unlock();
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:112:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0096 A[Catch: all -> 0x0079, TryCatch #2 {all -> 0x0079, blocks: (B:35:0x0051, B:38:0x0056, B:40:0x005a, B:42:0x0067, B:49:0x0086, B:51:0x0090, B:53:0x0093, B:55:0x0096, B:57:0x00a6, B:58:0x00a9), top: B:107:0x0051 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00a6 A[Catch: all -> 0x0079, TryCatch #2 {all -> 0x0079, blocks: (B:35:0x0051, B:38:0x0056, B:40:0x005a, B:42:0x0067, B:49:0x0086, B:51:0x0090, B:53:0x0093, B:55:0x0096, B:57:0x00a6, B:58:0x00a9), top: B:107:0x0051 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00be  */
    /* JADX WARN: Code duplicated, block: B:88:0x00fb  */
    public final CharSequence e(CharSequence charSequence, int i, int i2) throws Throwable {
        Throwable th;
        CharSequence charSequence2;
        int i3;
        int i4;
        bd8[] bd8VarArr;
        int spanStart;
        re8 re8Var = null;
        if (!(b() == 1)) {
            l0.e("Not initialized yet");
            return null;
        }
        if (i < 0) {
            c6.f("start cannot be negative");
            return null;
        }
        if (i2 < 0) {
            c6.f("end cannot be negative");
            return null;
        }
        if (!(i <= i2)) {
            c6.f("start should be <= than end");
            return null;
        }
        if (charSequence == null) {
            return null;
        }
        if (!(i <= charSequence.length())) {
            c6.f("start should be < than charSequence length");
            return null;
        }
        if (!(i2 <= charSequence.length())) {
            c6.f("end should be < than charSequence length");
            return null;
        }
        if (charSequence.length() == 0 || i == i2) {
            return charSequence;
        }
        dr drVar = this.e.b;
        drVar.getClass();
        boolean z = charSequence instanceof xj7;
        if (z) {
            ((xj7) charSequence).a();
        }
        if (z) {
            re8Var = new re8((Spannable) charSequence);
            if (re8Var != null) {
                for (bd8 bd8Var : bd8VarArr) {
                    spanStart = re8Var.b.getSpanStart(bd8Var);
                    int spanEnd = re8Var.b.getSpanEnd(bd8Var);
                    if (spanStart != i2) {
                        re8Var.removeSpan(bd8Var);
                    }
                    i = Math.min(spanStart, i);
                    i2 = Math.max(spanEnd, i2);
                }
            }
            i3 = i;
            i4 = i2;
            if (i3 != i4) {
                charSequence2 = charSequence;
                if (!z) {
                    return charSequence2;
                }
            } else {
                charSequence2 = charSequence;
                if (!z) {
                    return charSequence2;
                }
            }
            ((xj7) charSequence2).b();
            return charSequence2;
        }
        try {
            if (charSequence instanceof Spannable) {
                try {
                    re8Var = new re8((Spannable) charSequence);
                } catch (Throwable th2) {
                    th = th2;
                    charSequence2 = charSequence;
                    th = th;
                    if (!z) {
                        throw th;
                    }
                    ((xj7) charSequence2).b();
                    throw th;
                }
            } else if ((charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(i - 1, i2 + 1, bd8.class) <= i2) {
                re8Var = new re8();
                re8Var.a = false;
                re8Var.b = new SpannableString(charSequence);
            }
            if (re8Var != null && (bd8VarArr = (bd8[]) re8Var.b.getSpans(i, i2, bd8.class)) != null && bd8VarArr.length > 0) {
                while (i < r2) {
                    spanStart = re8Var.b.getSpanStart(bd8Var);
                    int spanEnd2 = re8Var.b.getSpanEnd(bd8Var);
                    if (spanStart != i2) {
                        re8Var.removeSpan(bd8Var);
                    }
                    i = Math.min(spanStart, i);
                    i2 = Math.max(spanEnd2, i2);
                }
            }
            i3 = i;
            i4 = i2;
            if (i3 != i4 || i3 >= charSequence.length()) {
                charSequence2 = charSequence;
                if (!z) {
                    return charSequence2;
                }
            } else {
                try {
                    charSequence2 = charSequence;
                    try {
                        re8 re8Var2 = (re8) drVar.f(charSequence2, i3, i4, Integer.MAX_VALUE, false, new yf1(5, re8Var, (fo8) drVar.b));
                        if (re8Var2 != null) {
                            Spannable spannable = re8Var2.b;
                            if (z) {
                                ((xj7) charSequence2).b();
                            }
                            return spannable;
                        }
                        if (!z) {
                            return charSequence2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        th = th;
                        if (!z) {
                            throw th;
                        }
                        ((xj7) charSequence2).b();
                        throw th;
                    }
                } catch (Throwable th4) {
                    charSequence2 = charSequence;
                    th = th4;
                }
            }
            ((xj7) charSequence2).b();
            return charSequence2;
        } catch (Throwable th5) {
            th = th5;
            charSequence2 = charSequence;
        }
        if (!z) {
            throw th;
        }
        ((xj7) charSequence2).b();
        throw th;
    }

    public final void f(hu2 hu2Var) {
        yc9.f(hu2Var, "initCallback cannot be null");
        this.a.writeLock().lock();
        try {
            if (this.c == 1 || this.c == 2) {
                this.d.post(new iu2(Arrays.asList(hu2Var), this.c, null));
            } else {
                this.b.add(hu2Var);
            }
        } finally {
            this.a.writeLock().unlock();
        }
    }
}
