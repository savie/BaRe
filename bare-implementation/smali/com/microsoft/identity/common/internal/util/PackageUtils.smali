.class public abstract Lcom/microsoft/identity/common/internal/util/PackageUtils;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final HEX_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "([A-Fa-f0-9]{2}:)*[A-Fa-f0-9]{2}"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/microsoft/identity/common/internal/util/PackageUtils;->HEX_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public static readCertDataForApp(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Lcom/microsoft/identity/common/java/exception/ClientException;,
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 p1, 0x0

    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "Calling app could not be verified"

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    array-length v1, p0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    array-length v2, p0

    .line 26
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    array-length v2, p0

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_0
    if-ge v3, v2, :cond_0

    .line 32
    .line 33
    aget-object v4, p0, v3

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 40
    .line 41
    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 42
    .line 43
    .line 44
    const-string v4, "X509"

    .line 45
    .line 46
    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 55
    .line 56
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 63
    .line 64
    invoke-direct {p0, v0, p1, p1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_0
    return-object v1

    .line 69
    :cond_1
    const-string p0, "No signature associated with the broker package."

    .line 70
    .line 71
    invoke-static {v0, p0, p1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_2
    const-string p0, "App package name is not found in the package manager."

    .line 76
    .line 77
    const-string v0, "No broker package existed."

    .line 78
    .line 79
    invoke-static {p0, v0, p1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    return-object p1
.end method

.method public static verifyCertificateChain(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v1

    .line 8
    move-object v4, v2

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    if-eqz v5, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-interface {v6, v7}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    move-object v4, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x1

    .line 40
    if-gt v3, v0, :cond_2

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    new-instance v0, Ljava/security/cert/TrustAnchor;

    .line 45
    .line 46
    invoke-direct {v0, v4, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Ljava/security/cert/PKIXParameters;

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {v2, v0}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 59
    .line 60
    .line 61
    const-string v0, "X.509"

    .line 62
    .line 63
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string v0, "PKIX"

    .line 72
    .line 73
    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, p0, v2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    const-string p0, "Calling app could not be verified"

    .line 82
    .line 83
    const-string v0, "Multiple self signed certs found or no self signed cert existed."

    .line 84
    .line 85
    invoke-static {p0, v0, v2}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static verifySignatureHash(Ljava/util/ArrayList;Ljava/util/Iterator;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateEncodingException;,
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 21
    .line 22
    const-string v2, "SHA-512"

    .line 23
    .line 24
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x2

    .line 40
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v3, 0x2c

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/lang/String;

    .line 63
    .line 64
    sget-object v4, Lcom/microsoft/identity/common/internal/util/PackageUtils;->HEX_PATTERN:Ljava/util/regex/Pattern;

    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    const-string v4, ":"

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    array-length v4, v3

    .line 83
    new-array v4, v4, [B

    .line 84
    .line 85
    array-length v5, v3

    .line 86
    const/4 v6, 0x0

    .line 87
    move v7, v6

    .line 88
    :goto_0
    if-ge v6, v5, :cond_2

    .line 89
    .line 90
    aget-object v8, v3, v6

    .line 91
    .line 92
    add-int/lit8 v9, v7, 0x1

    .line 93
    .line 94
    const/16 v10, 0x10

    .line 95
    .line 96
    invoke-static {v8, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 97
    .line 98
    .line 99
    move-result-wide v10

    .line 100
    const-wide/16 v12, 0xff

    .line 101
    .line 102
    and-long/2addr v10, v12

    .line 103
    long-to-int v8, v10

    .line 104
    int-to-byte v8, v8

    .line 105
    aput-byte v8, v4, v7

    .line 106
    .line 107
    add-int/lit8 v6, v6, 0x1

    .line 108
    .line 109
    move v7, v9

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-nez v4, :cond_1

    .line 120
    .line 121
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_1

    .line 126
    .line 127
    return-void

    .line 128
    :cond_4
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 129
    .line 130
    const-string p1, "Calling app could not be verified SignatureHashes: "

    .line 131
    .line 132
    invoke-static {p1, v0}, Lxs1;->k(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const/4 v0, 0x0

    .line 137
    const-string v1, "broker_app_verification_failed"

    .line 138
    .line 139
    invoke-direct {p0, v1, p1, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    throw p0
.end method
