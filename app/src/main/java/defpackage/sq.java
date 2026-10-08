package defpackage;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.appinfo.AppInfoActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sq extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ ji b;
    public final /* synthetic */ AppInfoActivity c;
    public final /* synthetic */ int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sq(ji jiVar, AppInfoActivity appInfoActivity, int i, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = jiVar;
        this.c = appInfoActivity;
        this.d = i;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new sq(this.b, this.c, this.d, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((sq) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            ji jiVar = this.b;
            uq uqVar = new uq("Name: ", jiVar.getName());
            uq uqVar2 = new uq("Package: ", jiVar.getPackageName());
            uq uqVar3 = new uq("Version: ", jiVar.getVersionName() + " (" + jiVar.getVersionCode() + ")");
            String sourceDir = jiVar.getSourceDir();
            if (sourceDir == null) {
                sourceDir = "";
            }
            uq uqVar4 = new uq("App location: ", sourceDir);
            String dataDir = jiVar.getDataDir();
            final ArrayList arrayListC0 = fl1.C0(uqVar, uqVar2, uqVar3, uqVar4, new uq("Data location: ", dataDir != null ? dataDir : ""));
            List<String> splitSourceDirs = jiVar.getSplitSourceDirs();
            if (splitSourceDirs != null && !splitSourceDirs.isEmpty()) {
                int size = splitSourceDirs.size();
                ArrayList arrayList = new ArrayList(hl1.G0(splitSourceDirs, 10));
                int i2 = 0;
                for (Object obj2 : splitSourceDirs) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        fl1.F0();
                        throw null;
                    }
                    arrayList.add(i3 + ". " + ((String) obj2));
                    i2 = i3;
                }
                arrayListC0.add(new uq(size + " Split APKs\n", el1.Y0(arrayList, "\n", null, null, null, 62)));
            }
            if (jiVar.isInstalled()) {
                g00 g00Var = g00.a;
                arrayListC0.add(new uq("UID: ", String.valueOf(g00.n(jiVar.getPackageName()))));
            }
            zn4 zn4Var = zn4.a;
            final AppInfoActivity appInfoActivity = this.c;
            final int i4 = this.d;
            bt3 bt3Var = new bt3() { // from class: rq
                @Override // defpackage.bt3
                public final Object invoke() {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    for (uq uqVar5 : arrayListC0) {
                        StyleSpan styleSpan = new StyleSpan(1);
                        int length = spannableStringBuilder.length();
                        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(i4);
                        int length2 = spannableStringBuilder.length();
                        spannableStringBuilder.append((CharSequence) uqVar5.a);
                        spannableStringBuilder.setSpan(foregroundColorSpan, length2, spannableStringBuilder.length(), 17);
                        spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 17);
                        spannableStringBuilder.append((CharSequence) uqVar5.b);
                        spannableStringBuilder.append((CharSequence) "\n\n");
                    }
                    int i5 = AppInfoActivity.M;
                    ((tq) appInfoActivity.K.getValue()).c.setText(spannableStringBuilder);
                    return be8.a;
                }
            };
            this.a = 1;
            Object objG = zn4.g(bt3Var, this);
            yx1 yx1Var = yx1.a;
            if (objG == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        return be8.a;
    }
}
