package androidx.credentials.playservices.controllers.identityauth.beginsignin;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.PublicKeyCredentialControllerUtility;
import defpackage.iw3;
import defpackage.ly8;
import defpackage.sp0;
import defpackage.tp0;
import defpackage.up0;
import defpackage.vp0;
import defpackage.w22;
import defpackage.wp0;
import defpackage.ww3;
import defpackage.zv3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BeginSignInControllerUtility {
    private static final long AUTH_MIN_VERSION_JSON_PARSING = 231815000;
    private static final long AUTH_MIN_VERSION_PREFER_IMME_CRED = 241217000;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "BeginSignInUtility";

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final sp0 convertToGoogleIdTokenOption(iw3 iw3Var) {
            throw null;
        }

        private final long determineDeviceGMSVersionCode(Context context) {
            PackageManager packageManager = context.getPackageManager();
            packageManager.getClass();
            return packageManager.getPackageInfo("com.google.android.gms", 0).versionCode;
        }

        private final boolean needsBackwardsCompatibleRequest(long j) {
            return j < BeginSignInControllerUtility.AUTH_MIN_VERSION_JSON_PARSING;
        }

        public final wp0 constructBeginSignInRequest$credentials_play_services_auth(zv3 zv3Var, Context context) throws JSONException {
            zv3Var.getClass();
            context.getClass();
            vp0 vp0Var = new vp0(false);
            sp0 sp0Var = new sp0(false, null, null, true, null, null, false, null, null);
            up0 up0Var = new up0(false, null, null);
            tp0 tp0Var = new tp0(null, false);
            long jDetermineDeviceGMSVersionCode = determineDeviceGMSVersionCode(context);
            boolean z = false;
            for (w22 w22Var : zv3Var.a) {
                if ((w22Var instanceof ww3) && !z) {
                    if (needsBackwardsCompatibleRequest(jDetermineDeviceGMSVersionCode)) {
                        up0Var = PublicKeyCredentialControllerUtility.Companion.convertToPlayAuthPasskeyRequest((ww3) w22Var);
                        ly8.h(up0Var);
                    } else {
                        tp0 tp0VarConvertToPlayAuthPasskeyJsonRequest = PublicKeyCredentialControllerUtility.Companion.convertToPlayAuthPasskeyJsonRequest((ww3) w22Var);
                        ly8.h(tp0VarConvertToPlayAuthPasskeyJsonRequest);
                        tp0Var = tp0VarConvertToPlayAuthPasskeyJsonRequest;
                    }
                    z = true;
                }
            }
            return new wp0(vp0Var, sp0Var, null, false, 0, up0Var, tp0Var, jDetermineDeviceGMSVersionCode > BeginSignInControllerUtility.AUTH_MIN_VERSION_PREFER_IMME_CRED ? zv3Var.b : false);
        }

        private Companion() {
        }
    }
}
