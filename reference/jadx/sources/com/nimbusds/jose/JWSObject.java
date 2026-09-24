package com.nimbusds.jose;

import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.Base64URL;
import com.nimbusds.jose.util.StandardCharset;
import defpackage.l0;
import defpackage.y5;
import java.security.Signature;
import java.text.ParseException;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class JWSObject extends JOSEObject {
    private static final long serialVersionUID = 1;
    private final JWSHeader header;
    private Base64URL signature;
    private final String signingInputString;
    private final AtomicReference<State> state;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum State {
        UNSIGNED,
        SIGNED,
        VERIFIED
    }

    public JWSObject(Base64URL base64URL, Payload payload, Base64URL base64URL2) throws ParseException {
        AtomicReference<State> atomicReference = new AtomicReference<>();
        this.state = atomicReference;
        try {
            this.header = JWSHeader.parse(base64URL);
            Objects.requireNonNull(payload);
            setPayload(payload);
            this.signingInputString = composeSigningInput();
            if (base64URL2.toString().trim().isEmpty()) {
                y5.e(0, "The signature must not be empty");
                throw null;
            }
            this.signature = base64URL2;
            atomicReference.set(State.SIGNED);
            if (getHeader().isBase64URLEncodePayload()) {
                setParsedParts(base64URL, payload.toBase64URL(), base64URL2);
            } else {
                setParsedParts(base64URL, new Base64URL(""), base64URL2);
            }
        } catch (ParseException e) {
            l0.j(e.getMessage(), "Invalid JWS header: ");
            throw null;
        }
    }

    private String composeSigningInput() {
        if (this.header.isBase64URLEncodePayload()) {
            return getHeader().toBase64URL().toString() + '.' + getPayload().toBase64URL().toString();
        }
        return getHeader().toBase64URL().toString() + '.' + getPayload().toString();
    }

    private void ensureJWSSignerSupport(JWSSigner jWSSigner) throws JOSEException {
        if (jWSSigner.supportedJWSAlgorithms().contains(getHeader().getAlgorithm())) {
            return;
        }
        StringBuilder sb = new StringBuilder("The ");
        sb.append(getHeader().getAlgorithm());
        Set<JWSAlgorithm> setSupportedJWSAlgorithms = jWSSigner.supportedJWSAlgorithms();
        sb.append(" algorithm is not allowed or supported by the JWS signer: Supported algorithms: ");
        sb.append(setSupportedJWSAlgorithms);
        throw new JOSEException(sb.toString());
    }

    private void ensureSignedOrVerifiedState() {
        if (this.state.get() == State.SIGNED || this.state.get() == State.VERIFIED) {
            return;
        }
        l0.e("The JWS object must be in a signed or verified state");
    }

    private void ensureUnsignedState() {
        if (this.state.get() == State.UNSIGNED) {
            return;
        }
        l0.e("The JWS object must be in an unsigned state");
    }

    public static JWSObject parse(String str, Payload payload) throws ParseException {
        Base64URL[] base64URLArrSplit = JOSEObject.split(str);
        if (base64URLArrSplit.length != 3) {
            y5.e(0, "Unexpected number of Base64URL parts, must be three");
            return null;
        }
        if (base64URLArrSplit[1].toString().isEmpty()) {
            return new JWSObject(base64URLArrSplit[0], payload, base64URLArrSplit[2]);
        }
        y5.e(0, "The payload Base64URL part must be empty");
        return null;
    }

    public Base64URL getSignature() {
        return this.signature;
    }

    public byte[] getSigningInput() {
        return this.signingInputString.getBytes(StandardCharset.UTF_8);
    }

    public State getState() {
        return this.state.get();
    }

    public String serialize(boolean z) {
        ensureSignedOrVerifiedState();
        if (z) {
            return this.header.toBase64URL().toString() + ".." + this.signature.toString();
        }
        return this.signingInputString + '.' + this.signature.toString();
    }

    public synchronized void sign(JWSSigner jWSSigner) throws JOSEException {
        ensureUnsignedState();
        ensureJWSSignerSupport(jWSSigner);
        try {
            this.signature = jWSSigner.sign(getHeader(), getSigningInput());
            this.state.set(State.SIGNED);
        } catch (ActionRequiredForJWSCompletionException e) {
            throw new ActionRequiredForJWSCompletionException(e.getMessage(), e.getTriggeringOption(), new CompletableJWSObjectSigning() { // from class: com.nimbusds.jose.JWSObject.1
                @Override // com.nimbusds.jose.CompletableJWSObjectSigning
                public Base64URL complete() throws JOSEException {
                    JWSObject.this.signature = e.getCompletableJWSObjectSigning().complete();
                    JWSObject.this.state.set(State.SIGNED);
                    return JWSObject.this.signature;
                }

                @Override // com.nimbusds.jose.CompletableJWSObjectSigning
                public Signature getInitializedSignature() {
                    return e.getCompletableJWSObjectSigning().getInitializedSignature();
                }
            });
        } catch (JOSEException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new JOSEException(e3.getMessage(), e3);
        }
    }

    public synchronized boolean verify(JWSVerifier jWSVerifier) throws JOSEException {
        boolean zVerify;
        ensureSignedOrVerifiedState();
        try {
            zVerify = jWSVerifier.verify(getHeader(), getSigningInput(), getSignature());
            if (zVerify) {
                this.state.set(State.VERIFIED);
            }
        } catch (JOSEException e) {
            throw e;
        } catch (Exception e2) {
            throw new JOSEException(e2.getMessage(), e2);
        }
        return zVerify;
    }

    @Override // com.nimbusds.jose.JOSEObject
    public JWSHeader getHeader() {
        return this.header;
    }

    public static JWSObject parse(String str) throws ParseException {
        Base64URL[] base64URLArrSplit = JOSEObject.split(str);
        if (base64URLArrSplit.length == 3) {
            return new JWSObject(base64URLArrSplit[0], base64URLArrSplit[1], base64URLArrSplit[2]);
        }
        y5.e(0, "Unexpected number of Base64URL parts, must be three");
        return null;
    }

    @Override // com.nimbusds.jose.JOSEObject
    public String serialize() {
        return serialize(false);
    }

    public JWSObject(Base64URL base64URL, Base64URL base64URL2, Base64URL base64URL3) throws ParseException {
        this(base64URL, new Payload(base64URL2), base64URL3);
    }

    public JWSObject(JWSHeader jWSHeader, Payload payload) {
        AtomicReference<State> atomicReference = new AtomicReference<>();
        this.state = atomicReference;
        Objects.requireNonNull(jWSHeader);
        this.header = jWSHeader;
        Objects.requireNonNull(payload);
        setPayload(payload);
        this.signingInputString = composeSigningInput();
        this.signature = null;
        atomicReference.set(State.UNSIGNED);
    }
}
