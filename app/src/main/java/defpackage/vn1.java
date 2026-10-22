package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Trace;
import androidx.appcompat.widget.Toolbar;
import androidx.credentials.playservices.controllers.identityauth.createpassword.CredentialProviderCreatePasswordController;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import com.yubico.yubikit.android.ui.OtpActivity;
import java.lang.reflect.Method;
import java.nio.MappedByteBuffer;
import java.util.concurrent.atomic.AtomicMarkableReference;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vn1 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ vn1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    private final void a() {
        gq3 gq3Var = (gq3) this.b;
        synchronized (gq3Var.d) {
            try {
                if (gq3Var.n == null) {
                    return;
                }
                try {
                    sq3 sq3VarB = gq3Var.b();
                    int i = sq3VarB.f;
                    if (i == 2) {
                        synchronized (gq3Var.d) {
                        }
                    }
                    if (i != 0) {
                        throw new RuntimeException("fetchFonts result is not OK. (" + i + ")");
                    }
                    try {
                        Method method = y88.b;
                        Trace.beginSection("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                        hx0 hx0Var = gq3Var.c;
                        Context context = gq3Var.a;
                        hx0Var.getClass();
                        sq3[] sq3VarArr = {sq3VarB};
                        y13 y13Var = vc8.a;
                        iz1.b("TypefaceCompat.createFromFontInfo");
                        try {
                            Typeface typefaceG = vc8.a.g(context, sq3VarArr, 0);
                            Trace.endSection();
                            MappedByteBuffer mappedByteBufferW = l73.w(gq3Var.a, sq3VarB.a);
                            if (mappedByteBufferW == null || typefaceG == null) {
                                throw new RuntimeException("Unable to open file.");
                            }
                            try {
                                Trace.beginSection("EmojiCompat.MetadataRepo.create");
                                kb2 kb2Var = new kb2(typefaceG, zm5.y(mappedByteBufferW));
                                Trace.endSection();
                                Trace.endSection();
                                synchronized (gq3Var.d) {
                                    try {
                                        nc8 nc8Var = gq3Var.n;
                                        if (nc8Var != null) {
                                            nc8Var.R(kb2Var);
                                        }
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                                gq3Var.a();
                            } catch (Throwable th2) {
                                Method method2 = y88.b;
                                Trace.endSection();
                                throw th2;
                            }
                        } catch (Throwable th3) {
                            Trace.endSection();
                            throw th3;
                        }
                    } catch (Throwable th4) {
                        Method method3 = y88.b;
                        Trace.endSection();
                        throw th4;
                    }
                } catch (Throwable th5) {
                    synchronized (gq3Var.d) {
                        try {
                            nc8 nc8Var2 = gq3Var.n;
                            if (nc8Var2 != null) {
                                nc8Var2.P(th5);
                            }
                            gq3Var.a();
                        } catch (Throwable th6) {
                            throw th6;
                        }
                    }
                }
            } catch (Throwable th7) {
                throw th7;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        boolean z = true;
        switch (this.a) {
            case 0:
                io1.i((io1) this.b);
                return;
            case 1:
                CredentialProviderCreatePasswordController.invokePlayServices$lambda$0$0$0((CredentialProviderCreatePasswordController) this.b);
                return;
            case 2:
                CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$2$0$0((CredentialProviderCreatePublicKeyCredentialController) this.b);
                return;
            case 3:
                CredentialProviderGetSignInIntentController.invokePlayServices$lambda$1$0$0((CredentialProviderGetSignInIntentController) this.b);
                return;
            case 4:
                a();
                return;
            case 5:
                OtpActivity otpActivity = (OtpActivity) this.b;
                int i = OtpActivity.x;
                otpActivity.k.setText(otpActivity.c ? R.string.yubikit_prompt_plug_in_or_tap : R.string.yubikit_prompt_plug_in);
                return;
            case 6:
                n76 n76Var = (n76) this.b;
                hu4 hu4Var = n76Var.f;
                if (n76Var.b == 0) {
                    n76Var.c = true;
                    hu4Var.d(rt4.ON_PAUSE);
                }
                if (n76Var.a == 0 && n76Var.c) {
                    hu4Var.d(rt4.ON_STOP);
                    n76Var.d = true;
                    return;
                }
                return;
            case 7:
                ((Toolbar) this.b).m();
                return;
            default:
                i75 i75Var = (i75) this.b;
                synchronized (((AtomicMarkableReference) i75Var.k)) {
                    try {
                        if (((AtomicMarkableReference) i75Var.k).isMarked()) {
                            str = (String) ((AtomicMarkableReference) i75Var.k).getReference();
                            ((AtomicMarkableReference) i75Var.k).set(str, false);
                        } else {
                            str = null;
                            z = false;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                if (z) {
                    ((lf5) i75Var.a).i((String) i75Var.c, str);
                    return;
                }
                return;
        }
    }
}
