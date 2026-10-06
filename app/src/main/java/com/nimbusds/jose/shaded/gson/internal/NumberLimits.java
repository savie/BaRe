package com.nimbusds.jose.shaded.gson.internal;

import defpackage.xs1;
import defpackage.y5;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class NumberLimits {
    private static final int MAX_NUMBER_STRING_LENGTH = 10000;

    private NumberLimits() {
    }

    private static void checkNumberStringLength(String str) {
        if (str.length() <= 10000) {
            return;
        }
        y5.f(str.substring(0, 30), "...", "Number string too large: ");
    }

    public static BigDecimal parseBigDecimal(String str) throws NumberFormatException {
        checkNumberStringLength(str);
        BigDecimal bigDecimal = new BigDecimal(str);
        if (Math.abs(bigDecimal.scale()) < 10000) {
            return bigDecimal;
        }
        throw new NumberFormatException(xs1.j("Number has unsupported scale: ", str));
    }

    public static BigInteger parseBigInteger(String str) throws NumberFormatException {
        checkNumberStringLength(str);
        return new BigInteger(str);
    }
}
