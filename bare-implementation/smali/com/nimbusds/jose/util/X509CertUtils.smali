.class public Lcom/nimbusds/jose/util/X509CertUtils;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final PEM_BEGIN_MARKER:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field public static final PEM_END_MARKER:Ljava/lang/String; = "-----END CERTIFICATE-----"

.field private static jcaProvider:Ljava/security/Provider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static computeSHA256Thumbprint(Ljava/security/cert/X509Certificate;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "SHA-256"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public static getProvider()Ljava/security/Provider;
    .locals 1

    .line 1
    sget-object v0, Lcom/nimbusds/jose/util/X509CertUtils;->jcaProvider:Ljava/security/Provider;

    .line 2
    .line 3
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "-----BEGIN CERTIFICATE-----"

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-gez v1, :cond_1

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    add-int/lit8 v1, v1, 0x1b

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v1, "-----END CERTIFICATE-----"

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-gez v1, :cond_2

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v0, "\\s"

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance v0, Lcom/nimbusds/jose/util/Base64;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/util/Base64;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Lcom/nimbusds/jose/util/X509CertUtils;->parse([B)Ljava/security/cert/X509Certificate;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static parse([B)Ljava/security/cert/X509Certificate;
    .locals 0

    .line 63
    :try_start_0
    invoke-static {p0}, Lcom/nimbusds/jose/util/X509CertUtils;->parseWithException([B)Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseWithException(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "-----BEGIN CERTIFICATE-----"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ltz v0, :cond_2

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1b

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v0, "-----END CERTIFICATE-----"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ltz v0, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v0, "\\s"

    .line 38
    .line 39
    const-string v1, ""

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-instance v0, Lcom/nimbusds/jose/util/Base64;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/util/Base64;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lcom/nimbusds/jose/util/X509CertUtils;->parseWithException([B)Ljava/security/cert/X509Certificate;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_1
    new-instance p0, Ljava/security/cert/CertificateException;

    .line 60
    .line 61
    const-string v0, "PEM end marker not found"

    .line 62
    .line 63
    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_2
    new-instance p0, Ljava/security/cert/CertificateException;

    .line 68
    .line 69
    const-string v0, "PEM begin marker not found"

    .line 70
    .line 71
    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 76
    return-object p0
.end method

.method public static parseWithException([B)Ljava/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 77
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/util/X509CertUtils;->jcaProvider:Ljava/security/Provider;

    const-string v1, "X.509"

    if-eqz v0, :cond_1

    .line 79
    invoke-static {v1, v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 81
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    .line 82
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2

    .line 83
    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0

    .line 84
    :cond_2
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a X.509 certificate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setProvider(Ljava/security/Provider;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/nimbusds/jose/util/X509CertUtils;->jcaProvider:Ljava/security/Provider;

    .line 2
    .line 3
    return-void
.end method

.method public static store(Ljava/security/KeyStore;Ljava/security/PrivateKey;[CLjava/security/cert/X509Certificate;)Ljava/util/UUID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/security/cert/Certificate;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object p3, v2, v3

    .line 14
    .line 15
    invoke-virtual {p0, v1, p1, p2, v2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static toPEMString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/X509CertUtils;->toPEMString(Ljava/security/cert/X509Certificate;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toPEMString(Ljava/security/cert/X509Certificate;Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "-----BEGIN CERTIFICATE-----"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64;->encode([B)Lcom/nimbusds/jose/util/Base64;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_1
    const-string p0, "-----END CERTIFICATE-----"

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :catch_0
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method
