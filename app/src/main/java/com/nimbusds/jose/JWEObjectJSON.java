package com.nimbusds.jose;

import com.nimbusds.jose.shaded.jcip.Immutable;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.Base64URL;
import com.nimbusds.jose.util.JSONArrayUtils;
import com.nimbusds.jose.util.JSONObjectUtils;
import defpackage.l0;
import defpackage.y5;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class JWEObjectJSON extends JOSEObjectJSON {
    private static final long serialVersionUID = 1;
    private final byte[] aad;
    private Base64URL authTag;
    private Base64URL cipherText;
    private final JWEHeader header;
    private Base64URL iv;
    private final List<Recipient> recipients;
    private JWEObject.State state;
    private UnprotectedHeader unprotectedHeader;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @Immutable
    public static final class Recipient {
        private final Base64URL encryptedKey;
        private final UnprotectedHeader unprotectedHeader;

        public Recipient(UnprotectedHeader unprotectedHeader, Base64URL base64URL) {
            this.unprotectedHeader = unprotectedHeader;
            this.encryptedKey = base64URL;
        }

        public static Recipient parse(Map<String, Object> map) throws ParseException {
            return new Recipient(UnprotectedHeader.parse(JSONObjectUtils.getJSONObject(map, "header")), JSONObjectUtils.getBase64URL(map, "encrypted_key"));
        }

        public Base64URL getEncryptedKey() {
            return this.encryptedKey;
        }

        public UnprotectedHeader getUnprotectedHeader() {
            return this.unprotectedHeader;
        }

        public Map<String, Object> toJSONObject() {
            Map<String, Object> mapNewJSONObject = JSONObjectUtils.newJSONObject();
            UnprotectedHeader unprotectedHeader = this.unprotectedHeader;
            if (unprotectedHeader != null && !unprotectedHeader.getIncludedParams().isEmpty()) {
                mapNewJSONObject.put("header", this.unprotectedHeader.toJSONObject());
            }
            Base64URL base64URL = this.encryptedKey;
            if (base64URL != null) {
                mapNewJSONObject.put("encrypted_key", base64URL.toString());
            }
            return mapNewJSONObject;
        }
    }

    public JWEObjectJSON(JWEObject jWEObject) {
        super(jWEObject.getPayload());
        LinkedList linkedList = new LinkedList();
        this.recipients = linkedList;
        this.header = jWEObject.getHeader();
        this.aad = null;
        this.iv = jWEObject.getIV();
        this.cipherText = jWEObject.getCipherText();
        this.authTag = jWEObject.getAuthTag();
        JWEObject.State state = jWEObject.getState();
        JWEObject.State state2 = JWEObject.State.ENCRYPTED;
        if (state == state2) {
            linkedList.add(new Recipient(null, jWEObject.getEncryptedKey()));
            this.state = state2;
            return;
        }
        JWEObject.State state3 = jWEObject.getState();
        JWEObject.State state4 = JWEObject.State.DECRYPTED;
        if (state3 != state4) {
            this.state = JWEObject.State.UNENCRYPTED;
        } else {
            linkedList.add(new Recipient(null, jWEObject.getEncryptedKey()));
            this.state = state4;
        }
    }

    private void ensureEncryptedOrDecryptedState() {
        JWEObject.State state = this.state;
        if (state == JWEObject.State.ENCRYPTED || state == JWEObject.State.DECRYPTED) {
            return;
        }
        l0.e("The JWE object must be in an encrypted or decrypted state");
    }

    private void ensureEncryptedState() {
        if (this.state == JWEObject.State.ENCRYPTED) {
            return;
        }
        l0.e("The JWE object must be in an encrypted state");
    }

    private void ensureJWEEncrypterSupport(JWEEncrypter jWEEncrypter) throws JOSEException {
        if (!jWEEncrypter.supportedJWEAlgorithms().contains(getHeader().getAlgorithm())) {
            StringBuilder sb = new StringBuilder("The ");
            sb.append(getHeader().getAlgorithm());
            Set<JWEAlgorithm> setSupportedJWEAlgorithms = jWEEncrypter.supportedJWEAlgorithms();
            sb.append(" algorithm is not supported by the JWE encrypter: Supported algorithms: ");
            sb.append(setSupportedJWEAlgorithms);
            throw new JOSEException(sb.toString());
        }
        if (jWEEncrypter.supportedEncryptionMethods().contains(getHeader().getEncryptionMethod())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder("The ");
        sb2.append(getHeader().getEncryptionMethod());
        Set<EncryptionMethod> setSupportedEncryptionMethods = jWEEncrypter.supportedEncryptionMethods();
        sb2.append(" encryption method or key size is not supported by the JWE encrypter: Supported methods: ");
        sb2.append(setSupportedEncryptionMethods);
        throw new JOSEException(sb2.toString());
    }

    private void ensureUnencryptedState() {
        if (this.state == JWEObject.State.UNENCRYPTED) {
            return;
        }
        l0.e("The JWE object must be in an unencrypted state");
    }

    public static JWEObjectJSON parse(Map<String, Object> map) throws ParseException {
        if (!map.containsKey("protected")) {
            y5.e(0, "The JWE protected header mast be present");
            return null;
        }
        LinkedList linkedList = new LinkedList();
        JWEHeader jWEHeader = JWEHeader.parse(JSONObjectUtils.getBase64URL(map, "protected"));
        UnprotectedHeader unprotectedHeader = UnprotectedHeader.parse(JSONObjectUtils.getJSONObject(map, "unprotected"));
        Base64URL base64URL = JSONObjectUtils.getBase64URL(map, "ciphertext");
        Base64URL base64URL2 = JSONObjectUtils.getBase64URL(map, HeaderParameterNames.INITIALIZATION_VECTOR);
        Base64URL base64URL3 = JSONObjectUtils.getBase64URL(map, HeaderParameterNames.AUTHENTICATION_TAG);
        Base64URL base64URL4 = JSONObjectUtils.getBase64URL(map, "aad");
        JWEHeader jWEHeader2 = (JWEHeader) jWEHeader.join(unprotectedHeader);
        if (map.containsKey("recipients")) {
            Map<String, Object>[] jSONObjectArray = JSONObjectUtils.getJSONObjectArray(map, "recipients");
            if (jSONObjectArray == null || jSONObjectArray.length == 0) {
                y5.e(0, "The \"recipients\" member must be present in general JSON Serialization");
                return null;
            }
            for (Map<String, Object> map2 : jSONObjectArray) {
                Recipient recipient = Recipient.parse(map2);
                try {
                    HeaderValidation.ensureDisjoint(jWEHeader2, recipient.getUnprotectedHeader());
                    linkedList.add(recipient);
                } catch (IllegalHeaderException e) {
                    y5.e(0, e.getMessage());
                    return null;
                }
            }
        } else {
            linkedList.add(new Recipient(null, JSONObjectUtils.getBase64URL(map, "encrypted_key")));
        }
        return new JWEObjectJSON(jWEHeader, base64URL, base64URL2, base64URL3, linkedList, unprotectedHeader, base64URL4 != null ? base64URL4.toString().getBytes(StandardCharsets.US_ASCII) : null);
    }

    private Map<String, Object> toBaseJSONObject() {
        Map<String, Object> mapNewJSONObject = JSONObjectUtils.newJSONObject();
        mapNewJSONObject.put("protected", this.header.toBase64URL().toString());
        byte[] bArr = this.aad;
        if (bArr != null) {
            mapNewJSONObject.put("aad", new String(bArr, StandardCharsets.US_ASCII));
        }
        mapNewJSONObject.put("ciphertext", this.cipherText.toString());
        mapNewJSONObject.put(HeaderParameterNames.INITIALIZATION_VECTOR, this.iv.toString());
        mapNewJSONObject.put(HeaderParameterNames.AUTHENTICATION_TAG, this.authTag.toString());
        return mapNewJSONObject;
    }

    public synchronized void decrypt(JWEDecrypter jWEDecrypter) throws JOSEException {
        ensureEncryptedState();
        try {
            setPayload(new Payload(jWEDecrypter.decrypt(getHeader(), getEncryptedKey(), getIV(), getCipherText(), getAuthTag(), getAAD())));
            this.state = JWEObject.State.DECRYPTED;
        } catch (JOSEException e) {
            throw e;
        } catch (Exception e2) {
            throw new JOSEException(e2.getMessage(), e2);
        }
    }

    public synchronized void encrypt(JWEEncrypter jWEEncrypter) throws JOSEException {
        ensureUnencryptedState();
        ensureJWEEncrypterSupport(jWEEncrypter);
        getHeader();
        try {
            try {
                JWEHeader jWEHeader = (JWEHeader) getHeader().join(this.unprotectedHeader);
                JWECryptoParts jWECryptoPartsEncrypt = jWEEncrypter.encrypt(jWEHeader, getPayload().toBytes(), getAAD());
                Base64URL encryptedKey = jWECryptoPartsEncrypt.getEncryptedKey();
                try {
                    for (Map<String, Object> map : JSONObjectUtils.getJSONObjectArray(JSONObjectUtils.parse(encryptedKey.decodeToString()), "recipients")) {
                        this.recipients.add(Recipient.parse(map));
                    }
                } catch (Exception unused) {
                    Map<String, Object> jSONObject = jWECryptoPartsEncrypt.getHeader().toJSONObject();
                    for (String str : jWEHeader.getIncludedParams()) {
                        if (jSONObject.containsKey(str)) {
                            jSONObject.remove(str);
                        }
                    }
                    try {
                        this.recipients.add(new Recipient(UnprotectedHeader.parse(jSONObject), encryptedKey));
                    } catch (Exception e) {
                        throw new JOSEException(e.getMessage(), e);
                    }
                }
                this.iv = jWECryptoPartsEncrypt.getInitializationVector();
                this.cipherText = jWECryptoPartsEncrypt.getCipherText();
                this.authTag = jWECryptoPartsEncrypt.getAuthenticationTag();
                this.state = JWEObject.State.ENCRYPTED;
            } catch (JOSEException e2) {
                throw e2;
            }
        } catch (Exception e3) {
            throw new JOSEException(e3.getMessage(), e3);
        }
    }

    public byte[] getAAD() {
        StringBuilder sb = new StringBuilder(this.header.toBase64URL().toString());
        byte[] bArr = this.aad;
        if (bArr != null && bArr.length > 0) {
            sb.append(".");
            sb.append(new String(this.aad, StandardCharsets.US_ASCII));
        }
        return sb.toString().getBytes(StandardCharsets.US_ASCII);
    }

    public Base64URL getAuthTag() {
        return this.authTag;
    }

    public Base64URL getCipherText() {
        return this.cipherText;
    }

    public Base64URL getEncryptedKey() {
        if (this.recipients.isEmpty()) {
            return null;
        }
        if (this.recipients.size() == 1) {
            return this.recipients.get(0).getEncryptedKey();
        }
        List<Object> listNewJSONArray = JSONArrayUtils.newJSONArray();
        Iterator<Recipient> it = this.recipients.iterator();
        while (it.hasNext()) {
            listNewJSONArray.add(it.next().toJSONObject());
        }
        Map<String, Object> mapNewJSONObject = JSONObjectUtils.newJSONObject();
        mapNewJSONObject.put("recipients", listNewJSONArray);
        return Base64URL.encode(JSONObjectUtils.toJSONString(mapNewJSONObject));
    }

    public JWEHeader getHeader() {
        return this.header;
    }

    public Base64URL getIV() {
        return this.iv;
    }

    public List<Recipient> getRecipients() {
        return Collections.unmodifiableList(this.recipients);
    }

    public JWEObject.State getState() {
        return this.state;
    }

    public UnprotectedHeader getUnprotectedHeader() {
        return this.unprotectedHeader;
    }

    @Override // com.nimbusds.jose.JOSEObjectJSON
    public String serializeFlattened() {
        return JSONObjectUtils.toJSONString(toFlattenedJSONObject());
    }

    @Override // com.nimbusds.jose.JOSEObjectJSON
    public String serializeGeneral() {
        return JSONObjectUtils.toJSONString(toGeneralJSONObject());
    }

    @Override // com.nimbusds.jose.JOSEObjectJSON
    public Map<String, Object> toFlattenedJSONObject() {
        ensureEncryptedOrDecryptedState();
        if (this.recipients.size() != 1) {
            l0.e("The flattened JWE JSON serialization requires exactly one recipient");
            return null;
        }
        Map<String, Object> baseJSONObject = toBaseJSONObject();
        Map<String, Object> mapNewJSONObject = JSONObjectUtils.newJSONObject();
        if (this.recipients.get(0).getUnprotectedHeader() != null) {
            mapNewJSONObject.putAll(this.recipients.get(0).getUnprotectedHeader().toJSONObject());
        }
        UnprotectedHeader unprotectedHeader = this.unprotectedHeader;
        if (unprotectedHeader != null) {
            mapNewJSONObject.putAll(unprotectedHeader.toJSONObject());
        }
        if (mapNewJSONObject.size() > 0) {
            baseJSONObject.put("unprotected", mapNewJSONObject);
        }
        if (this.recipients.get(0).getEncryptedKey() != null) {
            baseJSONObject.put("encrypted_key", this.recipients.get(0).getEncryptedKey().toString());
        }
        return baseJSONObject;
    }

    @Override // com.nimbusds.jose.JOSEObjectJSON
    public Map<String, Object> toGeneralJSONObject() {
        ensureEncryptedOrDecryptedState();
        if (this.recipients.isEmpty() || (this.recipients.get(0).getUnprotectedHeader() == null && this.recipients.get(0).getEncryptedKey() == null)) {
            l0.e("The general JWE JSON serialization requires at least one recipient");
            return null;
        }
        Map<String, Object> baseJSONObject = toBaseJSONObject();
        UnprotectedHeader unprotectedHeader = this.unprotectedHeader;
        if (unprotectedHeader != null) {
            baseJSONObject.put("unprotected", unprotectedHeader.toJSONObject());
        }
        List<Object> listNewJSONArray = JSONArrayUtils.newJSONArray();
        Iterator<Recipient> it = this.recipients.iterator();
        while (it.hasNext()) {
            listNewJSONArray.add(it.next().toJSONObject());
        }
        baseJSONObject.put("recipients", listNewJSONArray);
        return baseJSONObject;
    }

    public JWEObjectJSON(JWEHeader jWEHeader, Payload payload) {
        this(jWEHeader, payload, null, null);
    }

    public JWEObjectJSON(JWEHeader jWEHeader, Payload payload, UnprotectedHeader unprotectedHeader, byte[] bArr) {
        super(payload);
        this.recipients = new LinkedList();
        Objects.requireNonNull(jWEHeader);
        this.header = jWEHeader;
        Objects.requireNonNull(payload);
        setPayload(payload);
        this.unprotectedHeader = unprotectedHeader;
        this.aad = bArr;
        this.cipherText = null;
        this.state = JWEObject.State.UNENCRYPTED;
    }

    public JWEObjectJSON(JWEHeader jWEHeader, Base64URL base64URL, Base64URL base64URL2, Base64URL base64URL3, List<Recipient> list, UnprotectedHeader unprotectedHeader, byte[] bArr) {
        super(null);
        LinkedList linkedList = new LinkedList();
        this.recipients = linkedList;
        Objects.requireNonNull(jWEHeader);
        this.header = jWEHeader;
        linkedList.addAll(list);
        this.unprotectedHeader = unprotectedHeader;
        this.aad = bArr;
        this.iv = base64URL2;
        Objects.requireNonNull(base64URL);
        this.cipherText = base64URL;
        this.authTag = base64URL3;
        this.state = JWEObject.State.ENCRYPTED;
    }

    public static JWEObjectJSON parse(String str) throws ParseException {
        Objects.requireNonNull(str);
        return parse(JSONObjectUtils.parse(str));
    }
}
