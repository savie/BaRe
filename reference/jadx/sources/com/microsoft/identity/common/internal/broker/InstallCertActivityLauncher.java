package com.microsoft.identity.common.internal.broker;

import android.content.Intent;
import android.os.Bundle;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.java.util.ported.LocalBroadcaster;
import com.microsoft.identity.common.java.util.ported.PropertyBag;
import defpackage.g9;
import defpackage.hb;
import defpackage.m9;
import defpackage.t9;
import defpackage.zm;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class InstallCertActivityLauncher extends zm {
    final t9 installCertActivityResultLauncher;
    private Intent mInstallCertificateIntent;
    private Boolean mInstallCertificateIntentStarted;
    private Boolean mInstallCertificateResultReceived;

    public InstallCertActivityLauncher() {
        Boolean bool = Boolean.FALSE;
        this.mInstallCertificateIntentStarted = bool;
        this.mInstallCertificateResultReceived = bool;
        this.installCertActivityResultLauncher = (t9) registerForActivityResult(new hb(this, 5), new m9(0));
    }

    public static void n(InstallCertActivityLauncher installCertActivityLauncher, g9 g9Var) {
        PropertyBag propertyBag;
        Logger.info("InstallCertActivityLauncher#installCertActivityResultLauncher", "Result received from Broker, Result code: " + g9Var.a);
        Intent intent = g9Var.b;
        if (intent == null || intent.getExtras() == null) {
            Logger.error(null, "InstallCertActivityLauncher#installCertActivityResultLauncher", "Certificate installation failed with an empty response");
            propertyBag = new PropertyBag();
        } else {
            propertyBag = PropertyBagUtil.fromBundle(intent.getExtras());
        }
        installCertActivityLauncher.mInstallCertificateResultReceived = Boolean.TRUE;
        LocalBroadcaster.INSTANCE.broadcast("install_cert_broadcast_alias", propertyBag);
        installCertActivityLauncher.finish();
    }

    @Override // androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.mInstallCertificateIntent = (Intent) bundle.getParcelable("install_cert_intent");
            this.mInstallCertificateIntentStarted = Boolean.valueOf(bundle.getBoolean("broker_intent_started"));
            return;
        }
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.mInstallCertificateIntent = (Intent) extras.getParcelable("install_cert_intent");
        } else {
            Logger.warn("InstallCertActivityLauncher:onCreate", "Extras is null.");
        }
    }

    @Override // defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        if (!this.mInstallCertificateResultReceived.booleanValue()) {
            Logger.error(null, "InstallCertActivityLauncher", "The activity is killed unexpectedly.");
            LocalBroadcaster.INSTANCE.broadcast("install_cert_broadcast_alias", new PropertyBag());
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.mInstallCertificateIntentStarted.booleanValue()) {
            return;
        }
        this.mInstallCertificateIntentStarted = Boolean.TRUE;
        this.installCertActivityResultLauncher.a(this.mInstallCertificateIntent);
    }

    @Override // defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("install_cert_intent", this.mInstallCertificateIntent);
        bundle.putBoolean("broker_intent_started", this.mInstallCertificateIntentStarted.booleanValue());
    }
}
