package com.google.android.recaptcha.internal;

import android.app.Application;
import android.webkit.WebView;
import com.jcraft.jsch.SftpATTRS;
import defpackage.an1;
import defpackage.be8;
import defpackage.bn1;
import defpackage.el1;
import defpackage.g48;
import defpackage.jd4;
import defpackage.jv1;
import defpackage.l0;
import defpackage.l73;
import defpackage.lg7;
import defpackage.ly8;
import defpackage.os4;
import defpackage.pe4;
import defpackage.yx1;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzja extends zze {
    public an1 zza;
    public zzfo zzb;
    private final zzek zzc;
    private zzsc zzf;
    private final zzek zzj;
    private final os4 zzk;
    private final os4 zzl;
    private final os4 zzm;
    private final os4 zzn;
    private final os4 zzo;
    private zzen zzp;
    private final zzbi zzq;
    private final Map zzd = zzjb.zza();
    private final Map zze = new LinkedHashMap();
    private final zzcb zzg = new zzcb(zzje.zza);
    private final zzjh zzh = zzjh.zzc();
    private final zzij zzi = new zzij(this);

    public zzja(zzek zzekVar, zzbi zzbiVar) {
        this.zzc = zzekVar;
        this.zzq = zzbiVar;
        zzek zzekVarZza = zzekVar.zza();
        zzekVarZza.zzc(zzekVar.zzd());
        this.zzj = zzekVarZza;
        int i = zzav.zza;
        this.zzk = jd4.y(zzis.zza);
        this.zzl = jd4.y(zzit.zza);
        this.zzm = jd4.y(zziu.zza);
        this.zzn = jd4.y(zziv.zza);
        this.zzo = jd4.y(zziw.zza);
    }

    private final Application zzD() {
        return (Application) this.zzo.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzE(zzsc zzscVar, jv1 jv1Var) {
        zzim zzimVar;
        if (jv1Var instanceof zzim) {
            zzimVar = (zzim) jv1Var;
            int i = zzimVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzimVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzimVar = new zzim(this, jv1Var);
            }
        } else {
            zzimVar = new zzim(this, jv1Var);
        }
        Object objZzd = zzimVar.zza;
        int i2 = zzimVar.zzc;
        try {
            if (i2 == 0) {
                lg7.H(objZzd);
                zzff zzffVar = (zzff) this.zzn.getValue();
                zzek zzekVar = this.zzj;
                zzimVar.zzd = this;
                zzimVar.zzc = 1;
                objZzd = zzffVar.zzd(zzscVar, zzekVar, zzimVar);
                yx1 yx1Var = yx1.a;
                if (objZzd == yx1Var) {
                    return yx1Var;
                }
            } else {
                if (i2 != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                this = zzimVar.zzd;
                lg7.H(objZzd);
            }
            l73.v(this.zzq.zzb(), null, new zzin(this, (String) objZzd, null), 3);
        } catch (zzbd e) {
            ((bn1) this.zzA()).Y(e);
        }
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:31:0x0087  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzF(String str, jv1 jv1Var) {
        zzio zzioVar;
        String str2;
        Exception exc;
        zzja zzjaVar;
        zzbd zzbdVar;
        zzen zzenVar;
        if (jv1Var instanceof zzio) {
            zzioVar = (zzio) jv1Var;
            int i = zzioVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzioVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzioVar = new zzio(this, jv1Var);
            }
        } else {
            zzioVar = new zzio(this, jv1Var);
        }
        Object obj = zzioVar.zza;
        int i2 = zzioVar.zzc;
        if (i2 == 0) {
            lg7.H(obj);
            this.zzp = this.zzj.zzf(26);
            try {
                String strZza = ((zzbr) this.zzl.getValue()).zza();
                zzioVar.zzd = this;
                zzioVar.zze = str;
                zzioVar.zzf = strZza;
                zzioVar.zzc = 1;
                Object objZzw = zzw(zzioVar);
                yx1 yx1Var = yx1.a;
                if (objZzw == yx1Var) {
                    return yx1Var;
                }
                str2 = strZza;
                obj = objZzw;
            } catch (Exception e) {
                zzjaVar = this;
                exc = e;
                zzbdVar = new zzbd(zzbb.zzb, zzba.zzU, exc.getMessage());
                zzenVar = zzjaVar.zzp;
                if (zzenVar != null) {
                    zzenVar.zzb(zzbdVar);
                }
                zzjaVar.zzp = null;
                ((bn1) zzjaVar.zzA()).Y(zzbdVar);
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str3 = zzioVar.zzf;
            str = zzioVar.zze;
            zzjaVar = zzioVar.zzd;
            try {
                lg7.H(obj);
                str2 = str3;
                this = zzjaVar;
            } catch (Exception e2) {
                exc = e2;
                zzbdVar = new zzbd(zzbb.zzb, zzba.zzU, exc.getMessage());
                zzenVar = zzjaVar.zzp;
                if (zzenVar != null) {
                    zzenVar.zzb(zzbdVar);
                }
                zzjaVar.zzp = null;
                ((bn1) zzjaVar.zzA()).Y(zzbdVar);
            }
        }
        ((WebView) obj).loadDataWithBaseURL(str2, str, "text/html", "utf-8", null);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzG(String str, jv1 jv1Var) {
        zzix zzixVar;
        zzja zzjaVar;
        String str2;
        if (jv1Var instanceof zzix) {
            zzixVar = (zzix) jv1Var;
            int i = zzixVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzixVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzixVar = new zzix(this, jv1Var);
            }
        } else {
            zzixVar = new zzix(this, jv1Var);
        }
        Object objZzb = zzixVar.zza;
        int i2 = zzixVar.zzc;
        be8 be8Var = be8.a;
        yx1 yx1Var = yx1.a;
        if (i2 == 0) {
            lg7.H(objZzb);
            zzcb zzcbVar = this.zzg;
            zzje[] zzjeVarArr = {zzje.zzd, zzje.zzc, zzje.zzb};
            zzixVar.zzd = this;
            zzixVar.zze = str;
            zzixVar.zzc = 1;
            objZzb = zzcbVar.zzb(zzjeVarArr, zzixVar);
            if (objZzb != yx1Var) {
            }
            return yx1Var;
        }
        if (i2 == 1) {
            str = zzixVar.zze;
            this = zzixVar.zzd;
            lg7.H(objZzb);
        } else {
            if (i2 != 2) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str2 = zzixVar.zze;
            zzjaVar = zzixVar.zzd;
            lg7.H(objZzb);
        }
        zzjaVar.zza = ly8.a();
        zzek zzekVar = zzjaVar.zzj;
        zzekVar.zzc(str2);
        l73.v(zzjaVar.zzq.zza(), null, new zziz(zzjaVar, zzekVar.zzf(42), null), 3);
        return be8Var;
        if (((Boolean) objZzb).booleanValue()) {
            return be8Var;
        }
        zzcb zzcbVar2 = this.zzg;
        zzje zzjeVar = zzje.zzb;
        zzixVar.zzd = this;
        zzixVar.zze = str;
        zzixVar.zzc = 2;
        if (zzcbVar2.zzc(zzjeVar, zzixVar) != yx1Var) {
            String str3 = str;
            zzjaVar = this;
            str2 = str3;
            zzjaVar.zza = ly8.a();
            zzek zzekVar2 = zzjaVar.zzj;
            zzekVar2.zzc(str2);
            l73.v(zzjaVar.zzq.zza(), null, new zziz(zzjaVar, zzekVar2.zzf(42), null), 3);
            return be8Var;
        }
        return yx1Var;
    }

    public static final /* synthetic */ zzfk zzp(zzja zzjaVar) {
        return (zzfk) zzjaVar.zzm.getValue();
    }

    public final an1 zzA() {
        an1 an1Var = this.zza;
        if (an1Var != null) {
            return an1Var;
        }
        return null;
    }

    public final zzft zzC(zzsc zzscVar, zzcg zzcgVar, WebView webView) {
        zzfw zzfwVar = new zzfw(webView, this.zzq.zzb());
        zzhy zzhyVar = new zzhy();
        zzhyVar.zzb(el1.w1(zzscVar.zzP()));
        zzgf zzgfVar = new zzgf(zzfwVar, zzcgVar, new zzbo());
        zzhz zzhzVar = new zzhz(zzhyVar, new zzhw());
        zzgfVar.zze(3, zzD());
        zzgfVar.zze(5, zzig.zza());
        zzgfVar.zze(6, new zzia(zzD()));
        zzgfVar.zze(7, new zzic());
        zzgfVar.zze(8, new zzii(zzD()));
        zzgfVar.zze(9, new zzid(zzD()));
        zzgfVar.zze(10, new zzib(zzD()));
        return new zzft(this.zzq.zzd(), zzgfVar, zzhzVar, zzfn.zza());
    }

    @Override // com.google.android.recaptcha.internal.zze
    public final zzen zza(String str) {
        zzek zzekVar = this.zzc;
        zzekVar.zzc(str);
        return zzekVar.zzf(33);
    }

    @Override // com.google.android.recaptcha.internal.zze
    public final zzen zzb() {
        zzek zzekVar = this.zzc;
        zzekVar.zzc(zzekVar.zzd());
        return zzekVar.zzf(32);
    }

    @Override // com.google.android.recaptcha.internal.zze
    public final Object zzd(String str, jv1 jv1Var) {
        zzsh zzshVarZzf = zzsi.zzf();
        zzshVarZzf.zze(str);
        return zzshVarZzf.zzk();
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b4 A[Catch: Exception -> 0x0039, PHI: r10 r11
      0x00b4: PHI (r10v10 ??) = (r10v24 ??), (r10v25 ??), (r10v26 ??) binds: [B:38:0x00a6, B:40:0x00b2, B:25:0x004b] A[DONT_GENERATE, DONT_INLINE]
      0x00b4: PHI (r11v8 ??) = (r11v20 ??), (r11v21 ??), (r11v22 ??) binds: [B:38:0x00a6, B:40:0x00b2, B:25:0x004b] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {Exception -> 0x0039, blocks: (B:16:0x0034, B:45:0x0104, B:23:0x0046, B:43:0x00c6, B:41:0x00b4), top: B:53:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00c6 A[Catch: Exception -> 0x0039, PHI: r10 r11
      0x00c6: PHI (r10v11 ??) = (r10v22 ??), (r10v23 ??) binds: [B:42:0x00c4, B:23:0x0046] A[DONT_GENERATE, DONT_INLINE]
      0x00c6: PHI (r11v9 ??) = (r11v18 ??), (r11v19 ??) binds: [B:42:0x00c4, B:23:0x0046] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {Exception -> 0x0039, blocks: (B:16:0x0034, B:45:0x0104, B:23:0x0046, B:43:0x00c6, B:41:0x00b4), top: B:53:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0102, code lost:
    
        if (r12 != r8) goto L45;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.recaptcha.internal.zzmx, com.google.android.recaptcha.internal.zzsh] */
    /* JADX WARN: Type inference failed for: r10v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v11, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v9, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v1, types: [com.google.android.recaptcha.internal.zzja] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7, types: [com.google.android.recaptcha.internal.zzja] */
    /* JADX WARN: Type inference failed for: r11v8, types: [com.google.android.recaptcha.internal.zzja] */
    /* JADX WARN: Type inference failed for: r11v9, types: [com.google.android.recaptcha.internal.zzja] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.recaptcha.internal.zzmx, com.google.android.recaptcha.internal.zztp] */
    /* JADX WARN: Type inference failed for: r9v0 */
    @Override // com.google.android.recaptcha.internal.zze
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzf(java.lang.String r11, defpackage.jv1 r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzja.zzf(java.lang.String, jv1):java.lang.Object");
    }

    @Override // com.google.android.recaptcha.internal.zze
    public final Object zzg(zzbd zzbdVar, jv1 jv1Var) {
        if (pe4.d(zzbdVar.zza(), zzba.zzb)) {
            zzen zzenVar = this.zzp;
            if (zzenVar != null) {
                zzenVar.zzb(zzbdVar);
            }
            this.zzp = null;
        }
        return be8.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0059, code lost:
    
        if (zzG(r6, r0) != r1) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0068, code lost:
    
        if (r5.zzc(r6, r0) == r1) goto L29;
     */
    @Override // com.google.android.recaptcha.internal.zze
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzh(com.google.android.recaptcha.internal.zzsc r6, defpackage.jv1 r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.google.android.recaptcha.internal.zzir
            if (r0 == 0) goto L13
            r0 = r7
            com.google.android.recaptcha.internal.zzir r0 = (com.google.android.recaptcha.internal.zzir) r0
            int r1 = r0.zzc
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzc = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzir r0 = new com.google.android.recaptcha.internal.zzir
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.zza
            int r1 = r0.zzc
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L33
            if (r1 == r4) goto L2f
            if (r1 != r3) goto L29
            defpackage.lg7.H(r7)
            goto L5b
        L29:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r5)
            return r2
        L2f:
            defpackage.lg7.H(r7)
            goto L6b
        L33:
            defpackage.lg7.H(r7)
            boolean r7 = r6.zzT()
            yx1 r1 = defpackage.yx1.a
            if (r7 == 0) goto L5e
            boolean r7 = r6.zzR()
            if (r7 == 0) goto L5e
            boolean r7 = r6.zzQ()
            if (r7 != 0) goto L4b
            goto L5e
        L4b:
            r5.zzf = r6
            com.google.android.recaptcha.internal.zzek r6 = r5.zzc
            java.lang.String r6 = r6.zzd()
            r0.zzc = r3
            java.lang.Object r5 = r5.zzG(r6, r0)
            if (r5 == r1) goto L6a
        L5b:
            be8 r5 = defpackage.be8.a
            return r5
        L5e:
            com.google.android.recaptcha.internal.zzcb r5 = r5.zzg
            com.google.android.recaptcha.internal.zzje r6 = com.google.android.recaptcha.internal.zzje.zzd
            r0.zzc = r4
            java.lang.Object r5 = r5.zzc(r6, r0)
            if (r5 != r1) goto L6b
        L6a:
            return r1
        L6b:
            com.google.android.recaptcha.internal.zzbd r5 = new com.google.android.recaptcha.internal.zzbd
            com.google.android.recaptcha.internal.zzbb r6 = com.google.android.recaptcha.internal.zzbb.zzb
            com.google.android.recaptcha.internal.zzba r7 = com.google.android.recaptcha.internal.zzba.zzav
            r5.<init>(r6, r7, r2)
            bn6 r6 = new bn6
            r6.<init>(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzja.zzh(com.google.android.recaptcha.internal.zzsc, jv1):java.lang.Object");
    }

    @Override // com.google.android.recaptcha.internal.zze
    public final Object zzi(String str, long j, Exception exc, jv1 jv1Var) {
        exc.getMessage();
        an1 an1Var = (an1) this.zze.remove(str);
        if (an1Var != null) {
            ((bn1) an1Var).Y(exc);
        }
        return be8.a;
    }

    @Override // com.google.android.recaptcha.internal.zze
    public final Object zzj(Exception exc, jv1 jv1Var) {
        return ((exc instanceof g48) && this.zzi.zza() == null) ? new zzbd(zzbb.zzc, zzba.zzH, null) : zzf.zza(exc, new zzbd(zzbb.zzb, zzba.zzV, exc.getMessage()));
    }

    public final zzcb zzm() {
        return this.zzg;
    }

    public final zzij zzq() {
        return this.zzi;
    }

    public final Object zzw(jv1 jv1Var) {
        return l73.G(this.zzq.zzb().d(), new zzjc((zzjd) this.zzk.getValue(), zzD(), null), jv1Var);
    }

    public final Object zzx(jv1 jv1Var) throws Throwable {
        Object objG = l73.G(this.zzq.zzb().d(), new zzil(this, null), jv1Var);
        return objG == yx1.a ? objG : be8.a;
    }
}
