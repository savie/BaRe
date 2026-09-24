package com.nimbusds.jose.shaded.gson;

import com.nimbusds.jose.shaded.gson.internal.LazilyParsedNumber;
import com.nimbusds.jose.shaded.gson.internal.NumberLimits;
import com.nimbusds.jose.shaded.gson.stream.JsonReader;
import com.nimbusds.jose.shaded.gson.stream.MalformedJsonException;
import defpackage.dj7;
import java.io.IOException;
import java.math.BigDecimal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum ToNumberPolicy implements ToNumberStrategy {
    DOUBLE { // from class: com.nimbusds.jose.shaded.gson.ToNumberPolicy.1
        @Override // com.nimbusds.jose.shaded.gson.ToNumberStrategy
        public Double readNumber(JsonReader jsonReader) throws IOException {
            return Double.valueOf(jsonReader.nextDouble());
        }
    },
    LAZILY_PARSED_NUMBER { // from class: com.nimbusds.jose.shaded.gson.ToNumberPolicy.2
        @Override // com.nimbusds.jose.shaded.gson.ToNumberStrategy
        public Number readNumber(JsonReader jsonReader) throws IOException {
            return new LazilyParsedNumber(jsonReader.nextString());
        }
    },
    LONG_OR_DOUBLE { // from class: com.nimbusds.jose.shaded.gson.ToNumberPolicy.3
        private Number parseAsDouble(String str, JsonReader jsonReader) throws IOException {
            try {
                Double dValueOf = Double.valueOf(str);
                if (dValueOf.isInfinite() || dValueOf.isNaN()) {
                    if (!jsonReader.isLenient()) {
                        throw new MalformedJsonException("JSON forbids NaN and infinities: " + dValueOf + "; at path " + jsonReader.getPreviousPath());
                    }
                }
                return dValueOf;
            } catch (NumberFormatException e) {
                StringBuilder sbU = dj7.u("Cannot parse ", str, "; at path ");
                sbU.append(jsonReader.getPreviousPath());
                throw new JsonParseException(sbU.toString(), e);
            }
        }

        @Override // com.nimbusds.jose.shaded.gson.ToNumberStrategy
        public Number readNumber(JsonReader jsonReader) throws JsonParseException, IOException {
            String strNextString = jsonReader.nextString();
            if (strNextString.indexOf(46) >= 0) {
                return parseAsDouble(strNextString, jsonReader);
            }
            try {
                return Long.valueOf(Long.parseLong(strNextString));
            } catch (NumberFormatException unused) {
                return parseAsDouble(strNextString, jsonReader);
            }
        }
    },
    BIG_DECIMAL { // from class: com.nimbusds.jose.shaded.gson.ToNumberPolicy.4
        @Override // com.nimbusds.jose.shaded.gson.ToNumberStrategy
        public BigDecimal readNumber(JsonReader jsonReader) throws IOException {
            String strNextString = jsonReader.nextString();
            try {
                return NumberLimits.parseBigDecimal(strNextString);
            } catch (NumberFormatException e) {
                StringBuilder sbU = dj7.u("Cannot parse ", strNextString, "; at path ");
                sbU.append(jsonReader.getPreviousPath());
                throw new JsonParseException(sbU.toString(), e);
            }
        }
    }
}
