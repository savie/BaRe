package defpackage;

import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ds4 extends ws7 implements qt3 {
    public final /* synthetic */ int a = 0;
    public /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ds4(fs4 fs4Var, qo0 qo0Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = fs4Var;
        this.c = qo0Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return new ds4((fs4) this.b, (qo0) obj2, jv1Var);
            default:
                ds4 ds4Var = new ds4((kd7) obj2, jv1Var);
                ds4Var.b = obj;
                return ds4Var;
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                ((ds4) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                return be8Var;
            default:
                return ((ds4) create((q87) obj, (jv1) obj2)).invokeSuspend(be8Var);
        }
    }

    /* JADX WARN: Code duplicated, block: B:95:0x035f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16, types: [java.lang.Iterable, java.util.List] */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v30, types: [java.util.AbstractCollection, java.util.ArrayList] */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        List listN1;
        ArrayList<q63> arrayList;
        ?? arrayList2;
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                lg7.H(obj);
                fs4 fs4Var = (fs4) this.b;
                SettingsDetailActivity settingsDetailActivityQ = fs4Var.q();
                settingsDetailActivityQ.getClass();
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                Iterator it = yn7.a().iterator();
                while (it.hasNext()) {
                    zn7 zn7Var = (zn7) it.next();
                    String strValueOf = String.valueOf(zn7Var);
                    spannableStringBuilder.append((CharSequence) (uq7.R(20, "-") + "\n"));
                    RelativeSizeSpan relativeSizeSpan = new RelativeSizeSpan(1.25f);
                    int length = spannableStringBuilder.length();
                    StyleSpan styleSpan = new StyleSpan(1);
                    int length2 = spannableStringBuilder.length();
                    ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(sz8.x(settingsDetailActivityQ));
                    int length3 = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) strValueOf);
                    Object obj3 = obj2;
                    spannableStringBuilder.setSpan(foregroundColorSpan, length3, spannableStringBuilder.length(), 17);
                    spannableStringBuilder.setSpan(styleSpan, length2, spannableStringBuilder.length(), 17);
                    spannableStringBuilder.setSpan(relativeSizeSpan, length, spannableStringBuilder.length(), 17);
                    String str = ry5.u;
                    String strD = qy5.d(zn7Var);
                    spannableStringBuilder.append((CharSequence) ("\n" + strD + "\n\n"));
                    String strP = new q63(qy5.f(false, null).c, 1).p();
                    ArrayList arrayListB = new q63(strD, "accounts", 1).B();
                    if (arrayListB != null) {
                        ArrayList arrayList3 = new ArrayList();
                        for (Object obj4 : arrayListB) {
                            if (((q63) obj4).x()) {
                                arrayList3.add(obj4);
                            }
                        }
                        listN1 = el1.n1(arrayList3, new uk0(strP, 0));
                    } else {
                        listN1 = null;
                    }
                    RelativeSizeSpan relativeSizeSpan2 = new RelativeSizeSpan(1.25f);
                    int length4 = spannableStringBuilder.length();
                    StyleSpan styleSpan2 = new StyleSpan(1);
                    int length5 = spannableStringBuilder.length();
                    ov2 ov2Var = ov2.a;
                    spannableStringBuilder.append((CharSequence) ((listN1 == null ? ov2Var : listN1).size() + " Account(s)"));
                    spannableStringBuilder.setSpan(styleSpan2, length5, spannableStringBuilder.length(), 17);
                    spannableStringBuilder.setSpan(relativeSizeSpan2, length4, spannableStringBuilder.length(), 17);
                    if (listN1 != null && !listN1.isEmpty()) {
                        Iterator it2 = listN1.iterator();
                        int i2 = 0;
                        while (it2.hasNext()) {
                            int i3 = i2 + 1;
                            q63 q63Var = (q63) it2.next();
                            if (i2 > 0) {
                                spannableStringBuilder.append((CharSequence) "\n");
                            }
                            boolean zEquals = q63Var.p().equals(strP);
                            String str2 = ry5.u;
                            d45 d45Var = d45.b;
                            boolean zEquals2 = q63Var.p().equals(qy5.e(b45.a()));
                            boolean z = zEquals2 && !q63Var.p().equals("8690a48a4fcc72f1");
                            String strY0 = el1.Y0(x50.p0(new String[]{zEquals2 ? "Anonymous" : "Google", zEquals ? "Current account" : null}), null, null, null, null, 63);
                            spannableStringBuilder.append((CharSequence) "\n");
                            StringBuilder sb = new StringBuilder();
                            Iterator it3 = it2;
                            sb.append(q63Var.p() + " (" + strY0 + ")");
                            if (z) {
                                sb.append(" 🔴");
                            }
                            String string = sb.toString();
                            if (zEquals) {
                                ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(settingsDetailActivityQ.getColor(R.color.grn));
                                int length6 = spannableStringBuilder.length();
                                UnderlineSpan underlineSpan = new UnderlineSpan();
                                int length7 = spannableStringBuilder.length();
                                StyleSpan styleSpan3 = new StyleSpan(1);
                                int length8 = spannableStringBuilder.length();
                                spannableStringBuilder.append((CharSequence) string);
                                spannableStringBuilder.setSpan(styleSpan3, length8, spannableStringBuilder.length(), 17);
                                spannableStringBuilder.setSpan(underlineSpan, length7, spannableStringBuilder.length(), 17);
                                spannableStringBuilder.setSpan(foregroundColorSpan2, length6, spannableStringBuilder.length(), 17);
                            } else {
                                UnderlineSpan underlineSpan2 = new UnderlineSpan();
                                int length9 = spannableStringBuilder.length();
                                StyleSpan styleSpan4 = new StyleSpan(1);
                                int length10 = spannableStringBuilder.length();
                                spannableStringBuilder.append((CharSequence) string);
                                spannableStringBuilder.setSpan(styleSpan4, length10, spannableStringBuilder.length(), 17);
                                spannableStringBuilder.setSpan(underlineSpan2, length9, spannableStringBuilder.length(), 17);
                            }
                            spannableStringBuilder.append((CharSequence) "\n");
                            ArrayList arrayListB2 = q63Var.J("/backups/apps/local/").B();
                            if (arrayListB2 != null) {
                                arrayList = new ArrayList();
                                for (Object obj5 : arrayListB2) {
                                    if (((q63) obj5).x()) {
                                        arrayList.add(obj5);
                                    }
                                }
                            } else {
                                arrayList = null;
                            }
                            if (arrayList != null) {
                                ArrayList arrayList4 = new ArrayList();
                                for (q63 q63Var2 : arrayList) {
                                    Parcelable.Creator<hk> creator = hk.CREATOR;
                                    List listB = fk.b(q63Var2.p());
                                    if (listB != null) {
                                        arrayList4.add(listB);
                                    }
                                }
                                arrayList2 = new ArrayList();
                                Iterator it4 = arrayList4.iterator();
                                while (it4.hasNext()) {
                                    el1.K0((Iterable) it4.next(), arrayList2);
                                }
                            } else {
                                arrayList2 = 0;
                            }
                            if (arrayList2 == 0) {
                                arrayList2 = ov2Var;
                            }
                            ArrayList<q63> arrayList5 = new ArrayList();
                            Iterator it5 = arrayList2.iterator();
                            while (it5.hasNext()) {
                                q63 q63VarV = ((hk) it5.next()).v();
                                if (!q63VarV.j()) {
                                    q63VarV = null;
                                }
                                if (q63VarV != null) {
                                    arrayList5.add(q63VarV);
                                }
                            }
                            if (arrayList == null || arrayList.isEmpty()) {
                                spannableStringBuilder.append((CharSequence) Const.t(sz8.A(settingsDetailActivityQ), settingsDetailActivityQ, "- No metadata xml files"));
                            } else {
                                spannableStringBuilder.append((CharSequence) Const.t(sz8.A(settingsDetailActivityQ), settingsDetailActivityQ, el1.Y0(x50.p0(new String[]{dj7.j("- ", arrayList.size(), " package directories with total ", " backups", arrayList2.size()), xs1.h(arrayList5.size(), "- ", " metadata xml files"), !zEquals ? "- Sign-in with this account needed to read the metadata files" : null}), "\n", null, null, null, 62)));
                                if (zEquals) {
                                    spannableStringBuilder.append((CharSequence) "\n");
                                    int i4 = 0;
                                    int i5 = 0;
                                    int i6 = 0;
                                    for (q63 q63Var3 : arrayList5) {
                                        try {
                                            if (cu.c(q63Var3) != null) {
                                                i4++;
                                            }
                                        } catch (bu e) {
                                            vr6.e$default(vr6.INSTANCE, "BackupsScanHelper", "Error while reading metadata at " + q63Var3 + ": " + io4.b(e), null, 4, null);
                                            if ((e instanceof yt) || (e instanceof zt)) {
                                                i5++;
                                            } else {
                                                if (!(e instanceof au)) {
                                                    q.j();
                                                    return null;
                                                }
                                                i6++;
                                            }
                                        } catch (Exception e2) {
                                            vr6.e$default(vr6.INSTANCE, "BackupsScanHelper", "Error while reading metadata at " + q63Var3 + ": " + io4.b(e2), null, 4, null);
                                            i5++;
                                        }
                                    }
                                    if (i4 > 0) {
                                        spannableStringBuilder.append((CharSequence) Const.t(sz8.A(settingsDetailActivityQ), settingsDetailActivityQ, xs1.h(i4, "- ", " readable metadata files")));
                                    }
                                    String strH = xs1.h(i5, "- Failed reading ", " metadata files");
                                    if (i5 <= 0) {
                                        strH = null;
                                    }
                                    String strH2 = xs1.h(i6, "- ", " metadata files belong to some other user account");
                                    if (i6 <= 0) {
                                        strH2 = null;
                                    }
                                    String strY1 = el1.Y0(x50.p0(new String[]{strH, strH2}), "\n", null, null, null, 62);
                                    if (strY1.length() > 0) {
                                        spannableStringBuilder.append((CharSequence) "\n");
                                        ForegroundColorSpan foregroundColorSpan3 = new ForegroundColorSpan(sz8.r(settingsDetailActivityQ));
                                        int length11 = spannableStringBuilder.length();
                                        spannableStringBuilder.append((CharSequence) Const.t(sz8.A(settingsDetailActivityQ), settingsDetailActivityQ, strY1));
                                        spannableStringBuilder.setSpan(foregroundColorSpan3, length11, spannableStringBuilder.length(), 17);
                                    }
                                }
                            }
                            it2 = it3;
                            strP = strP;
                            it = it;
                            i2 = i3;
                        }
                    }
                    spannableStringBuilder.append((CharSequence) "\n\n");
                    obj2 = obj3;
                    it = it;
                }
                Object obj6 = obj2;
                CharSequence charSequenceH0 = nq7.H0(new SpannedString(spannableStringBuilder));
                zn4 zn4Var = zn4.a;
                zn4.e(new oj(6, fs4Var, (qo0) obj6, charSequenceH0));
                return be8.a;
            default:
                lg7.H(obj);
                q87 q87Var = (q87) this.b;
                ((kd7) obj2).d.getClass();
                return q87.a(q87Var, null, a48.a(), null, 5);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ds4(kd7 kd7Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = kd7Var;
    }
}
