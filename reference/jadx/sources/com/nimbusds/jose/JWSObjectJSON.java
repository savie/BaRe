package com.nimbusds.jose;

import com.nimbusds.jose.shaded.jcip.Immutable;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.Base64URL;
import com.nimbusds.jose.util.JSONArrayUtils;
import com.nimbusds.jose.util.JSONObjectUtils;
import defpackage.c6;
import defpackage.g84;
import defpackage.l0;
import defpackage.y5;
import java.text.ParseException;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class JWSObjectJSON extends JOSEObjectJSON {
    private static final long serialVersionUID = 1;
    private final List<Signature> signatures;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @Immutable
    public static final class Signature {
        private final JWSHeader header;
        private final Payload payload;
        private final Base64URL signature;
        private final UnprotectedHeader unprotectedHeader;
        private final AtomicBoolean verified;

        private Signature(Payload payload, JWSHeader jWSHeader, UnprotectedHeader unprotectedHeader, Base64URL base64URL) {
            this.verified = new AtomicBoolean(false);
            Objects.requireNonNull(payload);
            this.payload = payload;
            this.header = jWSHeader;
            this.unprotectedHeader = unprotectedHeader;
            Objects.requireNonNull(base64URL);
            this.signature = base64URL;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<String, Object> toJSONObject() {
            Map<String, Object> mapNewJSONObject = JSONObjectUtils.newJSONObject();
            JWSHeader jWSHeader = this.header;
            if (jWSHeader != null) {
                mapNewJSONObject.put("protected", jWSHeader.toBase64URL().toString());
            }
            UnprotectedHeader unprotectedHeader = this.unprotectedHeader;
            if (unprotectedHeader != null && !unprotectedHeader.getIncludedParams().isEmpty()) {
                mapNewJSONObject.put("header", this.unprotectedHeader.toJSONObject());
            }
            mapNewJSONObject.put("signature", this.signature.toString());
            return mapNewJSONObject;
        }

        public JWSHeader getHeader() {
            return this.header;
        }

        public Base64URL getSignature() {
            return this.signature;
        }

        public UnprotectedHeader getUnprotectedHeader() {
            return this.unprotectedHeader;
        }

        public boolean isVerified() {
            return this.verified.get();
        }

        public JWSObject toJWSObject() {
            try {
                return new JWSObject(this.header.toBase64URL(), this.payload.toBase64URL(), this.signature);
            } catch (ParseException unused) {
                g84.c();
                return null;
            }
        }

        public synchronized boolean verify(JWSVerifier jWSVerifier) throws JOSEException {
            try {
                try {
                    this.verified.set(toJWSObject().verify(jWSVerifier));
                } catch (Exception e) {
                    throw new JOSEException(e.getMessage(), e);
                }
            } catch (JOSEException e2) {
                throw e2;
            }
            return this.verified.get();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum State {
        UNSIGNED,
        SIGNED,
        VERIFIED
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private JWSObjectJSON(Payload payload, List<Signature> list) {
        super(payload);
        Objects.requireNonNull(payload, "The payload must not be null");
        LinkedList linkedList = new LinkedList();
        this.signatures = linkedList;
        if (list.isEmpty()) {
            c6.f("At least one signature required");
            throw null;
        }
        linkedList.addAll(list);
    }

    public static JWSObjectJSON parse(Map<String, Object> map) throws ParseException {
        Base64URL base64URL = JSONObjectUtils.getBase64URL(map, "payload");
        if (base64URL == null) {
            y5.e(0, "Missing payload");
            return null;
        }
        Payload payload = new Payload(base64URL);
        Base64URL base64URL2 = JSONObjectUtils.getBase64URL(map, "signature");
        boolean z = base64URL2 != null;
        LinkedList linkedList = new LinkedList();
        if (z) {
            JWSHeader jWSHeader = parseJWSHeader(map);
            UnprotectedHeader unprotectedHeader = UnprotectedHeader.parse(JSONObjectUtils.getJSONObject(map, "header"));
            if (map.get("signatures") != null) {
                y5.e(0, "The \"signatures\" member must not be present in flattened JWS JSON serialization");
                return null;
            }
            try {
                HeaderValidation.ensureDisjoint(jWSHeader, unprotectedHeader);
                linkedList.add(new Signature(payload, jWSHeader, unprotectedHeader, base64URL2));
            } catch (IllegalHeaderException e) {
                y5.e(0, e.getMessage());
                return null;
            }
        } else {
            Map<String, Object>[] jSONObjectArray = JSONObjectUtils.getJSONObjectArray(map, "signatures");
            if (jSONObjectArray == null || jSONObjectArray.length == 0) {
                y5.e(0, "The \"signatures\" member must be present in general JSON Serialization");
                return null;
            }
            for (Map<String, Object> map2 : jSONObjectArray) {
                JWSHeader jWSHeader2 = parseJWSHeader(map2);
                UnprotectedHeader unprotectedHeader2 = UnprotectedHeader.parse(JSONObjectUtils.getJSONObject(map2, "header"));
                try {
                    HeaderValidation.ensureDisjoint(jWSHeader2, unprotectedHeader2);
                    Base64URL base64URL3 = JSONObjectUtils.getBase64URL(map2, "signature");
                    if (base64URL3 == null) {
                        y5.e(0, "Missing \"signature\" member");
                        return null;
                    }
                    linkedList.add(new Signature(payload, jWSHeader2, unprotectedHeader2, base64URL3));
                } catch (IllegalHeaderException e2) {
                    y5.e(0, e2.getMessage());
                    return null;
                }
            }
        }
        return new JWSObjectJSON(payload, linkedList);
    }

    private static JWSHeader parseJWSHeader(Map<String, Object> map) throws ParseException {
        Base64URL base64URL = JSONObjectUtils.getBase64URL(map, "protected");
        if (base64URL == null) {
            y5.e(0, "Missing protected header (required by this library)");
            return null;
        }
        try {
            return JWSHeader.parse(base64URL);
        } catch (ParseException e) {
            if (!"Not a JWS header".equals(e.getMessage())) {
                throw e;
            }
            y5.e(0, "Missing JWS \"alg\" parameter in protected header (required by this library)");
            return null;
        }
    }

    public List<Signature> getSignatures() {
        return Collections.unmodifiableList(this.signatures);
    }

    public State getState() {
        if (getSignatures().isEmpty()) {
            return State.UNSIGNED;
        }
        Iterator<Signature> it = getSignatures().iterator();
        while (it.hasNext()) {
            if (!it.next().isVerified()) {
                return State.SIGNED;
            }
        }
        return State.VERIFIED;
    }

    @Override // com.nimbusds.jose.JOSEObjectJSON
    public String serializeFlattened() {
        return JSONObjectUtils.toJSONString(toFlattenedJSONObject());
    }

    @Override // com.nimbusds.jose.JOSEObjectJSON
    public String serializeGeneral() {
        return JSONObjectUtils.toJSONString(toGeneralJSONObject());
    }

    public synchronized void sign(JWSHeader jWSHeader, UnprotectedHeader unprotectedHeader, JWSSigner jWSSigner) throws JOSEException {
        try {
            HeaderValidation.ensureDisjoint(jWSHeader, unprotectedHeader);
            JWSObject jWSObject = new JWSObject(jWSHeader, getPayload());
            jWSObject.sign(jWSSigner);
            this.signatures.add(new Signature(getPayload(), jWSHeader, unprotectedHeader, jWSObject.getSignature()));
        } catch (IllegalHeaderException e) {
            throw new IllegalArgumentException(e.getMessage(), e);
        }
    }

    @Override // com.nimbusds.jose.JOSEObjectJSON
    public Map<String, Object> toFlattenedJSONObject() {
        if (this.signatures.size() != 1) {
            l0.e("The flattened JWS JSON serialization requires exactly one signature");
            return null;
        }
        Map<String, Object> mapNewJSONObject = JSONObjectUtils.newJSONObject();
        mapNewJSONObject.put("payload", getPayload().toBase64URL().toString());
        mapNewJSONObject.putAll(getSignatures().get(0).toJSONObject());
        return mapNewJSONObject;
    }

    @Override // com.nimbusds.jose.JOSEObjectJSON
    public Map<String, Object> toGeneralJSONObject() {
        if (this.signatures.size() < 1) {
            l0.e("The general JWS JSON serialization requires at least one signature");
            return null;
        }
        Map<String, Object> mapNewJSONObject = JSONObjectUtils.newJSONObject();
        mapNewJSONObject.put("payload", getPayload().toBase64URL().toString());
        List<Object> listNewJSONArray = JSONArrayUtils.newJSONArray();
        Iterator<Signature> it = getSignatures().iterator();
        while (it.hasNext()) {
            listNewJSONArray.add(it.next().toJSONObject());
        }
        mapNewJSONObject.put("signatures", listNewJSONArray);
        return mapNewJSONObject;
    }

    public JWSObjectJSON(Payload payload) {
        super(payload);
        this.signatures = new LinkedList();
        Objects.requireNonNull(payload, "The payload must not be null");
    }

    public synchronized void sign(JWSHeader jWSHeader, JWSSigner jWSSigner) throws JOSEException {
        sign(jWSHeader, null, jWSSigner);
    }

    public static JWSObjectJSON parse(String str) throws ParseException {
        return parse(JSONObjectUtils.parse(str));
    }
}
