package defpackage;

import android.text.TextUtils;
import androidx.credentials.playservices.controllers.ResponseUtils;
import com.google.android.material.button.MaterialButton;
import com.jcraft.jsch.Session;
import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o10 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ o10(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ee0 ee0VarS;
        ee0 ee0VarG;
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((t10) obj).dismiss();
                return;
            case 1:
                ((j30) obj).dismiss();
                return;
            case 2:
                ko1.a((ko1) obj);
                return;
            case 3:
                pg3 pg3Var = (pg3) obj;
                Object obj2 = pg3.m;
                synchronized (obj2) {
                    try {
                        yf1 yf1VarH = yf1.h(pg3Var.a.getApplicationContext());
                        try {
                            ee0VarS = pg3Var.c.s();
                            if (yf1VarH != null) {
                                yf1VarH.q();
                            }
                        } catch (Throwable th) {
                            if (yf1VarH != null) {
                                yf1VarH.q();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                try {
                    int i2 = ee0VarS.b;
                    if (i2 == 5) {
                        ee0VarG = pg3Var.g(ee0VarS);
                    } else {
                        if (i2 == 3) {
                            ee0VarG = pg3Var.g(ee0VarS);
                        } else if (!pg3Var.d.a(ee0VarS)) {
                            return;
                        } else {
                            ee0VarG = pg3Var.b(ee0VarS);
                        }
                    }
                    synchronized (obj2) {
                        try {
                            yf1 yf1VarH2 = yf1.h(pg3Var.a.getApplicationContext());
                            try {
                                pg3Var.c.n(ee0VarG);
                                if (yf1VarH2 != null) {
                                    yf1VarH2.q();
                                }
                            } catch (Throwable th3) {
                                if (yf1VarH2 != null) {
                                    yf1VarH2.q();
                                }
                                throw th3;
                            }
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                    synchronized (pg3Var) {
                        try {
                            if (pg3Var.k.size() != 0 && !TextUtils.equals(ee0VarS.a, ee0VarG.a)) {
                                Iterator it = pg3Var.k.iterator();
                                if (it.hasNext()) {
                                    if (it.next() != null) {
                                        throw new ClassCastException();
                                    }
                                    throw null;
                                }
                            }
                        } catch (Throwable th5) {
                            throw th5;
                        }
                    }
                    if (ee0VarG.b == 4) {
                        String str = ee0VarG.a;
                        synchronized (pg3Var) {
                            pg3Var.j = str;
                        }
                    }
                    int i3 = ee0VarG.b;
                    if (i3 == 5) {
                        pg3Var.h(new rg3());
                        return;
                    } else if (i3 == 2 || i3 == 1) {
                        pg3Var.h(new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."));
                        return;
                    } else {
                        pg3Var.i(ee0VarG);
                        return;
                    }
                } catch (rg3 e) {
                    pg3Var.h(e);
                    return;
                }
            case 4:
                MaterialButton.a((MaterialButton) obj);
                return;
            case 5:
                ResponseUtils.Companion.handleGetCredentialResponse$lambda$2$0((t22) obj);
                return;
            case 6:
                ((Session) obj).t();
                return;
            default:
                e38 e38Var = (e38) obj;
                ((mw6) e38Var.e).m(new rn1(e38Var, 10));
                return;
        }
    }
}
