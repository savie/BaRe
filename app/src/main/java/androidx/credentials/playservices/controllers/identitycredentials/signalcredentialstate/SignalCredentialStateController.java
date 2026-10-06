package androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate;

import android.content.Context;
import android.os.CancellationSignal;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import defpackage.av1;
import defpackage.be8;
import defpackage.cm1;
import defpackage.e6;
import defpackage.is;
import defpackage.lh6;
import defpackage.mf7;
import defpackage.nq7;
import defpackage.of7;
import defpackage.p12;
import defpackage.pf7;
import defpackage.qf7;
import defpackage.r75;
import defpackage.re;
import defpackage.rf7;
import defpackage.sf7;
import defpackage.t22;
import defpackage.u75;
import defpackage.uq7;
import java.util.concurrent.Executor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SignalCredentialStateController extends CredentialProviderController<pf7, of7, qf7, rf7, cm1> {
    public static final Companion Companion = new Companion(null);
    public static final long MAX_RETRY_TIME = 600000;
    public static final String RATE_LIMIT_EXCEPTION_MESSAGE_MATCHER = "called too frequently";
    public static final String SIGNAL_REQUEST_JSON_KEY = "androidx.credentials.signal_request_json_key";
    private final Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignalCredentialStateController(Context context) {
        super(context);
        context.getClass();
        this.context = context;
    }

    public static final SignalCredentialStateController getInstance(Context context) {
        return Companion.getInstance(context);
    }

    private static final be8 invokePlayServices$lambda$0(Executor executor, SignalCredentialStateController signalCredentialStateController, t22 t22Var, qf7 qf7Var) {
        be8 be8Var = be8.a;
        if (qf7Var == null) {
            executor.execute(new is(t22Var, 10));
            return be8Var;
        }
        executor.execute(new av1(4, t22Var, signalCredentialStateController.convertResponseToCredentialManager(qf7Var)));
        return be8Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$0(t22 t22Var) {
        int i = cm1.a;
        t22Var.onError(new sf7("androidx.credentials.SignalCredentialStateException.TYPE_UNKNOWN", "No SignalCredentialStateResponse received"));
    }

    private static final void invokePlayServices$lambda$2(Executor executor, t22 t22Var, Exception exc) {
        String message;
        exc.getClass();
        lh6 lh6Var = new lh6();
        int i = cm1.a;
        lh6Var.a = new sf7("androidx.credentials.SignalCredentialStateException.TYPE_UNKNOWN", exc.getMessage());
        if ((exc instanceof re) && ((re) exc).getStatusCode() == 16 && (message = exc.getMessage()) != null && nq7.Z(message, RATE_LIMIT_EXCEPTION_MESSAGE_MATCHER, false)) {
            Companion.parseRefillMinutesRegex(exc.getMessage());
            lh6Var.a = new mf7("androidx.credentials.SignalCredentialStateException.RATE_LIMIT_EXCEEDED", exc.getMessage());
        }
        executor.execute(new p12(6, t22Var, lh6Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2$0(t22 t22Var, lh6 lh6Var) {
        t22Var.onError(lh6Var.a);
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public /* synthetic */ of7 convertRequestToPlayServices(pf7 pf7Var) {
        if (pf7Var == null) {
            return convertRequestToPlayServices2((pf7) null);
        }
        e6.d();
        return null;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public rf7 convertResponseToCredentialManager(qf7 qf7Var) {
        qf7Var.getClass();
        return new rf7();
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public /* synthetic */ void invokePlayServices(pf7 pf7Var, t22 t22Var, Executor executor, CancellationSignal cancellationSignal) {
        if (pf7Var == null) {
            invokePlayServices2((pf7) null, t22Var, executor, cancellationSignal);
        } else {
            e6.d();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SignalCredentialStateController getInstance(Context context) {
            context.getClass();
            return new SignalCredentialStateController(context);
        }

        public final long parseRefillMinutesRegex(String str) {
            r75 r75VarE;
            Integer numW;
            if (str == null) {
                return SignalCredentialStateController.MAX_RETRY_TIME;
            }
            Pattern patternCompile = Pattern.compile("^SignalCredentialState has been called too frequently\\. Please retry later after (\\d+) minutes\\.$");
            patternCompile.getClass();
            Matcher matcher = patternCompile.matcher(str);
            matcher.getClass();
            u75 u75Var = !matcher.find(0) ? null : new u75(matcher, str);
            return (u75Var == null || (r75VarE = u75Var.c.e(1)) == null || (numW = uq7.W(10, r75VarE.a)) == null) ? SignalCredentialStateController.MAX_RETRY_TIME : numW.intValue();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: invokePlayServices, reason: avoid collision after fix types in other method */
    public void invokePlayServices2(pf7 pf7Var, t22 t22Var, Executor executor, CancellationSignal cancellationSignal) {
        throw null;
    }

    /* JADX INFO: renamed from: convertRequestToPlayServices, reason: avoid collision after fix types in other method */
    public of7 convertRequestToPlayServices2(pf7 pf7Var) {
        throw null;
    }
}
