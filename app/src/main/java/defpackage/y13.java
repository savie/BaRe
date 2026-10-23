package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.security.keystore.KeyGenParameterSpec;
import android.widget.ImageView;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y13 {
    public static final char[] a = {';', ','};
    public static final double[][] b = {new double[]{0.001200833568784504d, 0.002389694492170889d, 2.795742885861124E-4d}, new double[]{5.891086651375999E-4d, 0.0029785502573438758d, 3.270666104008398E-4d}, new double[]{1.0146692491640572E-4d, 5.364214359186694E-4d, 0.0032979401770712076d}};
    public static final double[][] c = {new double[]{1373.2198709594231d, -1100.4251190754821d, -7.278681089101213d}, new double[]{-271.815969077903d, 559.6580465940733d, -32.46047482791194d}, new double[]{1.9622899599665666d, -57.173814538844006d, 308.7233197812385d}};
    public static final double[] d = {0.2126d, 0.7152d, 0.0722d};
    public static final double[] e = {0.015176349177441876d, 0.045529047532325624d, 0.07588174588720938d, 0.10623444424209313d, 0.13658714259697685d, 0.16693984095186062d, 0.19729253930674434d, 0.2276452376616281d, 0.2579979360165119d, 0.28835063437139563d, 0.3188300904430532d, 0.350925934958123d, 0.3848314933096426d, 0.42057480301049466d, 0.458183274052838d, 0.4976837250274023d, 0.5391024159806381d, 0.5824650784040898d, 0.6277969426914107d, 0.6751227633498623d, 0.7244668422128921d, 0.775853049866786d, 0.829304845476233d, 0.8848452951698498d, 0.942497089126609d, 1.0022825574869039d, 1.0642236851973577d, 1.1283421258858297d, 1.1946592148522128d, 1.2631959812511864d, 1.3339731595349034d, 1.407011200216447d, 1.4823302800086415d, 1.5599503113873272d, 1.6398909516233677d, 1.7221716113234105d, 1.8068114625156377d, 1.8938294463134073d, 1.9832442801866852d, 2.075074464868551d, 2.1693382909216234d, 2.2660538449872063d, 2.36523901573795d, 2.4669114995532007d, 2.5710888059345764d, 2.6777882626779785d, 2.7870270208169257d, 2.898822059350997d, 3.0131901897720907d, 3.1301480604002863d, 3.2497121605402226d, 3.3718988244681087d, 3.4967242352587946d, 3.624204428461639d, 3.754355295633311d, 3.887192587735158d, 4.022731918402185d, 4.160988767090289d, 4.301978482107941d, 4.445716283538092d, 4.592217266055746d, 4.741496401646282d, 4.893568542229298d, 5.048448422192488d, 5.20615066083972d, 5.3666897647573375d, 5.5300801301023865d, 5.696336044816294d, 5.865471690767354d, 6.037501145825082d, 6.212438385869475d, 6.390297286737924d, 6.571091626112461d, 6.7548350853498045d, 6.941541251256611d, 7.131223617812143d, 7.323895587840543d, 7.5195704746346665d, 7.7182615035334345d, 7.919981813454504d, 8.124744458384042d, 8.332562408825165d, 8.543448553206703d, 8.757415699253682d, 8.974476575321063d, 9.194643831691977d, 9.417930041841839d, 9.644347703669503d, 9.873909240696694d, 10.106627003236781d, 10.342513269534024d, 10.58158024687427d, 10.8238400726681d, 11.069304815507364d, 11.317986476196008d, 11.569896988756009d, 11.825048221409341d, 12.083451977536606d, 12.345119996613247d, 12.610063955123938d, 12.878295467455942d, 13.149826086772048d, 13.42466730586372d, 13.702830557985108d, 13.984327217668513d, 14.269168601521828d, 14.55736596900856d, 14.848930523210871d, 15.143873411576273d, 15.44220572664832d, 15.743938506781891d, 16.04908273684337d, 16.35764934889634d, 16.66964922287304d, 16.985093187232053d, 17.30399201960269d, 17.62635644741625d, 17.95219714852476d, 18.281524751807332d, 18.614349837764564d, 18.95068293910138d, 19.290534541298456d, 19.633915083172692d, 19.98083495742689d, 20.331304511189067d, 20.685334046541502d, 21.042933821039977d, 21.404114048223256d, 21.76888489811322d, 22.137256497705877d, 22.50923893145328d, 22.884842241736916d, 23.264076429332462d, 23.6469514538663d, 24.033477234264016d, 24.42366364919083d, 24.817520537484558d, 25.21505769858089d, 25.61628489293138d, 26.021211842414342d, 26.429848230738664d, 26.842203703840827d, 27.258287870275353d, 27.678110301598522d, 28.10168053274597d, 28.529008062403893d, 28.96010235337422d, 29.39497283293396d, 29.83362889318845d, 30.276079891419332d, 30.722335150426627d, 31.172403958865512d, 31.62629557157785d, 32.08401920991837d, 32.54558406207592d, 33.010999283389665d, 33.4802739966603d, 33.953417292456834d, 34.430438229418264d, 34.911345834551085d, 35.39614910352207d, 35.88485700094671d, 36.37747846067349d, 36.87402238606382d, 37.37449765026789d, 37.87891309649659d, 38.38727753828926d, 38.89959975977785d, 39.41588851594697d, 39.93615253289054d, 40.460400508064545d, 40.98864111053629d, 41.520882981230194d, 42.05713473317016d, 42.597404951718396d, 43.141702194811224d, 43.6900349931913d, 44.24241185063697d, 44.798841244188324d, 45.35933162437017d, 45.92389141541209d, 46.49252901546552d, 47.065252796817916d, 47.64207110610409d, 48.22299226451468d, 48.808024568002054d, 49.3971762874833d, 49.9904556690408d, 50.587870934119984d, 51.189430279724725d, 51.79514187861014d, 52.40501387947288d, 53.0190544071392d, 53.637271562750364d, 54.259673423945976d, 54.88626804504493d, 55.517063457223934d, 56.15206766869424d, 56.79128866487574d, 57.43473440856916d, 58.08241284012621d, 58.734331877617365d, 59.39049941699807d, 60.05092333227251d, 60.715611475655585d, 61.38457167773311d, 62.057811747619894d, 62.7353394731159d, 63.417162620860914d, 64.10328893648692d, 64.79372614476921d, 65.48848194977529d, 66.18756403501224d, 66.89098006357258d, 67.59873767827808d, 68.31084450182222d, 69.02730813691093d, 69.74813616640164d, 70.47333615344107d, 71.20291564160104d, 71.93688215501312d, 72.67524319850172d, 73.41800625771542d, 74.16517879925733d, 74.9167682708136d, 75.67278210128072d, 76.43322770089146d, 77.1981124613393d, 77.96744375590167d, 78.74122893956174d, 79.51947534912904d, 80.30219030335869d, 81.08938110306934d, 81.88105503125999d, 82.67721935322541d, 83.4778813166706d, 84.28304815182372d, 85.09272707154808d, 85.90692527145302d, 86.72564993000343d, 87.54890820862819d, 88.3767072518277d, 89.2090541872801d, 90.04595612594655d, 90.88742016217518d, 91.73345337380438d, 92.58406282226491d, 93.43925555268066d, 94.29903859396902d, 95.16341895893969d, 96.03240364439274d, 96.9059996312159d, 97.78421388448044d, 98.6670533535366d, 99.55452497210776d};
    public static final Object f = new Object();
    public static final Object g = new Object();

    public y13() {
        new ConcurrentHashMap();
    }

    public static final float A(int i, float f2) {
        float f3 = 5.0f;
        if (i != R.drawable.ic_webdav_new && i != R.drawable.ic_branding_nextcloud && i != R.drawable.ic_branding_synology) {
            if (i != R.drawable.ic_branding_ovhcloud_object_storage && i != R.drawable.ic_branding_scaleway_object_storage) {
                f3 = i == R.drawable.ic_branding_seafile ? 4.0f : f2;
            } else if (f2 >= 3.0f) {
                f3 = 7.0f;
            }
        }
        return Math.max(f2, f3);
    }

    public static final void D(ImageView imageView, int i, CharSequence charSequence, float f2) {
        imageView.getClass();
        imageView.setImageResource(i);
        imageView.setContentDescription(charSequence);
        Context context = imageView.getContext();
        context.getClass();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(-1);
        gradientDrawable.setStroke(tu0.v(1.0f * context.getResources().getDisplayMetrics().density), 570425344);
        imageView.setBackground(gradientDrawable);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setAdjustViewBounds(false);
        Context context2 = imageView.getContext();
        context2.getClass();
        int iV = tu0.v(A(i, f2) * context2.getResources().getDisplayMetrics().density);
        imageView.setPadding(iV, iV, iV, iV);
    }

    public static void E(bt btVar) {
        btVar.getClass();
        String string = btVar.toString();
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString("last_used_apps_section", string).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02db  */
    /* JADX WARN: Code duplicated, block: B:102:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:104:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:113:0x0373  */
    /* JADX WARN: Code duplicated, block: B:114:0x0377  */
    /* JADX WARN: Code duplicated, block: B:135:0x037f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x01de A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:50:0x01df  */
    /* JADX WARN: Code duplicated, block: B:53:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:55:0x0203  */
    /* JADX WARN: Code duplicated, block: B:56:0x0206  */
    /* JADX WARN: Code duplicated, block: B:59:0x020c  */
    /* JADX WARN: Code duplicated, block: B:61:0x0210  */
    /* JADX WARN: Code duplicated, block: B:63:0x0215  */
    /* JADX WARN: Code duplicated, block: B:65:0x0224  */
    /* JADX WARN: Code duplicated, block: B:67:0x0230  */
    /* JADX WARN: Code duplicated, block: B:68:0x0237  */
    /* JADX WARN: Code duplicated, block: B:70:0x023c  */
    /* JADX WARN: Code duplicated, block: B:72:0x024b  */
    /* JADX WARN: Code duplicated, block: B:73:0x0255  */
    /* JADX WARN: Code duplicated, block: B:74:0x025b  */
    /* JADX WARN: Code duplicated, block: B:76:0x026a  */
    /* JADX WARN: Code duplicated, block: B:77:0x0274  */
    /* JADX WARN: Code duplicated, block: B:81:0x0281  */
    /* JADX WARN: Code duplicated, block: B:83:0x0287  */
    /* JADX WARN: Code duplicated, block: B:84:0x028f  */
    /* JADX WARN: Code duplicated, block: B:85:0x0291  */
    /* JADX WARN: Code duplicated, block: B:88:0x029e  */
    /* JADX WARN: Code duplicated, block: B:91:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:93:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:98:0x02d3  */
    public static int F(double d2, double d3, double d4) {
        int iF;
        int iF2;
        double d5;
        char c2;
        int i;
        int i2;
        int iF3;
        double[] dArr;
        double[] dArr2;
        boolean z;
        int i3;
        double d6;
        double d7;
        int i4;
        double d8;
        double[] dArr3;
        double dN;
        double[] dArr4;
        int i5;
        double d9;
        double d10;
        int iCeil;
        double dFloor;
        int i6;
        int i7;
        int iFloor;
        double[] dArr5;
        double dN2;
        double d11;
        double d12;
        double d13;
        double d14;
        double d15;
        double d16;
        double d17;
        double[] dArr6;
        double[] dArr7;
        double d18;
        double d19;
        double dN3;
        double d20;
        double d21;
        double d22;
        if (d3 < 1.0E-4d || d4 < 1.0E-4d || d4 > 99.9999d) {
            iF = z85.f(z85.I(d4)) & 255;
            iF2 = (iF << 16) | (-16777216) | (iF << 8);
        } else {
            double d23 = d2 % 360.0d;
            if (d23 < 0.0d) {
                d23 += 360.0d;
            }
            double d24 = (d23 / 180.0d) * 3.141592653589793d;
            double dI = z85.I(d4);
            double d25 = 11.0d;
            double dSqrt = Math.sqrt(dI) * 11.0d;
            en8 en8Var = en8.k;
            double d26 = 1.0d;
            double dPow = 1.0d / Math.pow(1.64d - Math.pow(0.29d, en8Var.f), 0.73d);
            double d27 = d24;
            double dCos = (Math.cos(d24 + 2.0d) + 3.8d) * 0.25d * 3846.153846153846d * en8Var.e * en8Var.c;
            double dSin = Math.sin(d27);
            double dCos2 = Math.cos(d27);
            int i8 = 0;
            while (true) {
                double d28 = d25;
                double[] dArr8 = d;
                double d29 = d26;
                if (i8 < 5) {
                    c2 = 2;
                    double d30 = dSqrt / 100.0d;
                    i2 = 8;
                    i = 1;
                    double dPow2 = Math.pow(((d3 == 0.0d || dSqrt == 0.0d) ? 0.0d : d3 / Math.sqrt(d30)) * dPow, 1.1111111111111112d);
                    d5 = dI;
                    double dPow3 = (Math.pow(d30, (d29 / en8Var.d) / en8Var.j) * en8Var.a) / en8Var.b;
                    double d31 = (((0.305d + dPow3) * 23.0d) * dPow2) / (((dPow2 * 108.0d) * dSin) + (((dPow2 * d28) * dCos2) + (23.0d * dCos)));
                    double d32 = d31 * dCos2;
                    double d33 = d31 * dSin;
                    double d34 = dPow3 * 460.0d;
                    double[] dArrC = cy0.C(new double[]{p(((288.0d * d33) + ((451.0d * d32) + d34)) / 1403.0d), p(((d34 - (891.0d * d32)) - (261.0d * d33)) / 1403.0d), p(((d34 - (d32 * 220.0d)) - (d33 * 6300.0d)) / 1403.0d)}, c);
                    double d35 = dArrC[0];
                    if (d35 >= 0.0d) {
                        double d36 = dArrC[1];
                        if (d36 >= 0.0d) {
                            double d37 = dArrC[2];
                            if (d37 >= 0.0d) {
                                double d38 = (dArr8[2] * d37) + (dArr8[1] * d36) + (dArr8[0] * d35);
                                if (d38 > 0.0d) {
                                    if (i8 != 4) {
                                        double d39 = d38 - d5;
                                        if (Math.abs(d39) >= 0.002d) {
                                            dSqrt -= (d39 * dSqrt) / (d38 * 2.0d);
                                            i8++;
                                            d25 = d28;
                                            d26 = d29;
                                            dI = d5;
                                        }
                                    }
                                    double d40 = dArrC[0];
                                    if (d40 <= 100.01d && dArrC[1] <= 100.01d && dArrC[2] <= 100.01d) {
                                        iF3 = (z85.f(dArrC[2]) & 255) | ((z85.f(d40) & 255) << 16) | (-16777216) | ((z85.f(dArrC[1]) & 255) << 8);
                                    }
                                    if (iF3 != 0) {
                                        return iF3;
                                    }
                                    dArr = new double[3];
                                    dArr[0] = -1.0d;
                                    dArr[i] = -1.0d;
                                    dArr[c2] = -1.0d;
                                    dArr2 = dArr;
                                    z = false;
                                    i3 = 0;
                                    d6 = 0.0d;
                                    d7 = 0.0d;
                                    i4 = i;
                                    while (i3 < 12) {
                                        d12 = dArr8[0];
                                        d13 = dArr8[i];
                                        d14 = dArr8[c2];
                                        if (i3 % 4 <= i) {
                                            d15 = 0.0d;
                                        } else {
                                            d15 = 100.0d;
                                        }
                                        if (i3 % 2 == 0) {
                                            d16 = 0.0d;
                                        } else {
                                            d16 = 100.0d;
                                        }
                                        if (i3 < 4) {
                                            d22 = ((d5 - (d13 * d15)) - (d14 * d16)) / d12;
                                            if (r(d22)) {
                                                dArr6 = new double[3];
                                                dArr6[0] = d22;
                                                dArr6[1] = d15;
                                                dArr6[c2] = d16;
                                            } else {
                                                dArr6 = new double[]{-1.0d, -1.0d, -1.0d};
                                            }
                                        } else {
                                            if (i3 < i2) {
                                                d18 = ((d5 - (d12 * d16)) - (d14 * d15)) / d13;
                                                if (r(d18)) {
                                                    dArr7 = new double[3];
                                                    dArr7[0] = d16;
                                                    dArr7[1] = d18;
                                                    dArr7[c2] = d15;
                                                } else {
                                                    dArr6 = new double[]{-1.0d, -1.0d, -1.0d};
                                                }
                                            } else {
                                                d17 = ((d5 - (d12 * d15)) - (d13 * d16)) / d14;
                                                if (r(d17)) {
                                                    dArr7 = new double[3];
                                                    dArr7[0] = d15;
                                                    dArr7[1] = d16;
                                                    dArr7[c2] = d17;
                                                } else {
                                                    dArr6 = new double[]{-1.0d, -1.0d, -1.0d};
                                                }
                                            }
                                            if (dArr7[0] < 0.0d) {
                                                d19 = d27;
                                            } else {
                                                dN3 = n(dArr7);
                                                if (!z) {
                                                    d19 = d27;
                                                    dArr = dArr7;
                                                    dArr2 = dArr;
                                                    d6 = dN3;
                                                    d7 = d6;
                                                    z = true;
                                                } else if (i4 == 0 || d(d6, dN3, d7)) {
                                                    d20 = d27;
                                                    d21 = d6;
                                                    d6 = d21;
                                                    d19 = d20;
                                                    if (d(d21, d20, dN3)) {
                                                        dArr2 = dArr7;
                                                        d7 = dN3;
                                                    } else {
                                                        dArr = dArr7;
                                                        d6 = dN3;
                                                    }
                                                    i4 = 0;
                                                } else {
                                                    d19 = d27;
                                                }
                                            }
                                            i3++;
                                            d27 = d19;
                                            i = 1;
                                            i2 = 8;
                                        }
                                        dArr7 = dArr6;
                                        if (dArr7[0] < 0.0d) {
                                            d19 = d27;
                                        } else {
                                            dN3 = n(dArr7);
                                            if (!z) {
                                                d19 = d27;
                                                dArr = dArr7;
                                                dArr2 = dArr;
                                                d6 = dN3;
                                                d7 = d6;
                                                z = true;
                                            } else {
                                                if (i4 == 0) {
                                                }
                                                d20 = d27;
                                                d21 = d6;
                                                d6 = d21;
                                                d19 = d20;
                                                if (d(d21, d20, dN3)) {
                                                    dArr2 = dArr7;
                                                    d7 = dN3;
                                                } else {
                                                    dArr = dArr7;
                                                    d6 = dN3;
                                                }
                                                i4 = 0;
                                            }
                                        }
                                        i3++;
                                        d27 = d19;
                                        i = 1;
                                        i2 = 8;
                                    }
                                    d8 = d27;
                                    double[][] dArr9 = {dArr, dArr2};
                                    dArr3 = dArr9[0];
                                    dN = n(dArr3);
                                    dArr4 = dArr9[1];
                                    for (i5 = 0; i5 < 3; i5++) {
                                        d9 = dArr3[i5];
                                        d10 = dArr4[i5];
                                        if (d9 == d10) {
                                            if (d9 < d10) {
                                                iCeil = (int) Math.floor(K(d9) - 0.5d);
                                                dFloor = Math.ceil(K(dArr4[i5]) - 0.5d);
                                            } else {
                                                iCeil = (int) Math.ceil(K(d9) - 0.5d);
                                                dFloor = Math.floor(K(dArr4[i5]) - 0.5d);
                                            }
                                            i6 = (int) dFloor;
                                            for (i7 = 0; i7 < 8 && Math.abs(i6 - iCeil) > 1; i7++) {
                                                iFloor = (int) Math.floor(((double) (iCeil + i6)) / 2.0d);
                                                double d41 = e[iFloor];
                                                double d42 = dArr3[i5];
                                                double d43 = (d41 - d42) / (dArr4[i5] - d42);
                                                double d44 = dArr3[0];
                                                double d45 = ((dArr4[0] - d44) * d43) + d44;
                                                double d46 = dArr3[1];
                                                double d47 = ((dArr4[1] - d46) * d43) + d46;
                                                double d48 = dArr3[c2];
                                                double d49 = ((dArr4[c2] - d48) * d43) + d48;
                                                dArr5 = new double[3];
                                                dArr5[0] = d45;
                                                dArr5[1] = d47;
                                                dArr5[c2] = d49;
                                                dN2 = n(dArr5);
                                                d11 = dN;
                                                if (d(d11, d8, dN2)) {
                                                    i6 = iFloor;
                                                    dArr4 = dArr5;
                                                    dN = d11;
                                                } else {
                                                    iCeil = iFloor;
                                                    dArr3 = dArr5;
                                                    dN = dN2;
                                                }
                                            }
                                            dN = dN;
                                        }
                                    }
                                    double d50 = (dArr3[0] + dArr4[0]) / 2.0d;
                                    double d51 = (dArr3[1] + dArr4[1]) / 2.0d;
                                    double d52 = (dArr3[c2] + dArr4[c2]) / 2.0d;
                                    double[] dArr10 = new double[3];
                                    dArr10[0] = d50;
                                    dArr10[1] = d51;
                                    dArr10[c2] = d52;
                                    iF2 = ((z85.f(dArr10[0]) & 255) << 16) | (-16777216) | ((z85.f(dArr10[1]) & 255) << 8);
                                    iF = z85.f(dArr10[c2]) & 255;
                                }
                            }
                        }
                    }
                } else {
                    d5 = dI;
                    c2 = 2;
                    i = 1;
                    i2 = 8;
                }
                iF3 = 0;
                if (iF3 != 0) {
                    return iF3;
                }
                dArr = new double[3];
                dArr[0] = -1.0d;
                dArr[i] = -1.0d;
                dArr[c2] = -1.0d;
                dArr2 = dArr;
                z = false;
                i3 = 0;
                d6 = 0.0d;
                d7 = 0.0d;
                i4 = i;
                while (i3 < 12) {
                    d12 = dArr8[0];
                    d13 = dArr8[i];
                    d14 = dArr8[c2];
                    if (i3 % 4 <= i) {
                        d15 = 0.0d;
                    } else {
                        d15 = 100.0d;
                    }
                    if (i3 % 2 == 0) {
                        d16 = 0.0d;
                    } else {
                        d16 = 100.0d;
                    }
                    if (i3 < 4) {
                        d22 = ((d5 - (d13 * d15)) - (d14 * d16)) / d12;
                        if (r(d22)) {
                            dArr6 = new double[3];
                            dArr6[0] = d22;
                            dArr6[1] = d15;
                            dArr6[c2] = d16;
                        } else {
                            dArr6 = new double[]{-1.0d, -1.0d, -1.0d};
                        }
                    } else {
                        if (i3 < i2) {
                            d18 = ((d5 - (d12 * d16)) - (d14 * d15)) / d13;
                            if (r(d18)) {
                                dArr7 = new double[3];
                                dArr7[0] = d16;
                                dArr7[1] = d18;
                                dArr7[c2] = d15;
                            } else {
                                dArr6 = new double[]{-1.0d, -1.0d, -1.0d};
                            }
                        } else {
                            d17 = ((d5 - (d12 * d15)) - (d13 * d16)) / d14;
                            if (r(d17)) {
                                dArr7 = new double[3];
                                dArr7[0] = d15;
                                dArr7[1] = d16;
                                dArr7[c2] = d17;
                            } else {
                                dArr6 = new double[]{-1.0d, -1.0d, -1.0d};
                            }
                        }
                        if (dArr7[0] < 0.0d) {
                            d19 = d27;
                        } else {
                            dN3 = n(dArr7);
                            if (!z) {
                                d19 = d27;
                                dArr = dArr7;
                                dArr2 = dArr;
                                d6 = dN3;
                                d7 = d6;
                                z = true;
                            } else {
                                if (i4 == 0) {
                                }
                                d20 = d27;
                                d21 = d6;
                                d6 = d21;
                                d19 = d20;
                                if (d(d21, d20, dN3)) {
                                    dArr2 = dArr7;
                                    d7 = dN3;
                                } else {
                                    dArr = dArr7;
                                    d6 = dN3;
                                }
                                i4 = 0;
                            }
                        }
                        i3++;
                        d27 = d19;
                        i = 1;
                        i2 = 8;
                    }
                    dArr7 = dArr6;
                    if (dArr7[0] < 0.0d) {
                        d19 = d27;
                    } else {
                        dN3 = n(dArr7);
                        if (!z) {
                            d19 = d27;
                            dArr = dArr7;
                            dArr2 = dArr;
                            d6 = dN3;
                            d7 = d6;
                            z = true;
                        } else {
                            if (i4 == 0) {
                            }
                            d20 = d27;
                            d21 = d6;
                            d6 = d21;
                            d19 = d20;
                            if (d(d21, d20, dN3)) {
                                dArr2 = dArr7;
                                d7 = dN3;
                            } else {
                                dArr = dArr7;
                                d6 = dN3;
                            }
                            i4 = 0;
                        }
                    }
                    i3++;
                    d27 = d19;
                    i = 1;
                    i2 = 8;
                }
                d8 = d27;
                double[][] dArr11 = {dArr, dArr2};
                dArr3 = dArr11[0];
                dN = n(dArr3);
                dArr4 = dArr11[1];
                while (i5 < 3) {
                    d9 = dArr3[i5];
                    d10 = dArr4[i5];
                    if (d9 == d10) {
                        if (d9 < d10) {
                            iCeil = (int) Math.floor(K(d9) - 0.5d);
                            dFloor = Math.ceil(K(dArr4[i5]) - 0.5d);
                        } else {
                            iCeil = (int) Math.ceil(K(d9) - 0.5d);
                            dFloor = Math.floor(K(dArr4[i5]) - 0.5d);
                        }
                        i6 = (int) dFloor;
                        while (i7 < 8) {
                            iFloor = (int) Math.floor(((double) (iCeil + i6)) / 2.0d);
                            double d410 = e[iFloor];
                            double d411 = dArr3[i5];
                            double d412 = (d410 - d411) / (dArr4[i5] - d411);
                            double d413 = dArr3[0];
                            double d414 = ((dArr4[0] - d413) * d412) + d413;
                            double d415 = dArr3[1];
                            double d416 = ((dArr4[1] - d415) * d412) + d415;
                            double d417 = dArr3[c2];
                            double d418 = ((dArr4[c2] - d417) * d412) + d417;
                            dArr5 = new double[3];
                            dArr5[0] = d414;
                            dArr5[1] = d416;
                            dArr5[c2] = d418;
                            dN2 = n(dArr5);
                            d11 = dN;
                            if (d(d11, d8, dN2)) {
                                i6 = iFloor;
                                dArr4 = dArr5;
                                dN = d11;
                            } else {
                                iCeil = iFloor;
                                dArr3 = dArr5;
                                dN = dN2;
                            }
                        }
                        dN = dN;
                    }
                }
                double d53 = (dArr3[0] + dArr4[0]) / 2.0d;
                double d54 = (dArr3[1] + dArr4[1]) / 2.0d;
                double d55 = (dArr3[c2] + dArr4[c2]) / 2.0d;
                double[] dArr12 = new double[3];
                dArr12[0] = d53;
                dArr12[1] = d54;
                dArr12[c2] = d55;
                iF2 = ((z85.f(dArr12[0]) & 255) << 16) | (-16777216) | ((z85.f(dArr12[1]) & 255) << 8);
                iF = z85.f(dArr12[c2]) & 255;
            }
        }
        return iF | iF2;
    }

    public static final rc4 G(InputStream inputStream) {
        inputStream.getClass();
        return new rc4(inputStream, new f48());
    }

    public static void H(Activity activity) {
        activity.getClass();
        if (activity instanceof AppListActivity) {
            if (((AppListActivity) activity).b0()) {
                return;
            } else {
                activity.finish();
            }
        }
        boolean zI = ai8.i(activity);
        tb1 tb1Var = tb1.a;
        boolean zM = qb1.m();
        if (zI && zM) {
            I(activity, bt.CLOUD);
            return;
        }
        throw new IllegalStateException("Cloud section opened but Internet access = " + ai8.i(activity) + " & Drive access = " + qb1.m());
    }

    public static void I(Activity activity, bt btVar) {
        activity.getClass();
        btVar.getClass();
        bt btVar2 = bt.CLOUD;
        if (btVar == btVar2) {
            tb1 tb1Var = tb1.a;
            btVar = qb1.m() ? btVar2 : null;
        }
        Intent intent = new Intent(activity, (Class<?>) AppListActivity.class);
        intent.putExtra("KEY_SECTION", btVar);
        activity.startActivity(intent);
    }

    public static final c93 J(File file) {
        List list;
        file.getClass();
        String path = file.getPath();
        path.getClass();
        int iL = l(path);
        String strSubstring = path.substring(0, iL);
        String strSubstring2 = path.substring(iL);
        if (strSubstring2.length() == 0) {
            list = ov2.a;
        } else {
            List listW0 = nq7.w0(strSubstring2, new char[]{File.separatorChar}, 6);
            ArrayList arrayList = new ArrayList(hl1.G0(listW0, 10));
            Iterator it = listW0.iterator();
            while (it.hasNext()) {
                arrayList.add(new File((String) it.next()));
            }
            list = arrayList;
        }
        return new c93(new File(strSubstring), list);
    }

    public static double K(double d2) {
        double d3 = d2 / 100.0d;
        return (d3 <= 0.0031308d ? d3 * 12.92d : (Math.pow(d3, 0.4166666666666667d) * 1.055d) - 0.055d) * 255.0d;
    }

    public static j69 L(d80 d80Var, String str) {
        ly8.h(d80Var);
        if (d80Var instanceof qz3) {
            qz3 qz3Var = (qz3) d80Var;
            return new j69(qz3Var.a, qz3Var.b, "google.com", null, null, str, null, null);
        }
        if (d80Var instanceof u23) {
            return new j69(null, ((u23) d80Var).a, "facebook.com", null, null, str, null, null);
        }
        if (d80Var instanceof sb8) {
            sb8 sb8Var = (sb8) d80Var;
            return new j69(null, sb8Var.a, "twitter.com", sb8Var.b, null, str, null, null);
        }
        if (d80Var instanceof qx3) {
            return new j69(null, ((qx3) d80Var).a, "github.com", null, null, str, null, null);
        }
        if (d80Var instanceof c26) {
            return new j69(null, null, "playgames.google.com", null, ((c26) d80Var).a, str, null, null);
        }
        if (!(d80Var instanceof ua9)) {
            c6.f("Unsupported credential type.");
            return null;
        }
        ua9 ua9Var = (ua9) d80Var;
        j69 j69Var = ua9Var.d;
        return j69Var != null ? j69Var : new j69(ua9Var.b, ua9Var.c, ua9Var.a, ua9Var.f, null, str, ua9Var.e, ua9Var.k);
    }

    public static xr9 M(String str) throws GeneralSecurityException {
        xr9 xr9Var;
        try {
            synchronized (g) {
                try {
                    xr9Var = new xr9(lg7.N(str));
                    byte[] bArrA = rt9.a(10);
                    byte[] bArr = new byte[0];
                    if (!Arrays.equals(bArrA, xr9Var.a(xr9Var.b(bArrA, bArr), bArr))) {
                        throw new KeyStoreException("cannot use Android Keystore: encryption/decryption of non-empty message and empty aad returns an incorrect result");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return xr9Var;
        } catch (IOException e2) {
            throw new GeneralSecurityException(e2);
        }
    }

    public static void N(int i, int i2) {
        String strC;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                strC = xx3.C("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else {
                if (i2 < 0) {
                    c6.f(fz5.j(i2, "negative size: "));
                    return;
                }
                strC = xx3.C("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(strC);
        }
    }

    public static boolean O(String str) {
        synchronized (g) {
            try {
                String strN = lg7.N(str);
                try {
                    KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                    keyStore.load(null);
                    if (keyStore.containsAlias(strN)) {
                        return false;
                    }
                    KeyGenParameterSpec keyGenParameterSpecBuild = new KeyGenParameterSpec.Builder(strN, 3).setKeySize(256).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build();
                    KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
                    keyGenerator.init(keyGenParameterSpecBuild);
                    keyGenerator.generateKey();
                    return true;
                } catch (IOException e2) {
                    throw new GeneralSecurityException(e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void P(int i, int i2, int i3) {
        String strQ;
        if (i < 0 || i2 < i || i2 > i3) {
            if (i < 0 || i > i3) {
                strQ = Q(i, i3, "start index");
            } else {
                strQ = (i2 < 0 || i2 > i3) ? Q(i2, i3, "end index") : xx3.C("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            }
            throw new IndexOutOfBoundsException(strQ);
        }
    }

    public static String Q(int i, int i2, String str) {
        if (i < 0) {
            return xx3.C("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return xx3.C("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        c6.f(fz5.j(i2, "negative size: "));
        return null;
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (bArr2.length != 16) {
            c6.f("AES-CBC IV must be 16 bytes");
            return null;
        }
        if (bArr3.length % 16 != 0) {
            c6.f("AES-CBC plaintext must be block aligned");
            return null;
        }
        Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
        cipher.init(1, new SecretKeySpec(bArr, "AES"), new IvParameterSpec(bArr2));
        cipher.getClass();
        byte[] bArrDoFinal = cipher.doFinal(bArr3);
        bArrDoFinal.getClass();
        return bArrDoFinal;
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        if (bArr2.length % 16 != 0) {
            c6.f("AES-ECB ciphertext must be block aligned");
            return null;
        }
        Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
        cipher.init(2, new SecretKeySpec(bArr, "AES"));
        byte[] bArrDoFinal = cipher.doFinal(bArr2);
        bArrDoFinal.getClass();
        return bArrDoFinal;
    }

    public static byte[] c(byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        bArr.getClass();
        bArr2.getClass();
        if (bArr2.length % 16 != 0) {
            c6.f("AES-ECB plaintext must be block aligned");
            return null;
        }
        Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
        cipher.init(1, new SecretKeySpec(bArr, "AES"));
        byte[] bArrDoFinal = cipher.doFinal(bArr2);
        bArrDoFinal.getClass();
        return bArrDoFinal;
    }

    public static boolean d(double d2, double d3, double d4) {
        return ((d3 - d2) + 25.132741228718345d) % 6.283185307179586d < ((d4 - d2) + 25.132741228718345d) % 6.283185307179586d;
    }

    public static double e(double d2) {
        int i;
        double dPow = Math.pow(Math.abs(d2), 0.42d);
        if (d2 < 0.0d) {
            i = -1;
        } else {
            i = d2 == 0.0d ? 0 : 1;
        }
        return ((((double) i) * 400.0d) * dPow) / (dPow + 27.13d);
    }

    public static final Long j(qj4 qj4Var) {
        Object bn6Var;
        if (qj4Var instanceof fl4) {
            fl4 fl4VarI = qj4Var.i();
            qj4 qj4VarX = fl4VarI.x("correct_offset");
            if (qj4VarX != null) {
                try {
                    bn6Var = Long.valueOf(qj4VarX.l());
                } catch (Throwable th) {
                    bn6Var = new bn6(th);
                }
                return (Long) (bn6Var instanceof bn6 ? null : bn6Var);
            }
            for (Map.Entry entry : (ew4) fl4VarI.a.entrySet()) {
                entry.getClass();
                qj4 qj4Var2 = (qj4) entry.getValue();
                qj4Var2.getClass();
                Long lJ = j(qj4Var2);
                if (lJ != null) {
                    return Long.valueOf(lJ.longValue());
                }
            }
        } else if (qj4Var instanceof xi4) {
            for (qj4 qj4Var3 : qj4Var.g().a) {
                qj4Var3.getClass();
                Long lJ2 = j(qj4Var3);
                if (lJ2 != null) {
                    return Long.valueOf(lJ2.longValue());
                }
            }
        }
        return null;
    }

    public static d17 k(gy6 gy6Var) {
        g17 g17Var;
        int i = gy6Var.a;
        int i2 = gy6Var.b;
        long j = gy6Var.c;
        cy0 cy0Var = gy6Var.d;
        if (cy0Var.equals(oy6.j)) {
            g17Var = new g17("None", 0);
        } else {
            if (!(cy0Var instanceof py6)) {
                q.j();
                return null;
            }
            g17Var = new g17("Zstd", ((py6) cy0Var).j);
        }
        int i3 = gy6Var.e;
        int i4 = gy6Var.f;
        String strName = gy6Var.g.name();
        int i5 = gy6Var.h;
        int i6 = gy6Var.i;
        int i7 = gy6Var.j;
        int i8 = gy6Var.k;
        tz6 tz6Var = gy6Var.l;
        return new d17(i, i2, j, g17Var, i3, i4, strName, i5, i6, i7, i8, new n17(tz6Var.a.name(), tz6Var.b, tz6Var.c, tz6Var.d, tz6Var.e));
    }

    public static final int l(String str) {
        int iG0;
        char c2 = File.separatorChar;
        int iG1 = nq7.g0(c2, 0, 4, str);
        if (iG1 == 0) {
            if (str.length() <= 1 || str.charAt(1) != c2 || (iG0 = nq7.g0(c2, 2, 4, str)) < 0) {
                return 1;
            }
            int iG2 = nq7.g0(c2, iG0 + 1, 4, str);
            return iG2 >= 0 ? iG2 + 1 : str.length();
        }
        if (iG1 > 0 && str.charAt(iG1 - 1) == ':') {
            return iG1 + 1;
        }
        if (iG1 == -1 && nq7.b0(str, ':')) {
            return str.length();
        }
        return 0;
    }

    public static final void m(ox1 ox1Var, Throwable th) {
        if (th instanceof xm2) {
            th = ((xm2) th).a;
        }
        try {
            tb tbVar = (tb) ox1Var.get(lv1.c);
            if (tbVar != null) {
                tbVar.j(th);
            } else {
                x13.y(ox1Var, th);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                yc9.a(runtimeException, th);
                th = runtimeException;
            }
            x13.y(ox1Var, th);
        }
    }

    public static double n(double[] dArr) {
        double[] dArrC = cy0.C(dArr, b);
        double dE = e(dArrC[0]);
        double dE2 = e(dArrC[1]);
        double dE3 = e(dArrC[2]);
        return Math.atan2(((dE + dE2) - (dE3 * 2.0d)) / 9.0d, ((((-12.0d) * dE2) + (dE * 11.0d)) + dE3) / 11.0d);
    }

    public static final void o(short[] sArr) {
        Arrays.fill(sArr, (short) 1024);
    }

    public static double p(double d2) {
        int i;
        double dAbs = Math.abs(d2);
        double dMax = Math.max(0.0d, (27.13d * dAbs) / (400.0d - dAbs));
        if (d2 < 0.0d) {
            i = -1;
        } else {
            i = d2 == 0.0d ? 0 : 1;
        }
        return Math.pow(dMax, 2.380952380952381d) * ((double) i);
    }

    public static boolean r(double d2) {
        return 0.0d <= d2 && d2 <= 100.0d;
    }

    public static final boolean s(LabelParams labelParams) {
        Boolean boolValueOf;
        String string;
        if (labelParams != null) {
            String name = labelParams.getName();
            if (name == null || (string = nq7.H0(name).toString()) == null) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf((string.length() <= 0 || nq7.j0(string) || nq7.Z(string, "  ", false) || uq7.V(string, "_", false) || string.length() > 20) ? false : true);
            }
            if (boolValueOf != null) {
                return boolValueOf.booleanValue();
            }
        }
        return false;
    }

    public static String t(String str, Object... objArr) {
        int iIndexOf;
        StringBuilder sb = new StringBuilder((objArr.length * 16) + str.length());
        int i = 0;
        int i2 = 0;
        while (i < objArr.length && (iIndexOf = str.indexOf("%s", i2)) != -1) {
            sb.append((CharSequence) str, i2, iIndexOf);
            sb.append(u(objArr[i]));
            i2 = iIndexOf + 2;
            i++;
        }
        sb.append((CharSequence) str, i2, str.length());
        if (i < objArr.length) {
            String str2 = " [";
            while (i < objArr.length) {
                sb.append(str2);
                sb.append(u(objArr[i]));
                i++;
                str2 = ", ";
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static String u(Object obj) {
        if (obj == null) {
            return "null";
        }
        try {
            return obj.toString();
        } catch (Exception e2) {
            String str = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
            Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for ".concat(str), (Throwable) e2);
            StringBuilder sbU = dj7.u("<", str, " threw ");
            sbU.append(e2.getClass().getName());
            sbU.append(">");
            return sbU.toString();
        }
    }

    public static dp0 v(ir0 ir0Var, ex5 ex5Var) {
        char[] cArr;
        boolean z;
        String strA;
        boolean z2;
        char c2;
        int i = ex5Var.b;
        int i2 = ex5Var.a;
        int i3 = i;
        loop0: while (true) {
            cArr = a;
            if (i3 >= i2 || (c2 = ((char[]) ir0Var.c)[i3]) == '=') {
                z = false;
                break;
            }
            for (int i4 = 0; i4 < 2; i4++) {
                if (c2 == cArr[i4]) {
                    z = true;
                    break loop0;
                }
            }
            i3++;
        }
        if (i3 == i2) {
            strA = ir0Var.a(i, i2);
            z = true;
        } else {
            strA = ir0Var.a(i, i3);
            i3++;
        }
        if (z) {
            ex5Var.a(i3);
            return new dp0(strA, null);
        }
        int i5 = i3;
        boolean z3 = false;
        boolean z4 = false;
        loop2: while (true) {
            if (i5 >= i2) {
                z2 = z;
                break;
            }
            char c3 = ((char[]) ir0Var.c)[i5];
            if (c3 == '\"' && !z3) {
                z4 = !z4;
            }
            if (!z4 && !z3) {
                for (int i6 = 0; i6 < 2; i6++) {
                    if (c3 == cArr[i6]) {
                        z2 = true;
                        break loop2;
                    }
                }
            }
            z3 = z3 ? false : z4 && c3 == '\\';
            i5++;
        }
        while (i3 < i5 && tu0.o(((char[]) ir0Var.c)[i3])) {
            i3++;
        }
        int i7 = i5;
        while (i7 > i3) {
            if (!tu0.o(((char[]) ir0Var.c)[i7 - 1])) {
                break;
            }
            i7--;
        }
        if (i7 - i3 >= 2) {
            char[] cArr2 = (char[]) ir0Var.c;
            if (cArr2[i3] == '\"' && cArr2[i7 - 1] == '\"') {
                i3++;
                i7--;
            }
        }
        if (i3 < 0) {
            l0.a();
            return null;
        }
        if (i7 > ir0Var.b) {
            l0.a();
            return null;
        }
        if (i3 > i7) {
            l0.a();
            return null;
        }
        String str = new String((char[]) ir0Var.c, i3, i7 - i3);
        if (z2) {
            i5++;
        }
        ex5Var.a(i5);
        return new dp0(strA, str);
    }

    public static void w(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) throws EOFException {
        int iRemaining = byteBuffer.remaining();
        int i = n84.a;
        int iRemaining2 = byteBuffer.remaining();
        while (byteBuffer.remaining() > 0 && -1 != readableByteChannel.read(byteBuffer)) {
        }
        if (iRemaining2 - byteBuffer.remaining() >= iRemaining) {
            return;
        }
        d6.d();
    }

    public static byte[] x(InputStream inputStream, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        long j = i;
        int i2 = n84.a;
        l84 l84VarA = l84.a();
        try {
            byte[] bArr = l84VarA.a;
            if (bArr == null) {
                bArr = (byte[]) ((Object[]) l84.b.get())[1];
            }
            long j2 = 0;
            if (j != 0) {
                int length = bArr.length;
                int iMin = (j <= 0 || j >= ((long) length)) ? length : (int) j;
                while (iMin > 0) {
                    int i3 = inputStream.read(bArr, 0, iMin);
                    if (-1 == i3) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i3);
                    j2 += (long) i3;
                    if (j > 0) {
                        iMin = (int) Math.min(j - j2, length);
                    }
                }
            }
            l84VarA.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            if (l84VarA != null) {
                try {
                    l84VarA.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static byte[] y(ReadableByteChannel readableByteChannel, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(Math.min(i, 8192));
        int i2 = 0;
        while (i2 < i) {
            byteBufferAllocate.limit(Math.min(i - i2, byteBufferAllocate.capacity()));
            int i3 = readableByteChannel.read(byteBufferAllocate);
            if (i3 <= 0) {
                break;
            }
            byteArrayOutputStream.write(byteBufferAllocate.array(), 0, i3);
            byteBufferAllocate.rewind();
            i2 += i3;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static final void z(LabelParams labelParams, String str) {
        if (s(labelParams)) {
            return;
        }
        throw new RuntimeException(str + ": Invalid params: " + labelParams);
    }

    public abstract void B(boolean z);

    public abstract void C(boolean z);

    public abstract Typeface f(Context context, pq3 pq3Var, Resources resources, int i);

    public abstract Typeface g(Context context, sq3[] sq3VarArr, int i);

    public Typeface h(int i, Context context, List list) {
        throw new IllegalStateException("createFromFontInfoWithFallback must only be called on API 29+");
    }

    public abstract Typeface i(Context context, Resources resources, int i, String str);

    public abstract boolean q();
}
