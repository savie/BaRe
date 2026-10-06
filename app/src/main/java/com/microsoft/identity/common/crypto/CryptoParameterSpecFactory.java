package com.microsoft.identity.common.crypto;

import android.content.Context;
import android.os.Build;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.flighting.IFlightsProvider;
import com.microsoft.identity.common.logging.Logger;
import defpackage.el1;
import defpackage.fl1;
import defpackage.gs4;
import defpackage.gv7;
import defpackage.mt3;
import defpackage.nc8;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CryptoParameterSpecFactory {
    private final IFlightsProvider flightsProvider;
    private final LegacyKeyGenSpec keyGenParamSpecLegacy;
    private final gv7 keyGenParamSpecWithPurposeWrapKey$delegate;
    private final gv7 keyGenParamSpecWithoutPurposeWrapKey$delegate;

    /* JADX INFO: renamed from: com.microsoft.identity.common.crypto.CryptoParameterSpecFactory$getPrioritizedKeyGenParameterSpecs$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 extends gs4 implements mt3 {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1(1);

        @Override // defpackage.mt3
        public final Object invoke(Object obj) {
            IKeyGenSpec iKeyGenSpec = (IKeyGenSpec) obj;
            iKeyGenSpec.getClass();
            return iKeyGenSpec.getDescription();
        }
    }

    public CryptoParameterSpecFactory(Context context) {
        IFlightsProvider iFlightsProvider = CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE;
        context.getClass();
        this.flightsProvider = iFlightsProvider;
        String str = "Initialized CryptoParameterSpecFactory - API: " + Build.VERSION.SDK_INT + ", flags: [keySpecWithWrapPurposeKey=" + iFlightsProvider.isFlightEnabled(CommonFlight.ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITH_PURPOSE_WRAP_KEY) + ", keySpecWithoutWrapPurposeKey=" + iFlightsProvider.isFlightEnabled(CommonFlight.ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITHOUT_PURPOSE_WRAP_KEY) + ", oaepSupported=" + iFlightsProvider.isFlightEnabled(CommonFlight.ENABLE_OAEP_WITH_SHA_AND_MGF1_PADDING) + ']';
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("CryptoParameterSpecFactory:init", str);
        this.keyGenParamSpecWithPurposeWrapKey$delegate = new gv7(new CryptoParameterSpecFactory$keyGenParamSpecWithPurposeWrapKey$2(this));
        this.keyGenParamSpecWithoutPurposeWrapKey$delegate = new gv7(new CryptoParameterSpecFactory$keyGenParamSpecWithoutPurposeWrapKey$2(this));
        this.keyGenParamSpecLegacy = new LegacyKeyGenSpec(context, nc8.I("PKCS1Padding"));
    }

    public static final ArrayList access$getEncryptionPaddingsForKeyGen(CryptoParameterSpecFactory cryptoParameterSpecFactory) {
        ArrayList arrayListC0 = fl1.C0("PKCS1Padding");
        if (cryptoParameterSpecFactory.flightsProvider.isFlightEnabled(CommonFlight.ENABLE_OAEP_WITH_SHA_AND_MGF1_PADDING)) {
            arrayListC0.add("OAEPPadding");
        }
        return arrayListC0;
    }

    public final ArrayList getPrioritizedKeyGenParameterSpecs() {
        ArrayList arrayList = new ArrayList();
        int i = Build.VERSION.SDK_INT;
        IFlightsProvider iFlightsProvider = this.flightsProvider;
        if (i >= 28 && iFlightsProvider.isFlightEnabled(CommonFlight.ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITH_PURPOSE_WRAP_KEY)) {
            arrayList.add((KeyGenSpec) this.keyGenParamSpecWithPurposeWrapKey$delegate.getValue());
        }
        if (iFlightsProvider.isFlightEnabled(CommonFlight.ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITHOUT_PURPOSE_WRAP_KEY)) {
            arrayList.add((KeyGenSpec) this.keyGenParamSpecWithoutPurposeWrapKey$delegate.getValue());
        }
        arrayList.add(this.keyGenParamSpecLegacy);
        String strConcat = "Key generation specs: ".concat(el1.Y0(arrayList, null, null, null, AnonymousClass1.INSTANCE, 31));
        int i2 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("CryptoParameterSpecFactory:getPrioritizedKeyGenParameterSpecs", strConcat);
        return arrayList;
    }
}
