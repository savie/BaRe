package com.microsoft.identity.common.components;

import android.content.Context;
import com.microsoft.identity.common.internal.platform.AndroidDevicePopManager;
import com.microsoft.identity.common.java.crypto.IDevicePopManager;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.interfaces.IPopManagerSupplier;
import defpackage.f6;
import java.io.IOException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidPopManagerSupplier implements IPopManagerSupplier {
    private final Context mContext;

    public AndroidPopManagerSupplier(Context context) {
        if (context != null) {
            this.mContext = context;
        } else {
            f6.n("mContext is marked non-null but is null");
            throw null;
        }
    }

    @Override // com.microsoft.identity.common.java.interfaces.IPopManagerSupplier
    public final IDevicePopManager getDevicePopManager() throws ClientException {
        String str;
        try {
            return new AndroidDevicePopManager(this.mContext, "microsoft-device-pop");
        } catch (IOException e) {
            e = e;
            str = "io_error";
            throw new ClientException(str, "Failed to initialize DevicePoPManager = " + e.getMessage(), e);
        } catch (KeyStoreException e2) {
            e = e2;
            str = "keystore_not_initialized";
            throw new ClientException(str, "Failed to initialize DevicePoPManager = " + e.getMessage(), e);
        } catch (NoSuchAlgorithmException e3) {
            e = e3;
            str = "no_such_algorithm";
            throw new ClientException(str, "Failed to initialize DevicePoPManager = " + e.getMessage(), e);
        } catch (CertificateException e4) {
            e = e4;
            str = "certificate_load_failure";
            throw new ClientException(str, "Failed to initialize DevicePoPManager = " + e.getMessage(), e);
        }
    }
}
