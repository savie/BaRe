package com.microsoft.identity.common.exception;

import com.microsoft.identity.common.java.exception.BaseException;
import defpackage.dj7;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BrokerCommunicationException extends BaseException {
    private final int category;
    private final int strategyType;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BrokerCommunicationException(int i, int i2, String str, Exception exc) {
        super(dj7.b(i), str, exc);
        if (i == 0 || i2 == 0) {
            throw null;
        }
        this.category = i;
        this.strategyType = i2;
    }

    public final int getCategory() {
        return this.category;
    }

    @Override // com.microsoft.identity.common.java.exception.BaseException, java.lang.Throwable
    public final String getMessage() {
        String str = null;
        int i = this.category;
        String strB = i != 0 ? dj7.b(i) : null;
        int i2 = this.strategyType;
        if (i2 != 0) {
            if (i2 == 1) {
                str = "bound_service";
            } else if (i2 == 2) {
                str = "account_manager_add_account";
            } else if (i2 == 3) {
                str = "content_provider";
            } else {
                if (i2 != 4) {
                    throw null;
                }
                str = "legacy_account_authenticator_for_wpj_api";
            }
        }
        return String.format("[%s] [%s] :%s", Arrays.copyOf(new Object[]{strB, str, super.getMessage()}, 3));
    }
}
