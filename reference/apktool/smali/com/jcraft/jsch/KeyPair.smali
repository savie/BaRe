.class public abstract Lcom/jcraft/jsch/KeyPair;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final DEFERRED:I = -0x1

.field public static final DSA:I = 0x1

.field public static final ECDSA:I = 0x3

.field public static final ED25519:I = 0x5

.field public static final ED448:I = 0x6

.field public static final ERROR:I = 0x0

.field public static final RSA:I = 0x2

.field public static final UNKNOWN:I = 0x4

.field public static final m:[B

.field public static final n:[B

.field public static final o:[B

.field public static final p:[B

.field public static final q:[B

.field public static final r:[[B

.field public static final s:[B


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public final c:Lcom/jcraft/jsch/JSch$InstanceLogger;

.field public d:Lcom/jcraft/jsch/Cipher;

.field public e:Lcom/jcraft/jsch/KDF;

.field public f:Lcom/jcraft/jsch/HASH;

.field public g:Lcom/jcraft/jsch/HASH;

.field public h:Lcom/jcraft/jsch/Random;

.field public i:Z

.field public j:[B

.field public k:[B

.field public l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    const-string v1, "openssh-key-v1\u0000"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Lcom/jcraft/jsch/KeyPair;->m:[B

    .line 12
    .line 13
    const-string v1, "\n"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Lcom/jcraft/jsch/KeyPair;->n:[B

    .line 20
    .line 21
    const-string v1, "-----BEGIN OPENSSH PRIVATE KEY-----"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Lcom/jcraft/jsch/KeyPair;->o:[B

    .line 28
    .line 29
    const-string v1, "-----END OPENSSH PRIVATE KEY-----"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sput-object v1, Lcom/jcraft/jsch/KeyPair;->p:[B

    .line 36
    .line 37
    const-string v1, "none"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sput-object v1, Lcom/jcraft/jsch/KeyPair;->q:[B

    .line 44
    .line 45
    const-string v1, "Proc-Type: 4,ENCRYPTED"

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "DEK-Info: DES-EDE3-CBC,"

    .line 52
    .line 53
    invoke-static {v2, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    filled-new-array {v1, v2}, [[B

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sput-object v1, Lcom/jcraft/jsch/KeyPair;->r:[[B

    .line 62
    .line 63
    const-string v1, " "

    .line 64
    .line 65
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/jcraft/jsch/KeyPair;->s:[B

    .line 70
    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/jcraft/jsch/KeyPair;->a:I

    .line 6
    .line 7
    const-string v1, "no comment"

    .line 8
    .line 9
    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->i:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->j:[B

    .line 15
    .line 16
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->k:[B

    .line 17
    .line 18
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->l:[B

    .line 19
    .line 20
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 21
    .line 22
    return-void
.end method

.method public static b(I)I
    .locals 2

    .line 1
    const/16 v0, 0x7f

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gt p0, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :goto_0
    if-lez p0, :cond_1

    .line 8
    .line 9
    ushr-int/lit8 p0, p0, 0x8

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    return v1
.end method

.method public static extractX509SubjectPublicKeyInfo([B[BI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/asn1/ASN1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/jcraft/jsch/asn1/ASN1;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_7

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    array-length v0, p0

    .line 17
    const/4 v1, 0x2

    .line 18
    if-ne v0, v1, :cond_6

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    aget-object v1, p0, v0

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_5

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    array-length v2, v1

    .line 34
    const/4 v3, 0x1

    .line 35
    if-lt v2, v3, :cond_4

    .line 36
    .line 37
    aget-object v1, v1, v0

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/jcraft/jsch/asn1/ASN1;->isOBJECT()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1, p1}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    aget-object p0, p0, v3

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->isBITSTRING()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    aget-byte p1, p0, v0

    .line 68
    .line 69
    if-nez p1, :cond_0

    .line 70
    .line 71
    array-length p1, p0

    .line 72
    sub-int/2addr p1, v3

    .line 73
    if-ne p1, p2, :cond_0

    .line 74
    .line 75
    array-length p1, p0

    .line 76
    invoke-static {p0, v3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 82
    .line 83
    const-string p1, "invalid public key value (SubjectPublicKeyInfo subjectPublicKey is wrong length)"

    .line 84
    .line 85
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_1
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 90
    .line 91
    const-string p1, "invalid public key value (SubjectPublicKeyInfo subjectPublicKey is not a BIT STRING)"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_2
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 98
    .line 99
    const-string p1, "invalid public key value (AlgorithmIdentifier algorithm is wrong value)"

    .line 100
    .line 101
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_3
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 106
    .line 107
    const-string p1, "invalid public key value (AlgorithmIdentifier algorithm is not an OBJECT IDENTIFIER)"

    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_4
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 114
    .line 115
    const-string p1, "invalid public key value (SubjectPublicKeyInfo algorithm is wrong length)"

    .line 116
    .line 117
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_5
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 122
    .line 123
    const-string p1, "invalid public key value (SubjectPublicKeyInfo algorithm is not a SEQUENCE)"

    .line 124
    .line 125
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_6
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 130
    .line 131
    const-string p1, "invalid public key value (SubjectPublicKeyInfo is wrong length)"

    .line 132
    .line 133
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_7
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 138
    .line 139
    const-string p1, "invalid public key value (SubjectPublicKeyInfo is not a SEQUENCE)"

    .line 140
    .line 141
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
    :try_end_0
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :catch_0
    move-exception p0

    .line 146
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 147
    .line 148
    const-string p2, "invalid ASN.1 encoding"

    .line 149
    .line 150
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    throw p1
.end method

.method public static genKeyPair(Lcom/jcraft/jsch/JSch;I)Lcom/jcraft/jsch/KeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 64
    invoke-static {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->genKeyPair(Lcom/jcraft/jsch/JSch;II)Lcom/jcraft/jsch/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static genKeyPair(Lcom/jcraft/jsch/JSch;II)Lcom/jcraft/jsch/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/jcraft/jsch/KeyPairDSA;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    const/4 v1, 0x0

    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    new-instance p1, Lcom/jcraft/jsch/KeyPairRSA;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 19
    .line 20
    invoke-direct {p1, p0, v1, v1, v1}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x3

    .line 25
    if-ne p1, v0, :cond_2

    .line 26
    .line 27
    new-instance p1, Lcom/jcraft/jsch/KeyPairECDSA;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v0, 0x5

    .line 36
    if-ne p1, v0, :cond_3

    .line 37
    .line 38
    new-instance p1, Lcom/jcraft/jsch/KeyPairEd25519;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 41
    .line 42
    invoke-direct {p1, p0, v1, v1}, Lcom/jcraft/jsch/KeyPairEdDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/4 v0, 0x6

    .line 47
    if-ne p1, v0, :cond_4

    .line 48
    .line 49
    new-instance p1, Lcom/jcraft/jsch/KeyPairEd448;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 52
    .line 53
    invoke-direct {p1, p0, v1, v1}, Lcom/jcraft/jsch/KeyPairEdDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    move-object p1, v1

    .line 58
    :goto_0
    if-eqz p1, :cond_5

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/KeyPair;->h(I)V

    .line 61
    .line 62
    .line 63
    :cond_5
    return-object p1
.end method

.method public static load(Lcom/jcraft/jsch/JSch;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    const-string v0, ".pub"

    .line 2
    .line 3
    invoke-static {p1, v0}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 20
    .line 21
    invoke-static {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->o(Lcom/jcraft/jsch/JSch$InstanceLogger;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static load(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/KeyPair;->o(Lcom/jcraft/jsch/JSch$InstanceLogger;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static load(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 27
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/KeyPair;->p(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static n([BII)Z
    .locals 1

    .line 1
    add-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    if-ge v0, p2, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "OPENSSH PRIVATE KEY-----"

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static o(Lcom/jcraft/jsch/JSch$InstanceLogger;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->j(Ljava/lang/String;)[B

    .line 3
    .line 4
    .line 5
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const-string v2, ".pub"

    .line 9
    .line 10
    invoke-static {p1, v2}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, p2

    .line 16
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->j(Ljava/lang/String;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception p1

    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    :goto_1
    :try_start_2
    invoke-static {p0, v1, v0}, Lcom/jcraft/jsch/KeyPair;->p(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)Lcom/jcraft/jsch/KeyPair;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    invoke-static {p1}, La6;->f(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :catch_1
    move-exception p0

    .line 42
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public static p(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)Lcom/jcraft/jsch/KeyPair;
    .locals 32

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "aes128-cbc"

    .line 8
    .line 9
    const-string v4, "aes192-cbc"

    .line 10
    .line 11
    const-string v5, "aes256-cbc"

    .line 12
    .line 13
    const/16 v6, 0x8

    .line 14
    .line 15
    new-array v7, v6, [B

    .line 16
    .line 17
    const/4 v8, 0x7

    .line 18
    const/4 v9, 0x3

    .line 19
    const/4 v10, 0x2

    .line 20
    const/4 v11, 0x1

    .line 21
    const/4 v12, 0x0

    .line 22
    if-nez v2, :cond_7

    .line 23
    .line 24
    if-eqz v0, :cond_7

    .line 25
    .line 26
    array-length v13, v0

    .line 27
    const/16 v14, 0xb

    .line 28
    .line 29
    if-le v13, v14, :cond_7

    .line 30
    .line 31
    aget-byte v13, v0, v12

    .line 32
    .line 33
    if-nez v13, :cond_7

    .line 34
    .line 35
    aget-byte v13, v0, v11

    .line 36
    .line 37
    if-nez v13, :cond_7

    .line 38
    .line 39
    aget-byte v13, v0, v10

    .line 40
    .line 41
    if-nez v13, :cond_7

    .line 42
    .line 43
    aget-byte v13, v0, v9

    .line 44
    .line 45
    if-eq v13, v8, :cond_0

    .line 46
    .line 47
    const/16 v15, 0x9

    .line 48
    .line 49
    if-eq v13, v15, :cond_0

    .line 50
    .line 51
    if-eq v13, v14, :cond_0

    .line 52
    .line 53
    const/16 v14, 0x13

    .line 54
    .line 55
    if-ne v13, v14, :cond_7

    .line 56
    .line 57
    :cond_0
    new-instance v2, Lcom/jcraft/jsch/Buffer;

    .line 58
    .line 59
    invoke-direct {v2, v0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 60
    .line 61
    .line 62
    array-length v0, v0

    .line 63
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->g()V

    .line 75
    .line 76
    .line 77
    const-string v3, "ssh-rsa"

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    invoke-static {v1, v2}, Lcom/jcraft/jsch/KeyPairRSA;->y(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0

    .line 90
    :cond_1
    const-string v3, "ssh-dss"

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    invoke-static {v1, v2}, Lcom/jcraft/jsch/KeyPairDSA;->y(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    return-object v0

    .line 103
    :cond_2
    const-string v3, "ecdsa-sha2-nistp256"

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_6

    .line 110
    .line 111
    const-string v3, "ecdsa-sha2-nistp384"

    .line 112
    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_6

    .line 118
    .line 119
    const-string v3, "ecdsa-sha2-nistp521"

    .line 120
    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_3

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    const-string v3, "ssh-ed25519"

    .line 129
    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    invoke-static {v1, v2}, Lcom/jcraft/jsch/KeyPairEd25519;->A(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0

    .line 141
    :cond_4
    const-string v3, "ssh-ed448"

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_5

    .line 148
    .line 149
    invoke-static {v1, v2}, Lcom/jcraft/jsch/KeyPairEd448;->A(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    return-object v0

    .line 154
    :cond_5
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 155
    .line 156
    const-string v2, "privatekey: invalid key "

    .line 157
    .line 158
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v1

    .line 166
    :cond_6
    :goto_0
    invoke-static {v1, v2}, Lcom/jcraft/jsch/KeyPairECDSA;->z(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    return-object v0

    .line 171
    :cond_7
    if-eqz v0, :cond_8

    .line 172
    .line 173
    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/jcraft/jsch/KeyPair;->r(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)Lcom/jcraft/jsch/KeyPair;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    if-eqz v14, :cond_8

    .line 178
    .line 179
    return-object v14

    .line 180
    :catch_0
    move-exception v0

    .line 181
    :goto_1
    const/4 v13, 0x0

    .line 182
    goto/16 :goto_3c

    .line 183
    .line 184
    :catch_1
    move-exception v0

    .line 185
    goto :goto_1

    .line 186
    :cond_8
    if-eqz v0, :cond_9

    .line 187
    .line 188
    array-length v14, v0

    .line 189
    goto :goto_2

    .line 190
    :cond_9
    move v14, v12

    .line 191
    :goto_2
    move/from16 v16, v6

    .line 192
    .line 193
    move v15, v12

    .line 194
    :goto_3
    const/16 v6, 0x2d

    .line 195
    .line 196
    if-ge v15, v14, :cond_c

    .line 197
    .line 198
    move/from16 v17, v11

    .line 199
    .line 200
    aget-byte v11, v0, v15

    .line 201
    .line 202
    if-ne v11, v6, :cond_a

    .line 203
    .line 204
    add-int/lit8 v11, v15, 0x4

    .line 205
    .line 206
    if-ge v11, v14, :cond_a

    .line 207
    .line 208
    add-int/lit8 v18, v15, 0x1

    .line 209
    .line 210
    move/from16 v19, v10

    .line 211
    .line 212
    aget-byte v10, v0, v18

    .line 213
    .line 214
    if-ne v10, v6, :cond_b

    .line 215
    .line 216
    add-int/lit8 v10, v15, 0x2

    .line 217
    .line 218
    aget-byte v10, v0, v10

    .line 219
    .line 220
    if-ne v10, v6, :cond_b

    .line 221
    .line 222
    add-int/lit8 v10, v15, 0x3

    .line 223
    .line 224
    aget-byte v10, v0, v10

    .line 225
    .line 226
    if-ne v10, v6, :cond_b

    .line 227
    .line 228
    aget-byte v10, v0, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .line 230
    if-ne v10, v6, :cond_b

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_a
    move/from16 v19, v10

    .line 234
    .line 235
    :cond_b
    add-int/lit8 v15, v15, 0x1

    .line 236
    .line 237
    move/from16 v11, v17

    .line 238
    .line 239
    move/from16 v10, v19

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_c
    move/from16 v19, v10

    .line 243
    .line 244
    move/from16 v17, v11

    .line 245
    .line 246
    :goto_4
    move v8, v12

    .line 247
    move v10, v8

    .line 248
    move/from16 v11, v17

    .line 249
    .line 250
    const/16 v20, 0x0

    .line 251
    .line 252
    :goto_5
    move/from16 v22, v9

    .line 253
    .line 254
    const-string v12, "invalid privatekey"

    .line 255
    .line 256
    if-ge v15, v14, :cond_2b

    .line 257
    .line 258
    const/16 v25, 0x4

    .line 259
    .line 260
    :try_start_1
    aget-byte v13, v0, v15

    .line 261
    .line 262
    const/16 v9, 0x42

    .line 263
    .line 264
    const/16 v6, 0x45

    .line 265
    .line 266
    if-ne v13, v9, :cond_18

    .line 267
    .line 268
    add-int/lit8 v9, v15, 0x3

    .line 269
    .line 270
    if-ge v9, v14, :cond_18

    .line 271
    .line 272
    add-int/lit8 v27, v15, 0x1

    .line 273
    .line 274
    move-object/from16 v28, v3

    .line 275
    .line 276
    aget-byte v3, v0, v27

    .line 277
    .line 278
    if-ne v3, v6, :cond_17

    .line 279
    .line 280
    add-int/lit8 v3, v15, 0x2

    .line 281
    .line 282
    aget-byte v3, v0, v3

    .line 283
    .line 284
    const/16 v6, 0x47

    .line 285
    .line 286
    if-ne v3, v6, :cond_17

    .line 287
    .line 288
    aget-byte v3, v0, v9

    .line 289
    .line 290
    const/16 v6, 0x49

    .line 291
    .line 292
    if-ne v3, v6, :cond_17

    .line 293
    .line 294
    add-int/lit8 v3, v15, 0x6

    .line 295
    .line 296
    add-int/lit8 v9, v15, 0x8

    .line 297
    .line 298
    if-ge v9, v14, :cond_16

    .line 299
    .line 300
    aget-byte v10, v0, v3

    .line 301
    .line 302
    const/16 v13, 0x44

    .line 303
    .line 304
    if-ne v10, v13, :cond_d

    .line 305
    .line 306
    add-int/lit8 v23, v15, 0x7

    .line 307
    .line 308
    aget-byte v13, v0, v23

    .line 309
    .line 310
    const/16 v6, 0x53

    .line 311
    .line 312
    if-ne v13, v6, :cond_d

    .line 313
    .line 314
    aget-byte v6, v0, v9

    .line 315
    .line 316
    const/16 v13, 0x41

    .line 317
    .line 318
    if-ne v6, v13, :cond_d

    .line 319
    .line 320
    move-object/from16 v29, v4

    .line 321
    .line 322
    move/from16 v10, v17

    .line 323
    .line 324
    goto/16 :goto_7

    .line 325
    .line 326
    :cond_d
    const/16 v6, 0x52

    .line 327
    .line 328
    if-ne v10, v6, :cond_e

    .line 329
    .line 330
    add-int/lit8 v13, v15, 0x7

    .line 331
    .line 332
    aget-byte v13, v0, v13

    .line 333
    .line 334
    const/16 v6, 0x53

    .line 335
    .line 336
    if-ne v13, v6, :cond_e

    .line 337
    .line 338
    aget-byte v6, v0, v9

    .line 339
    .line 340
    const/16 v13, 0x41

    .line 341
    .line 342
    if-ne v6, v13, :cond_e

    .line 343
    .line 344
    move-object/from16 v29, v4

    .line 345
    .line 346
    move/from16 v10, v19

    .line 347
    .line 348
    goto/16 :goto_7

    .line 349
    .line 350
    :cond_e
    const/16 v6, 0x45

    .line 351
    .line 352
    if-ne v10, v6, :cond_f

    .line 353
    .line 354
    add-int/lit8 v6, v15, 0x7

    .line 355
    .line 356
    aget-byte v6, v0, v6

    .line 357
    .line 358
    const/16 v13, 0x43

    .line 359
    .line 360
    if-ne v6, v13, :cond_f

    .line 361
    .line 362
    move-object/from16 v29, v4

    .line 363
    .line 364
    move/from16 v10, v22

    .line 365
    .line 366
    goto/16 :goto_7

    .line 367
    .line 368
    :cond_f
    const/16 v6, 0x53

    .line 369
    .line 370
    if-ne v10, v6, :cond_10

    .line 371
    .line 372
    add-int/lit8 v8, v15, 0x7

    .line 373
    .line 374
    aget-byte v8, v0, v8

    .line 375
    .line 376
    if-ne v8, v6, :cond_10

    .line 377
    .line 378
    aget-byte v6, v0, v9

    .line 379
    .line 380
    const/16 v8, 0x48

    .line 381
    .line 382
    if-ne v6, v8, :cond_10

    .line 383
    .line 384
    move-object/from16 v29, v4

    .line 385
    .line 386
    move/from16 v8, v17

    .line 387
    .line 388
    :goto_6
    move/from16 v10, v25

    .line 389
    .line 390
    goto/16 :goto_7

    .line 391
    .line 392
    :cond_10
    add-int/lit8 v6, v15, 0xc

    .line 393
    .line 394
    const/16 v13, 0x50

    .line 395
    .line 396
    if-ge v6, v14, :cond_11

    .line 397
    .line 398
    if-ne v10, v13, :cond_11

    .line 399
    .line 400
    add-int/lit8 v24, v15, 0x7

    .line 401
    .line 402
    aget-byte v13, v0, v24

    .line 403
    .line 404
    const/16 v8, 0x52

    .line 405
    .line 406
    if-ne v13, v8, :cond_11

    .line 407
    .line 408
    aget-byte v8, v0, v9

    .line 409
    .line 410
    const/16 v13, 0x49

    .line 411
    .line 412
    if-ne v8, v13, :cond_11

    .line 413
    .line 414
    add-int/lit8 v8, v15, 0x9

    .line 415
    .line 416
    aget-byte v13, v0, v8

    .line 417
    .line 418
    move-object/from16 v29, v4

    .line 419
    .line 420
    const/16 v4, 0x56

    .line 421
    .line 422
    if-ne v13, v4, :cond_12

    .line 423
    .line 424
    add-int/lit8 v4, v15, 0xa

    .line 425
    .line 426
    aget-byte v4, v0, v4

    .line 427
    .line 428
    const/16 v13, 0x41

    .line 429
    .line 430
    if-ne v4, v13, :cond_12

    .line 431
    .line 432
    add-int/lit8 v4, v15, 0xb

    .line 433
    .line 434
    aget-byte v4, v0, v4

    .line 435
    .line 436
    const/16 v13, 0x54

    .line 437
    .line 438
    if-ne v4, v13, :cond_12

    .line 439
    .line 440
    aget-byte v4, v0, v6

    .line 441
    .line 442
    const/16 v13, 0x45

    .line 443
    .line 444
    if-ne v4, v13, :cond_12

    .line 445
    .line 446
    move v3, v8

    .line 447
    move/from16 v8, v22

    .line 448
    .line 449
    move/from16 v10, v25

    .line 450
    .line 451
    const/4 v11, 0x0

    .line 452
    goto :goto_7

    .line 453
    :cond_11
    move-object/from16 v29, v4

    .line 454
    .line 455
    :cond_12
    add-int/lit8 v4, v15, 0xe

    .line 456
    .line 457
    if-ge v4, v14, :cond_13

    .line 458
    .line 459
    const/16 v13, 0x45

    .line 460
    .line 461
    if-ne v10, v13, :cond_13

    .line 462
    .line 463
    add-int/lit8 v8, v15, 0x7

    .line 464
    .line 465
    aget-byte v8, v0, v8

    .line 466
    .line 467
    const/16 v10, 0x4e

    .line 468
    .line 469
    if-ne v8, v10, :cond_13

    .line 470
    .line 471
    aget-byte v8, v0, v9

    .line 472
    .line 473
    const/16 v13, 0x43

    .line 474
    .line 475
    if-ne v8, v13, :cond_13

    .line 476
    .line 477
    add-int/lit8 v8, v15, 0x9

    .line 478
    .line 479
    aget-byte v8, v0, v8

    .line 480
    .line 481
    const/16 v9, 0x52

    .line 482
    .line 483
    if-ne v8, v9, :cond_13

    .line 484
    .line 485
    add-int/lit8 v8, v15, 0xa

    .line 486
    .line 487
    aget-byte v8, v0, v8

    .line 488
    .line 489
    const/16 v9, 0x59

    .line 490
    .line 491
    if-ne v8, v9, :cond_13

    .line 492
    .line 493
    add-int/lit8 v8, v15, 0xb

    .line 494
    .line 495
    aget-byte v9, v0, v8

    .line 496
    .line 497
    const/16 v10, 0x50

    .line 498
    .line 499
    if-ne v9, v10, :cond_13

    .line 500
    .line 501
    aget-byte v6, v0, v6

    .line 502
    .line 503
    const/16 v13, 0x54

    .line 504
    .line 505
    if-ne v6, v13, :cond_13

    .line 506
    .line 507
    add-int/lit8 v15, v15, 0xd

    .line 508
    .line 509
    aget-byte v6, v0, v15

    .line 510
    .line 511
    const/16 v13, 0x45

    .line 512
    .line 513
    if-ne v6, v13, :cond_13

    .line 514
    .line 515
    aget-byte v4, v0, v4

    .line 516
    .line 517
    const/16 v6, 0x44

    .line 518
    .line 519
    if-ne v4, v6, :cond_13

    .line 520
    .line 521
    move v3, v8

    .line 522
    move/from16 v8, v22

    .line 523
    .line 524
    goto/16 :goto_6

    .line 525
    .line 526
    :cond_13
    invoke-static {v0, v3, v14}, Lcom/jcraft/jsch/KeyPair;->n([BII)Z

    .line 527
    .line 528
    .line 529
    move-result v4

    .line 530
    if-eqz v4, :cond_15

    .line 531
    .line 532
    move/from16 v8, v25

    .line 533
    .line 534
    move v10, v8

    .line 535
    :goto_7
    add-int/lit8 v15, v3, 0x3

    .line 536
    .line 537
    :cond_14
    :goto_8
    move/from16 v9, v22

    .line 538
    .line 539
    move-object/from16 v3, v28

    .line 540
    .line 541
    move-object/from16 v4, v29

    .line 542
    .line 543
    const/16 v6, 0x2d

    .line 544
    .line 545
    goto/16 :goto_5

    .line 546
    .line 547
    :cond_15
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 548
    .line 549
    invoke-direct {v0, v12}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    throw v0

    .line 553
    :cond_16
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 554
    .line 555
    invoke-direct {v0, v12}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    .line 559
    :cond_17
    :goto_9
    move-object/from16 v29, v4

    .line 560
    .line 561
    goto :goto_a

    .line 562
    :cond_18
    move-object/from16 v28, v3

    .line 563
    .line 564
    goto :goto_9

    .line 565
    :goto_a
    const-class v3, Lcom/jcraft/jsch/Cipher;

    .line 566
    .line 567
    const/16 v4, 0x41

    .line 568
    .line 569
    if-ne v13, v4, :cond_1a

    .line 570
    .line 571
    add-int/lit8 v4, v15, 0x7

    .line 572
    .line 573
    if-ge v4, v14, :cond_1a

    .line 574
    .line 575
    add-int/lit8 v6, v15, 0x1

    .line 576
    .line 577
    :try_start_2
    aget-byte v6, v0, v6

    .line 578
    .line 579
    const/16 v9, 0x45

    .line 580
    .line 581
    if-ne v6, v9, :cond_1a

    .line 582
    .line 583
    add-int/lit8 v6, v15, 0x2

    .line 584
    .line 585
    aget-byte v6, v0, v6

    .line 586
    .line 587
    const/16 v9, 0x53

    .line 588
    .line 589
    if-ne v6, v9, :cond_1a

    .line 590
    .line 591
    add-int/lit8 v6, v15, 0x3

    .line 592
    .line 593
    aget-byte v6, v0, v6

    .line 594
    .line 595
    const/16 v9, 0x2d

    .line 596
    .line 597
    if-ne v6, v9, :cond_1a

    .line 598
    .line 599
    add-int/lit8 v6, v15, 0x4

    .line 600
    .line 601
    aget-byte v6, v0, v6

    .line 602
    .line 603
    const/16 v9, 0x32

    .line 604
    .line 605
    if-ne v6, v9, :cond_1a

    .line 606
    .line 607
    add-int/lit8 v6, v15, 0x5

    .line 608
    .line 609
    aget-byte v6, v0, v6

    .line 610
    .line 611
    const/16 v9, 0x35

    .line 612
    .line 613
    if-ne v6, v9, :cond_1a

    .line 614
    .line 615
    add-int/lit8 v6, v15, 0x6

    .line 616
    .line 617
    aget-byte v6, v0, v6

    .line 618
    .line 619
    const/16 v9, 0x36

    .line 620
    .line 621
    if-ne v6, v9, :cond_1a

    .line 622
    .line 623
    aget-byte v4, v0, v4

    .line 624
    .line 625
    const/16 v9, 0x2d

    .line 626
    .line 627
    if-ne v4, v9, :cond_1a

    .line 628
    .line 629
    add-int/lit8 v15, v15, 0x8

    .line 630
    .line 631
    invoke-static {v5}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    invoke-static {v4}, Lcom/jcraft/jsch/Session;->c(Ljava/lang/String;)Z

    .line 636
    .line 637
    .line 638
    move-result v4

    .line 639
    if-eqz v4, :cond_19

    .line 640
    .line 641
    invoke-static {v5}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 646
    .line 647
    .line 648
    move-result-object v4

    .line 649
    invoke-virtual {v4, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    const/4 v4, 0x0

    .line 654
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 655
    .line 656
    .line 657
    move-result-object v3

    .line 658
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    move-object/from16 v20, v3

    .line 663
    .line 664
    check-cast v20, Lcom/jcraft/jsch/Cipher;

    .line 665
    .line 666
    invoke-interface/range {v20 .. v20}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    .line 667
    .line 668
    .line 669
    move-result v3

    .line 670
    new-array v7, v3, [B

    .line 671
    .line 672
    goto/16 :goto_8

    .line 673
    .line 674
    :cond_19
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 675
    .line 676
    const-string v1, "privatekey: aes256-cbc is not available"

    .line 677
    .line 678
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    throw v0

    .line 682
    :cond_1a
    const/16 v9, 0x41

    .line 683
    .line 684
    if-ne v13, v9, :cond_1d

    .line 685
    .line 686
    add-int/lit8 v9, v15, 0x7

    .line 687
    .line 688
    if-ge v9, v14, :cond_1c

    .line 689
    .line 690
    add-int/lit8 v30, v15, 0x1

    .line 691
    .line 692
    aget-byte v6, v0, v30

    .line 693
    .line 694
    const/16 v4, 0x45

    .line 695
    .line 696
    if-ne v6, v4, :cond_1c

    .line 697
    .line 698
    add-int/lit8 v4, v15, 0x2

    .line 699
    .line 700
    aget-byte v4, v0, v4

    .line 701
    .line 702
    const/16 v6, 0x53

    .line 703
    .line 704
    if-ne v4, v6, :cond_1c

    .line 705
    .line 706
    add-int/lit8 v4, v15, 0x3

    .line 707
    .line 708
    aget-byte v4, v0, v4

    .line 709
    .line 710
    const/16 v6, 0x2d

    .line 711
    .line 712
    if-ne v4, v6, :cond_1c

    .line 713
    .line 714
    add-int/lit8 v4, v15, 0x4

    .line 715
    .line 716
    aget-byte v4, v0, v4

    .line 717
    .line 718
    const/16 v6, 0x31

    .line 719
    .line 720
    if-ne v4, v6, :cond_1c

    .line 721
    .line 722
    add-int/lit8 v4, v15, 0x5

    .line 723
    .line 724
    aget-byte v4, v0, v4

    .line 725
    .line 726
    const/16 v6, 0x39

    .line 727
    .line 728
    if-ne v4, v6, :cond_1c

    .line 729
    .line 730
    add-int/lit8 v4, v15, 0x6

    .line 731
    .line 732
    aget-byte v4, v0, v4

    .line 733
    .line 734
    const/16 v6, 0x32

    .line 735
    .line 736
    if-ne v4, v6, :cond_1c

    .line 737
    .line 738
    aget-byte v4, v0, v9

    .line 739
    .line 740
    const/16 v9, 0x2d

    .line 741
    .line 742
    if-ne v4, v9, :cond_1c

    .line 743
    .line 744
    add-int/lit8 v15, v15, 0x8

    .line 745
    .line 746
    invoke-static/range {v29 .. v29}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v4

    .line 750
    invoke-static {v4}, Lcom/jcraft/jsch/Session;->c(Ljava/lang/String;)Z

    .line 751
    .line 752
    .line 753
    move-result v4

    .line 754
    if-eqz v4, :cond_1b

    .line 755
    .line 756
    invoke-static/range {v29 .. v29}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v4

    .line 760
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 761
    .line 762
    .line 763
    move-result-object v4

    .line 764
    invoke-virtual {v4, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 765
    .line 766
    .line 767
    move-result-object v3

    .line 768
    const/4 v4, 0x0

    .line 769
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v3

    .line 777
    move-object/from16 v20, v3

    .line 778
    .line 779
    check-cast v20, Lcom/jcraft/jsch/Cipher;

    .line 780
    .line 781
    invoke-interface/range {v20 .. v20}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    .line 782
    .line 783
    .line 784
    move-result v3

    .line 785
    new-array v7, v3, [B

    .line 786
    .line 787
    goto/16 :goto_8

    .line 788
    .line 789
    :cond_1b
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 790
    .line 791
    const-string v1, "privatekey: aes192-cbc is not available"

    .line 792
    .line 793
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    throw v0

    .line 797
    :cond_1c
    const/16 v4, 0x41

    .line 798
    .line 799
    goto :goto_b

    .line 800
    :cond_1d
    move v4, v9

    .line 801
    :goto_b
    if-ne v13, v4, :cond_1f

    .line 802
    .line 803
    add-int/lit8 v4, v15, 0x7

    .line 804
    .line 805
    if-ge v4, v14, :cond_1f

    .line 806
    .line 807
    add-int/lit8 v6, v15, 0x1

    .line 808
    .line 809
    aget-byte v6, v0, v6

    .line 810
    .line 811
    const/16 v9, 0x45

    .line 812
    .line 813
    if-ne v6, v9, :cond_1f

    .line 814
    .line 815
    add-int/lit8 v6, v15, 0x2

    .line 816
    .line 817
    aget-byte v6, v0, v6

    .line 818
    .line 819
    const/16 v9, 0x53

    .line 820
    .line 821
    if-ne v6, v9, :cond_1f

    .line 822
    .line 823
    add-int/lit8 v6, v15, 0x3

    .line 824
    .line 825
    aget-byte v6, v0, v6

    .line 826
    .line 827
    const/16 v9, 0x2d

    .line 828
    .line 829
    if-ne v6, v9, :cond_1f

    .line 830
    .line 831
    add-int/lit8 v6, v15, 0x4

    .line 832
    .line 833
    aget-byte v6, v0, v6

    .line 834
    .line 835
    const/16 v9, 0x31

    .line 836
    .line 837
    if-ne v6, v9, :cond_1f

    .line 838
    .line 839
    add-int/lit8 v6, v15, 0x5

    .line 840
    .line 841
    aget-byte v6, v0, v6

    .line 842
    .line 843
    const/16 v9, 0x32

    .line 844
    .line 845
    if-ne v6, v9, :cond_1f

    .line 846
    .line 847
    add-int/lit8 v6, v15, 0x6

    .line 848
    .line 849
    aget-byte v6, v0, v6

    .line 850
    .line 851
    const/16 v9, 0x38

    .line 852
    .line 853
    if-ne v6, v9, :cond_1f

    .line 854
    .line 855
    aget-byte v4, v0, v4

    .line 856
    .line 857
    const/16 v9, 0x2d

    .line 858
    .line 859
    if-ne v4, v9, :cond_1f

    .line 860
    .line 861
    add-int/lit8 v15, v15, 0x8

    .line 862
    .line 863
    invoke-static/range {v28 .. v28}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v4

    .line 867
    invoke-static {v4}, Lcom/jcraft/jsch/Session;->c(Ljava/lang/String;)Z

    .line 868
    .line 869
    .line 870
    move-result v4

    .line 871
    if-eqz v4, :cond_1e

    .line 872
    .line 873
    invoke-static/range {v28 .. v28}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v4

    .line 877
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 878
    .line 879
    .line 880
    move-result-object v4

    .line 881
    invoke-virtual {v4, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 882
    .line 883
    .line 884
    move-result-object v3

    .line 885
    const/4 v4, 0x0

    .line 886
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 887
    .line 888
    .line 889
    move-result-object v3

    .line 890
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v3

    .line 894
    move-object/from16 v20, v3

    .line 895
    .line 896
    check-cast v20, Lcom/jcraft/jsch/Cipher;

    .line 897
    .line 898
    invoke-interface/range {v20 .. v20}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    .line 899
    .line 900
    .line 901
    move-result v3

    .line 902
    new-array v7, v3, [B

    .line 903
    .line 904
    goto/16 :goto_8

    .line 905
    .line 906
    :cond_1e
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 907
    .line 908
    const-string v1, "privatekey: aes128-cbc is not available"

    .line 909
    .line 910
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    throw v0

    .line 914
    :cond_1f
    const/16 v3, 0x43

    .line 915
    .line 916
    if-ne v13, v3, :cond_22

    .line 917
    .line 918
    add-int/lit8 v3, v15, 0x3

    .line 919
    .line 920
    if-ge v3, v14, :cond_22

    .line 921
    .line 922
    add-int/lit8 v4, v15, 0x1

    .line 923
    .line 924
    aget-byte v4, v0, v4

    .line 925
    .line 926
    const/16 v6, 0x42

    .line 927
    .line 928
    if-ne v4, v6, :cond_22

    .line 929
    .line 930
    add-int/lit8 v4, v15, 0x2

    .line 931
    .line 932
    aget-byte v4, v0, v4

    .line 933
    .line 934
    const/16 v6, 0x43

    .line 935
    .line 936
    if-ne v4, v6, :cond_22

    .line 937
    .line 938
    aget-byte v3, v0, v3

    .line 939
    .line 940
    const/16 v4, 0x2c

    .line 941
    .line 942
    if-ne v3, v4, :cond_22

    .line 943
    .line 944
    add-int/lit8 v15, v15, 0x4

    .line 945
    .line 946
    const/4 v3, 0x0

    .line 947
    :goto_c
    array-length v4, v7

    .line 948
    if-ge v3, v4, :cond_14

    .line 949
    .line 950
    add-int/lit8 v4, v15, 0x1

    .line 951
    .line 952
    aget-byte v6, v0, v15

    .line 953
    .line 954
    const/16 v9, 0x30

    .line 955
    .line 956
    if-gt v9, v6, :cond_20

    .line 957
    .line 958
    const/16 v12, 0x39

    .line 959
    .line 960
    if-gt v6, v12, :cond_20

    .line 961
    .line 962
    add-int/lit8 v6, v6, -0x30

    .line 963
    .line 964
    :goto_d
    int-to-byte v6, v6

    .line 965
    goto :goto_e

    .line 966
    :cond_20
    add-int/lit8 v6, v6, -0x57

    .line 967
    .line 968
    goto :goto_d

    .line 969
    :goto_e
    shl-int/lit8 v6, v6, 0x4

    .line 970
    .line 971
    and-int/lit16 v6, v6, 0xf0

    .line 972
    .line 973
    add-int/lit8 v15, v15, 0x2

    .line 974
    .line 975
    aget-byte v4, v0, v4

    .line 976
    .line 977
    const/16 v12, 0x39

    .line 978
    .line 979
    if-gt v9, v4, :cond_21

    .line 980
    .line 981
    if-gt v4, v12, :cond_21

    .line 982
    .line 983
    add-int/lit8 v4, v4, -0x30

    .line 984
    .line 985
    :goto_f
    int-to-byte v4, v4

    .line 986
    goto :goto_10

    .line 987
    :cond_21
    add-int/lit8 v4, v4, -0x57

    .line 988
    .line 989
    goto :goto_f

    .line 990
    :goto_10
    and-int/lit8 v4, v4, 0xf

    .line 991
    .line 992
    add-int/2addr v6, v4

    .line 993
    int-to-byte v4, v6

    .line 994
    aput-byte v4, v7, v3

    .line 995
    .line 996
    add-int/lit8 v3, v3, 0x1

    .line 997
    .line 998
    goto :goto_c

    .line 999
    :cond_22
    const/16 v3, 0xd

    .line 1000
    .line 1001
    if-ne v13, v3, :cond_23

    .line 1002
    .line 1003
    add-int/lit8 v3, v15, 0x1

    .line 1004
    .line 1005
    array-length v4, v0

    .line 1006
    if-ge v3, v4, :cond_23

    .line 1007
    .line 1008
    aget-byte v4, v0, v3

    .line 1009
    .line 1010
    const/16 v6, 0xa

    .line 1011
    .line 1012
    if-ne v4, v6, :cond_24

    .line 1013
    .line 1014
    move v15, v3

    .line 1015
    goto/16 :goto_8

    .line 1016
    .line 1017
    :cond_23
    const/16 v6, 0xa

    .line 1018
    .line 1019
    :cond_24
    if-ne v13, v6, :cond_2a

    .line 1020
    .line 1021
    add-int/lit8 v3, v15, 0x1

    .line 1022
    .line 1023
    array-length v4, v0

    .line 1024
    if-ge v3, v4, :cond_2a

    .line 1025
    .line 1026
    aget-byte v4, v0, v3

    .line 1027
    .line 1028
    if-ne v4, v6, :cond_25

    .line 1029
    .line 1030
    add-int/lit8 v15, v15, 0x2

    .line 1031
    .line 1032
    goto :goto_14

    .line 1033
    :cond_25
    const/16 v6, 0xd

    .line 1034
    .line 1035
    if-ne v4, v6, :cond_26

    .line 1036
    .line 1037
    add-int/lit8 v4, v15, 0x2

    .line 1038
    .line 1039
    array-length v6, v0

    .line 1040
    if-ge v4, v6, :cond_26

    .line 1041
    .line 1042
    aget-byte v4, v0, v4

    .line 1043
    .line 1044
    const/16 v6, 0xa

    .line 1045
    .line 1046
    if-ne v4, v6, :cond_26

    .line 1047
    .line 1048
    add-int/lit8 v15, v15, 0x3

    .line 1049
    .line 1050
    goto :goto_14

    .line 1051
    :cond_26
    move v4, v3

    .line 1052
    :goto_11
    array-length v6, v0

    .line 1053
    if-ge v4, v6, :cond_27

    .line 1054
    .line 1055
    aget-byte v6, v0, v4

    .line 1056
    .line 1057
    const/16 v9, 0xa

    .line 1058
    .line 1059
    if-ne v6, v9, :cond_28

    .line 1060
    .line 1061
    :cond_27
    move/from16 v4, v22

    .line 1062
    .line 1063
    goto :goto_12

    .line 1064
    :cond_28
    const/16 v9, 0x3a

    .line 1065
    .line 1066
    if-ne v6, v9, :cond_29

    .line 1067
    .line 1068
    goto :goto_13

    .line 1069
    :cond_29
    add-int/lit8 v4, v4, 0x1

    .line 1070
    .line 1071
    goto :goto_11

    .line 1072
    :goto_12
    move v15, v3

    .line 1073
    if-eq v8, v4, :cond_2c

    .line 1074
    .line 1075
    const/4 v11, 0x0

    .line 1076
    goto :goto_14

    .line 1077
    :cond_2a
    :goto_13
    add-int/lit8 v15, v15, 0x1

    .line 1078
    .line 1079
    move-object/from16 v3, v28

    .line 1080
    .line 1081
    move-object/from16 v4, v29

    .line 1082
    .line 1083
    const/16 v6, 0x2d

    .line 1084
    .line 1085
    const/4 v9, 0x3

    .line 1086
    goto/16 :goto_5

    .line 1087
    .line 1088
    :cond_2b
    const/16 v25, 0x4

    .line 1089
    .line 1090
    :cond_2c
    :goto_14
    if-eqz v0, :cond_37

    .line 1091
    .line 1092
    if-eqz v10, :cond_36

    .line 1093
    .line 1094
    move v3, v15

    .line 1095
    :goto_15
    if-ge v3, v14, :cond_2e

    .line 1096
    .line 1097
    aget-byte v4, v0, v3

    .line 1098
    .line 1099
    const/16 v9, 0x2d

    .line 1100
    .line 1101
    if-ne v4, v9, :cond_2d

    .line 1102
    .line 1103
    goto :goto_16

    .line 1104
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    .line 1105
    .line 1106
    goto :goto_15

    .line 1107
    :cond_2e
    :goto_16
    sub-int/2addr v14, v3

    .line 1108
    if-eqz v14, :cond_35

    .line 1109
    .line 1110
    sub-int/2addr v3, v15

    .line 1111
    if-eqz v3, :cond_35

    .line 1112
    .line 1113
    new-array v4, v3, [B

    .line 1114
    .line 1115
    const/4 v5, 0x0

    .line 1116
    invoke-static {v0, v15, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1117
    .line 1118
    .line 1119
    const/4 v5, 0x0

    .line 1120
    :goto_17
    if-ge v5, v3, :cond_33

    .line 1121
    .line 1122
    aget-byte v6, v4, v5

    .line 1123
    .line 1124
    const/16 v9, 0xa

    .line 1125
    .line 1126
    if-ne v6, v9, :cond_31

    .line 1127
    .line 1128
    if-lez v5, :cond_2f

    .line 1129
    .line 1130
    add-int/lit8 v6, v5, -0x1

    .line 1131
    .line 1132
    aget-byte v6, v4, v6

    .line 1133
    .line 1134
    const/16 v9, 0xd

    .line 1135
    .line 1136
    if-ne v6, v9, :cond_2f

    .line 1137
    .line 1138
    move/from16 v6, v17

    .line 1139
    .line 1140
    goto :goto_18

    .line 1141
    :cond_2f
    const/4 v6, 0x0

    .line 1142
    :goto_18
    add-int/lit8 v9, v5, 0x1

    .line 1143
    .line 1144
    sub-int v13, v5, v6

    .line 1145
    .line 1146
    sub-int v14, v3, v9

    .line 1147
    .line 1148
    invoke-static {v4, v9, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1149
    .line 1150
    .line 1151
    if-eqz v6, :cond_30

    .line 1152
    .line 1153
    add-int/lit8 v3, v3, -0x1

    .line 1154
    .line 1155
    add-int/lit8 v5, v5, -0x1

    .line 1156
    .line 1157
    :cond_30
    add-int/lit8 v3, v3, -0x1

    .line 1158
    .line 1159
    goto :goto_17

    .line 1160
    :cond_31
    const/16 v9, 0x2d

    .line 1161
    .line 1162
    if-ne v6, v9, :cond_32

    .line 1163
    .line 1164
    goto :goto_19

    .line 1165
    :cond_32
    add-int/lit8 v5, v5, 0x1

    .line 1166
    .line 1167
    goto :goto_17

    .line 1168
    :cond_33
    :goto_19
    if-lez v5, :cond_34

    .line 1169
    .line 1170
    const/4 v3, 0x0

    .line 1171
    invoke-static {v4, v3, v5}, Lcom/jcraft/jsch/Util;->i([BII)[B

    .line 1172
    .line 1173
    .line 1174
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0

    .line 1175
    goto :goto_1a

    .line 1176
    :cond_34
    const/4 v5, 0x0

    .line 1177
    :goto_1a
    :try_start_3
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->e([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_2

    .line 1178
    .line 1179
    .line 1180
    :goto_1b
    move/from16 v3, v25

    .line 1181
    .line 1182
    goto :goto_1d

    .line 1183
    :catch_2
    move-exception v0

    .line 1184
    :goto_1c
    move-object v13, v5

    .line 1185
    goto/16 :goto_3c

    .line 1186
    .line 1187
    :catch_3
    move-exception v0

    .line 1188
    goto :goto_1c

    .line 1189
    :cond_35
    :try_start_4
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 1190
    .line 1191
    invoke-direct {v0, v12}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 1192
    .line 1193
    .line 1194
    throw v0

    .line 1195
    :cond_36
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 1196
    .line 1197
    invoke-direct {v0, v12}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 1198
    .line 1199
    .line 1200
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_0

    .line 1201
    :cond_37
    const/4 v5, 0x0

    .line 1202
    goto :goto_1b

    .line 1203
    :goto_1d
    if-ne v8, v3, :cond_38

    .line 1204
    .line 1205
    :try_start_5
    invoke-static {v1, v5}, Lcom/jcraft/jsch/KeyPair;->q(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)Lcom/jcraft/jsch/KeyPair;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v0

    .line 1209
    return-object v0

    .line 1210
    :cond_38
    if-eqz v5, :cond_3b

    .line 1211
    .line 1212
    array-length v4, v5

    .line 1213
    if-le v4, v3, :cond_3b

    .line 1214
    .line 1215
    const/16 v21, 0x0

    .line 1216
    .line 1217
    aget-byte v3, v5, v21

    .line 1218
    .line 1219
    const/16 v4, 0x3f

    .line 1220
    .line 1221
    if-ne v3, v4, :cond_3b

    .line 1222
    .line 1223
    aget-byte v3, v5, v17

    .line 1224
    .line 1225
    const/16 v4, 0x6f

    .line 1226
    .line 1227
    if-ne v3, v4, :cond_3b

    .line 1228
    .line 1229
    aget-byte v3, v5, v19

    .line 1230
    .line 1231
    const/4 v4, -0x7

    .line 1232
    if-ne v3, v4, :cond_3b

    .line 1233
    .line 1234
    const/16 v22, 0x3

    .line 1235
    .line 1236
    aget-byte v3, v5, v22

    .line 1237
    .line 1238
    const/16 v4, -0x15

    .line 1239
    .line 1240
    if-ne v3, v4, :cond_3b

    .line 1241
    .line 1242
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    .line 1243
    .line 1244
    invoke-direct {v3, v5}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 1257
    .line 1258
    .line 1259
    move-result-object v4

    .line 1260
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v4

    .line 1264
    const-string v6, "3des-cbc"

    .line 1265
    .line 1266
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1267
    .line 1268
    .line 1269
    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_2

    .line 1270
    const-string v9, " is not supported for this privatekey format"

    .line 1271
    .line 1272
    const-string v11, "cipher "

    .line 1273
    .line 1274
    if-nez v6, :cond_3a

    .line 1275
    .line 1276
    :try_start_6
    const-string v6, "none"

    .line 1277
    .line 1278
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1279
    .line 1280
    .line 1281
    move-result v6

    .line 1282
    if-eqz v6, :cond_39

    .line 1283
    .line 1284
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1288
    .line 1289
    .line 1290
    array-length v4, v5

    .line 1291
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getOffSet()I

    .line 1292
    .line 1293
    .line 1294
    move-result v6

    .line 1295
    sub-int/2addr v4, v6

    .line 1296
    new-array v4, v4, [B

    .line 1297
    .line 1298
    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 1299
    .line 1300
    .line 1301
    move-object v5, v4

    .line 1302
    const/4 v11, 0x0

    .line 1303
    goto :goto_1e

    .line 1304
    :cond_39
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 1305
    .line 1306
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1307
    .line 1308
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v1

    .line 1324
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 1325
    .line 1326
    .line 1327
    throw v0

    .line 1328
    :cond_3a
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1329
    .line 1330
    .line 1331
    array-length v0, v5

    .line 1332
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getOffSet()I

    .line 1333
    .line 1334
    .line 1335
    move-result v1

    .line 1336
    sub-int/2addr v0, v1

    .line 1337
    new-array v13, v0, [B

    .line 1338
    .line 1339
    invoke-virtual {v3, v13}, Lcom/jcraft/jsch/Buffer;->getByte([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_6 .. :try_end_6} :catch_2

    .line 1340
    .line 1341
    .line 1342
    :try_start_7
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 1343
    .line 1344
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v1

    .line 1362
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 1363
    .line 1364
    .line 1365
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/LinkageError; {:try_start_7 .. :try_end_7} :catch_4

    .line 1366
    :catch_4
    move-exception v0

    .line 1367
    goto/16 :goto_3c

    .line 1368
    .line 1369
    :catch_5
    move-exception v0

    .line 1370
    goto/16 :goto_3c

    .line 1371
    .line 1372
    :cond_3b
    :goto_1e
    const-string v6, ""

    .line 1373
    .line 1374
    if-eqz v2, :cond_63

    .line 1375
    .line 1376
    :try_start_8
    array-length v9, v2

    .line 1377
    array-length v13, v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/LinkageError; {:try_start_8 .. :try_end_8} :catch_2

    .line 1378
    const/4 v4, 0x4

    .line 1379
    const/16 v26, 0x6

    .line 1380
    .line 1381
    if-le v13, v4, :cond_4a

    .line 1382
    .line 1383
    const/16 v21, 0x0

    .line 1384
    .line 1385
    :try_start_9
    aget-byte v4, v2, v21

    .line 1386
    .line 1387
    const/16 v13, 0x2d

    .line 1388
    .line 1389
    if-ne v4, v13, :cond_4a

    .line 1390
    .line 1391
    aget-byte v4, v2, v17

    .line 1392
    .line 1393
    if-ne v4, v13, :cond_4a

    .line 1394
    .line 1395
    aget-byte v4, v2, v19

    .line 1396
    .line 1397
    if-ne v4, v13, :cond_4a

    .line 1398
    .line 1399
    const/16 v22, 0x3

    .line 1400
    .line 1401
    aget-byte v4, v2, v22

    .line 1402
    .line 1403
    if-ne v4, v13, :cond_4a

    .line 1404
    .line 1405
    const/4 v4, 0x0

    .line 1406
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    .line 1407
    .line 1408
    array-length v13, v2

    .line 1409
    if-le v13, v4, :cond_3d

    .line 1410
    .line 1411
    aget-byte v13, v2, v4

    .line 1412
    .line 1413
    const/16 v3, 0xa

    .line 1414
    .line 1415
    if-ne v13, v3, :cond_3c

    .line 1416
    .line 1417
    goto :goto_20

    .line 1418
    :catch_6
    move-exception v0

    .line 1419
    :goto_1f
    const/4 v3, 0x0

    .line 1420
    goto/16 :goto_38

    .line 1421
    .line 1422
    :cond_3d
    :goto_20
    array-length v3, v2

    .line 1423
    if-gt v3, v4, :cond_3e

    .line 1424
    .line 1425
    const/4 v3, 0x0

    .line 1426
    goto :goto_21

    .line 1427
    :cond_3e
    move/from16 v3, v17

    .line 1428
    .line 1429
    :goto_21
    if-eqz v3, :cond_43

    .line 1430
    .line 1431
    aget-byte v13, v2, v4

    .line 1432
    .line 1433
    const/16 v14, 0xa

    .line 1434
    .line 1435
    if-ne v13, v14, :cond_42

    .line 1436
    .line 1437
    add-int/lit8 v13, v4, 0x1

    .line 1438
    .line 1439
    move v15, v13

    .line 1440
    :goto_22
    array-length v14, v2

    .line 1441
    if-ge v15, v14, :cond_41

    .line 1442
    .line 1443
    aget-byte v14, v2, v15

    .line 1444
    .line 1445
    const/16 v0, 0xa

    .line 1446
    .line 1447
    if-ne v14, v0, :cond_3f

    .line 1448
    .line 1449
    goto :goto_23

    .line 1450
    :cond_3f
    const/16 v0, 0x3a

    .line 1451
    .line 1452
    if-ne v14, v0, :cond_40

    .line 1453
    .line 1454
    goto :goto_24

    .line 1455
    :cond_40
    add-int/lit8 v15, v15, 0x1

    .line 1456
    .line 1457
    move-object/from16 v0, p1

    .line 1458
    .line 1459
    goto :goto_22

    .line 1460
    :cond_41
    :goto_23
    move v4, v13

    .line 1461
    goto :goto_25

    .line 1462
    :cond_42
    const/16 v0, 0x3a

    .line 1463
    .line 1464
    :goto_24
    add-int/lit8 v4, v4, 0x1

    .line 1465
    .line 1466
    move-object/from16 v0, p1

    .line 1467
    .line 1468
    goto :goto_21

    .line 1469
    :cond_43
    :goto_25
    array-length v0, v2

    .line 1470
    if-gt v0, v4, :cond_44

    .line 1471
    .line 1472
    const/4 v3, 0x0

    .line 1473
    :cond_44
    move v0, v4

    .line 1474
    :goto_26
    if-eqz v3, :cond_47

    .line 1475
    .line 1476
    if-ge v0, v9, :cond_47

    .line 1477
    .line 1478
    aget-byte v13, v2, v0

    .line 1479
    .line 1480
    const/16 v14, 0xa

    .line 1481
    .line 1482
    if-ne v13, v14, :cond_45

    .line 1483
    .line 1484
    add-int/lit8 v13, v0, 0x1

    .line 1485
    .line 1486
    sub-int v14, v9, v0

    .line 1487
    .line 1488
    add-int/lit8 v14, v14, -0x1

    .line 1489
    .line 1490
    invoke-static {v2, v13, v2, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1491
    .line 1492
    .line 1493
    add-int/lit8 v9, v9, -0x1

    .line 1494
    .line 1495
    goto :goto_26

    .line 1496
    :cond_45
    const/16 v14, 0x2d

    .line 1497
    .line 1498
    if-ne v13, v14, :cond_46

    .line 1499
    .line 1500
    goto :goto_27

    .line 1501
    :cond_46
    add-int/lit8 v0, v0, 0x1

    .line 1502
    .line 1503
    goto :goto_26

    .line 1504
    :cond_47
    :goto_27
    if-eqz v3, :cond_61

    .line 1505
    .line 1506
    sub-int/2addr v0, v4

    .line 1507
    invoke-static {v2, v4, v0}, Lcom/jcraft/jsch/Util;->i([BII)[B

    .line 1508
    .line 1509
    .line 1510
    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_9 .. :try_end_9} :catch_2

    .line 1511
    if-eqz p1, :cond_48

    .line 1512
    .line 1513
    const/4 v4, 0x4

    .line 1514
    if-ne v10, v4, :cond_62

    .line 1515
    .line 1516
    :cond_48
    :try_start_a
    aget-byte v0, v3, v16
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_a .. :try_end_a} :catch_2

    .line 1517
    .line 1518
    const/16 v4, 0x64

    .line 1519
    .line 1520
    if-ne v0, v4, :cond_49

    .line 1521
    .line 1522
    move/from16 v10, v17

    .line 1523
    .line 1524
    goto/16 :goto_37

    .line 1525
    .line 1526
    :cond_49
    const/16 v4, 0x72

    .line 1527
    .line 1528
    if-ne v0, v4, :cond_62

    .line 1529
    .line 1530
    move/from16 v10, v19

    .line 1531
    .line 1532
    goto/16 :goto_37

    .line 1533
    .line 1534
    :catch_7
    move-exception v0

    .line 1535
    goto/16 :goto_38

    .line 1536
    .line 1537
    :cond_4a
    const/16 v21, 0x0

    .line 1538
    .line 1539
    :try_start_b
    aget-byte v0, v2, v21

    .line 1540
    .line 1541
    const/16 v3, 0x65

    .line 1542
    .line 1543
    const/16 v4, 0x73

    .line 1544
    .line 1545
    const/16 v13, 0x20

    .line 1546
    .line 1547
    if-ne v0, v4, :cond_57

    .line 1548
    .line 1549
    aget-byte v14, v2, v17

    .line 1550
    .line 1551
    if-ne v14, v4, :cond_57

    .line 1552
    .line 1553
    aget-byte v14, v2, v19

    .line 1554
    .line 1555
    const/16 v15, 0x68

    .line 1556
    .line 1557
    if-ne v14, v15, :cond_57

    .line 1558
    .line 1559
    const/16 v22, 0x3

    .line 1560
    .line 1561
    aget-byte v14, v2, v22

    .line 1562
    .line 1563
    const/16 v15, 0x2d

    .line 1564
    .line 1565
    if-ne v14, v15, :cond_57

    .line 1566
    .line 1567
    if-nez p1, :cond_4e

    .line 1568
    .line 1569
    array-length v0, v2

    .line 1570
    const/4 v4, 0x7

    .line 1571
    if-le v0, v4, :cond_4e

    .line 1572
    .line 1573
    const/16 v25, 0x4

    .line 1574
    .line 1575
    aget-byte v0, v2, v25

    .line 1576
    .line 1577
    const/16 v4, 0x64

    .line 1578
    .line 1579
    if-ne v0, v4, :cond_4b

    .line 1580
    .line 1581
    move/from16 v10, v17

    .line 1582
    .line 1583
    goto :goto_28

    .line 1584
    :cond_4b
    const/16 v4, 0x72

    .line 1585
    .line 1586
    if-ne v0, v4, :cond_4c

    .line 1587
    .line 1588
    move/from16 v10, v19

    .line 1589
    .line 1590
    goto :goto_28

    .line 1591
    :cond_4c
    if-ne v0, v3, :cond_4d

    .line 1592
    .line 1593
    aget-byte v4, v2, v26

    .line 1594
    .line 1595
    const/16 v14, 0x32

    .line 1596
    .line 1597
    if-ne v4, v14, :cond_4d

    .line 1598
    .line 1599
    const/4 v10, 0x5

    .line 1600
    goto :goto_28

    .line 1601
    :cond_4d
    if-ne v0, v3, :cond_4e

    .line 1602
    .line 1603
    aget-byte v0, v2, v26

    .line 1604
    .line 1605
    const/16 v3, 0x34

    .line 1606
    .line 1607
    if-ne v0, v3, :cond_4e

    .line 1608
    .line 1609
    move/from16 v10, v26

    .line 1610
    .line 1611
    :cond_4e
    :goto_28
    const/4 v0, 0x0

    .line 1612
    :goto_29
    if-ge v0, v9, :cond_50

    .line 1613
    .line 1614
    aget-byte v3, v2, v0

    .line 1615
    .line 1616
    if-ne v3, v13, :cond_4f

    .line 1617
    .line 1618
    goto :goto_2a

    .line 1619
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    .line 1620
    .line 1621
    goto :goto_29

    .line 1622
    :cond_50
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    .line 1623
    .line 1624
    if-ge v0, v9, :cond_53

    .line 1625
    .line 1626
    move v3, v0

    .line 1627
    :goto_2b
    if-ge v3, v9, :cond_52

    .line 1628
    .line 1629
    aget-byte v4, v2, v3

    .line 1630
    .line 1631
    if-ne v4, v13, :cond_51

    .line 1632
    .line 1633
    goto :goto_2c

    .line 1634
    :cond_51
    add-int/lit8 v3, v3, 0x1

    .line 1635
    .line 1636
    goto :goto_2b

    .line 1637
    :cond_52
    :goto_2c
    sub-int v4, v3, v0

    .line 1638
    .line 1639
    invoke-static {v2, v0, v4}, Lcom/jcraft/jsch/Util;->i([BII)[B

    .line 1640
    .line 1641
    .line 1642
    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_b .. :try_end_b} :catch_2

    .line 1643
    move/from16 v31, v3

    .line 1644
    .line 1645
    move-object v3, v0

    .line 1646
    move/from16 v0, v31

    .line 1647
    .line 1648
    goto :goto_2d

    .line 1649
    :cond_53
    const/4 v3, 0x0

    .line 1650
    :goto_2d
    add-int/lit8 v4, v0, 0x1

    .line 1651
    .line 1652
    if-ge v0, v9, :cond_62

    .line 1653
    .line 1654
    move v0, v4

    .line 1655
    :goto_2e
    if-ge v0, v9, :cond_55

    .line 1656
    .line 1657
    :try_start_c
    aget-byte v13, v2, v0

    .line 1658
    .line 1659
    const/16 v14, 0xa

    .line 1660
    .line 1661
    if-ne v13, v14, :cond_54

    .line 1662
    .line 1663
    goto :goto_2f

    .line 1664
    :cond_54
    add-int/lit8 v0, v0, 0x1

    .line 1665
    .line 1666
    goto :goto_2e

    .line 1667
    :cond_55
    :goto_2f
    if-lez v0, :cond_56

    .line 1668
    .line 1669
    add-int/lit8 v9, v0, -0x1

    .line 1670
    .line 1671
    aget-byte v9, v2, v9

    .line 1672
    .line 1673
    const/16 v13, 0xd

    .line 1674
    .line 1675
    if-ne v9, v13, :cond_56

    .line 1676
    .line 1677
    add-int/lit8 v0, v0, -0x1

    .line 1678
    .line 1679
    :cond_56
    if-ge v4, v0, :cond_62

    .line 1680
    .line 1681
    sub-int/2addr v0, v4

    .line 1682
    invoke-static {v2, v4, v0}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v6
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_c .. :try_end_c} :catch_2

    .line 1686
    goto/16 :goto_37

    .line 1687
    .line 1688
    :cond_57
    if-ne v0, v3, :cond_61

    .line 1689
    .line 1690
    :try_start_d
    aget-byte v0, v2, v17

    .line 1691
    .line 1692
    const/16 v3, 0x63

    .line 1693
    .line 1694
    if-ne v0, v3, :cond_61

    .line 1695
    .line 1696
    aget-byte v0, v2, v19

    .line 1697
    .line 1698
    const/16 v3, 0x64

    .line 1699
    .line 1700
    if-ne v0, v3, :cond_61

    .line 1701
    .line 1702
    const/16 v22, 0x3

    .line 1703
    .line 1704
    aget-byte v0, v2, v22

    .line 1705
    .line 1706
    if-ne v0, v4, :cond_61

    .line 1707
    .line 1708
    if-nez p1, :cond_58

    .line 1709
    .line 1710
    array-length v0, v2

    .line 1711
    const/4 v4, 0x7

    .line 1712
    if-le v0, v4, :cond_58

    .line 1713
    .line 1714
    const/4 v10, 0x3

    .line 1715
    :cond_58
    const/4 v0, 0x0

    .line 1716
    :goto_30
    if-ge v0, v9, :cond_5a

    .line 1717
    .line 1718
    aget-byte v3, v2, v0

    .line 1719
    .line 1720
    if-ne v3, v13, :cond_59

    .line 1721
    .line 1722
    goto :goto_31

    .line 1723
    :cond_59
    add-int/lit8 v0, v0, 0x1

    .line 1724
    .line 1725
    goto :goto_30

    .line 1726
    :cond_5a
    :goto_31
    add-int/lit8 v0, v0, 0x1

    .line 1727
    .line 1728
    if-ge v0, v9, :cond_5d

    .line 1729
    .line 1730
    move v3, v0

    .line 1731
    :goto_32
    if-ge v3, v9, :cond_5c

    .line 1732
    .line 1733
    aget-byte v4, v2, v3

    .line 1734
    .line 1735
    if-ne v4, v13, :cond_5b

    .line 1736
    .line 1737
    goto :goto_33

    .line 1738
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    .line 1739
    .line 1740
    goto :goto_32

    .line 1741
    :cond_5c
    :goto_33
    sub-int v4, v3, v0

    .line 1742
    .line 1743
    invoke-static {v2, v0, v4}, Lcom/jcraft/jsch/Util;->i([BII)[B

    .line 1744
    .line 1745
    .line 1746
    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_d .. :try_end_d} :catch_2

    .line 1747
    move/from16 v31, v3

    .line 1748
    .line 1749
    move-object v3, v0

    .line 1750
    move/from16 v0, v31

    .line 1751
    .line 1752
    goto :goto_34

    .line 1753
    :cond_5d
    const/4 v3, 0x0

    .line 1754
    :goto_34
    add-int/lit8 v4, v0, 0x1

    .line 1755
    .line 1756
    if-ge v0, v9, :cond_62

    .line 1757
    .line 1758
    move v0, v4

    .line 1759
    :goto_35
    if-ge v0, v9, :cond_5f

    .line 1760
    .line 1761
    :try_start_e
    aget-byte v13, v2, v0

    .line 1762
    .line 1763
    const/16 v14, 0xa

    .line 1764
    .line 1765
    if-ne v13, v14, :cond_5e

    .line 1766
    .line 1767
    goto :goto_36

    .line 1768
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    .line 1769
    .line 1770
    goto :goto_35

    .line 1771
    :cond_5f
    :goto_36
    if-lez v0, :cond_60

    .line 1772
    .line 1773
    add-int/lit8 v9, v0, -0x1

    .line 1774
    .line 1775
    aget-byte v9, v2, v9

    .line 1776
    .line 1777
    const/16 v13, 0xd

    .line 1778
    .line 1779
    if-ne v9, v13, :cond_60

    .line 1780
    .line 1781
    add-int/lit8 v0, v0, -0x1

    .line 1782
    .line 1783
    :cond_60
    if-ge v4, v0, :cond_62

    .line 1784
    .line 1785
    sub-int/2addr v0, v4

    .line 1786
    invoke-static {v2, v4, v0}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_e .. :try_end_e} :catch_2

    .line 1790
    goto :goto_37

    .line 1791
    :cond_61
    const/4 v3, 0x0

    .line 1792
    :cond_62
    :goto_37
    move-object v4, v3

    .line 1793
    move/from16 v3, v17

    .line 1794
    .line 1795
    goto :goto_39

    .line 1796
    :catch_8
    move-exception v0

    .line 1797
    const/16 v26, 0x6

    .line 1798
    .line 1799
    goto/16 :goto_1f

    .line 1800
    .line 1801
    :goto_38
    :try_start_f
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v4

    .line 1805
    move/from16 v9, v19

    .line 1806
    .line 1807
    invoke-interface {v4, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1808
    .line 1809
    .line 1810
    move-result v4

    .line 1811
    if-eqz v4, :cond_62

    .line 1812
    .line 1813
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v4

    .line 1817
    const-string v13, "failed to parse public key"

    .line 1818
    .line 1819
    invoke-interface {v4, v9, v13, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1820
    .line 1821
    .line 1822
    goto :goto_37

    .line 1823
    :cond_63
    const/16 v26, 0x6

    .line 1824
    .line 1825
    move/from16 v3, v17

    .line 1826
    .line 1827
    const/4 v4, 0x0

    .line 1828
    :goto_39
    if-ne v10, v3, :cond_64

    .line 1829
    .line 1830
    new-instance v13, Lcom/jcraft/jsch/KeyPairDSA;

    .line 1831
    .line 1832
    invoke-direct {v13, v1}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 1833
    .line 1834
    .line 1835
    goto :goto_3b

    .line 1836
    :cond_64
    const/4 v9, 0x2

    .line 1837
    if-ne v10, v9, :cond_65

    .line 1838
    .line 1839
    new-instance v13, Lcom/jcraft/jsch/KeyPairRSA;

    .line 1840
    .line 1841
    invoke-direct {v13, v1}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 1842
    .line 1843
    .line 1844
    goto :goto_3b

    .line 1845
    :cond_65
    const/4 v3, 0x3

    .line 1846
    if-ne v10, v3, :cond_66

    .line 1847
    .line 1848
    new-instance v13, Lcom/jcraft/jsch/KeyPairECDSA;

    .line 1849
    .line 1850
    invoke-direct {v13, v1, v2}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)V

    .line 1851
    .line 1852
    .line 1853
    goto :goto_3b

    .line 1854
    :cond_66
    const/4 v3, 0x5

    .line 1855
    if-ne v10, v3, :cond_67

    .line 1856
    .line 1857
    new-instance v0, Lcom/jcraft/jsch/KeyPairEd25519;

    .line 1858
    .line 1859
    const/4 v3, 0x0

    .line 1860
    invoke-direct {v0, v1, v2, v3}, Lcom/jcraft/jsch/KeyPairEd25519;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    .line 1861
    .line 1862
    .line 1863
    :goto_3a
    move-object v13, v0

    .line 1864
    goto :goto_3b

    .line 1865
    :cond_67
    move/from16 v3, v26

    .line 1866
    .line 1867
    if-ne v10, v3, :cond_68

    .line 1868
    .line 1869
    new-instance v0, Lcom/jcraft/jsch/KeyPairEd448;

    .line 1870
    .line 1871
    const/4 v3, 0x0

    .line 1872
    invoke-direct {v0, v1, v2, v3}, Lcom/jcraft/jsch/KeyPairEd448;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    .line 1873
    .line 1874
    .line 1875
    goto :goto_3a

    .line 1876
    :cond_68
    const/4 v2, 0x3

    .line 1877
    const/4 v3, 0x0

    .line 1878
    if-ne v8, v2, :cond_69

    .line 1879
    .line 1880
    new-instance v13, Lcom/jcraft/jsch/KeyPairPKCS8;

    .line 1881
    .line 1882
    invoke-direct {v13, v1}, Lcom/jcraft/jsch/KeyPairPKCS8;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 1883
    .line 1884
    .line 1885
    goto :goto_3b

    .line 1886
    :cond_69
    move-object v13, v3

    .line 1887
    :goto_3b
    if-eqz v13, :cond_6d

    .line 1888
    .line 1889
    iput-boolean v11, v13, Lcom/jcraft/jsch/KeyPair;->i:Z

    .line 1890
    .line 1891
    iput-object v4, v13, Lcom/jcraft/jsch/KeyPair;->l:[B

    .line 1892
    .line 1893
    iput v8, v13, Lcom/jcraft/jsch/KeyPair;->a:I

    .line 1894
    .line 1895
    iput-object v6, v13, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 1896
    .line 1897
    move-object/from16 v1, v20

    .line 1898
    .line 1899
    iput-object v1, v13, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 1900
    .line 1901
    if-eqz v11, :cond_6a

    .line 1902
    .line 1903
    const/4 v3, 0x1

    .line 1904
    iput-boolean v3, v13, Lcom/jcraft/jsch/KeyPair;->i:Z

    .line 1905
    .line 1906
    iput-object v7, v13, Lcom/jcraft/jsch/KeyPair;->k:[B

    .line 1907
    .line 1908
    iput-object v5, v13, Lcom/jcraft/jsch/KeyPair;->j:[B

    .line 1909
    .line 1910
    goto :goto_3d

    .line 1911
    :cond_6a
    invoke-virtual {v13, v5}, Lcom/jcraft/jsch/KeyPair;->s([B)Z

    .line 1912
    .line 1913
    .line 1914
    move-result v0

    .line 1915
    if-eqz v0, :cond_6b

    .line 1916
    .line 1917
    const/4 v3, 0x0

    .line 1918
    iput-boolean v3, v13, Lcom/jcraft/jsch/KeyPair;->i:Z

    .line 1919
    .line 1920
    goto :goto_3d

    .line 1921
    :cond_6b
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 1922
    .line 1923
    invoke-direct {v0, v12}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 1924
    .line 1925
    .line 1926
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_f .. :try_end_f} :catch_2

    .line 1927
    :goto_3c
    invoke-static {v13}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 1928
    .line 1929
    .line 1930
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    .line 1931
    .line 1932
    if-eqz v1, :cond_6c

    .line 1933
    .line 1934
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    .line 1935
    .line 1936
    throw v0

    .line 1937
    :cond_6c
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 1938
    .line 1939
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 1940
    .line 1941
    .line 1942
    move-result-object v2

    .line 1943
    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1944
    .line 1945
    .line 1946
    throw v1

    .line 1947
    :cond_6d
    :goto_3d
    return-object v13
.end method

.method public static q(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)Lcom/jcraft/jsch/KeyPair;
    .locals 12

    .line 1
    const-string v0, " is not available"

    .line 2
    .line 3
    const-string v1, "cipher "

    .line 4
    .line 5
    const-string v2, "kdf "

    .line 6
    .line 7
    const-string v3, "invalid privatekey"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz p1, :cond_8

    .line 11
    .line 12
    new-instance v5, Lcom/jcraft/jsch/Buffer;

    .line 13
    .line 14
    invoke-direct {v5, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/jcraft/jsch/KeyPair;->m:[B

    .line 18
    .line 19
    array-length v6, p1

    .line 20
    new-array v7, v6, [B

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    invoke-virtual {v5, v7, v8, v6}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v7}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_7

    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    array-length v6, p1

    .line 37
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 38
    .line 39
    new-instance v9, Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v9, p1, v8, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    array-length v6, p1

    .line 49
    new-instance v10, Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {v10, p1, v8, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    const/4 v7, 0x1

    .line 63
    if-ne v6, v7, :cond_6

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-static {p0, v6, v4}, Lcom/jcraft/jsch/KeyPair;->v(Lcom/jcraft/jsch/JSch$InstanceLogger;[BLjava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string v7, "none"

    .line 74
    .line 75
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    xor-int/lit8 v11, v7, 0x1

    .line 80
    .line 81
    iput-boolean v11, p0, Lcom/jcraft/jsch/KeyPair;->i:Z

    .line 82
    .line 83
    iput-object v6, p0, Lcom/jcraft/jsch/KeyPair;->l:[B

    .line 84
    .line 85
    const/4 v6, 0x4

    .line 86
    iput v6, p0, Lcom/jcraft/jsch/KeyPair;->a:I

    .line 87
    .line 88
    const-string v6, ""

    .line 89
    .line 90
    iput-object v6, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v7, :cond_1

    .line 93
    .line 94
    :try_start_0
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->j:[B

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPair;->s([B)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_0

    .line 105
    .line 106
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPair;->j:[B

    .line 107
    .line 108
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 109
    .line 110
    .line 111
    return-object p0

    .line 112
    :catch_0
    move-exception p1

    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 116
    .line 117
    invoke-direct {p1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_1
    :try_start_1
    invoke-static {v9}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const-class v6, Lcom/jcraft/jsch/Cipher;

    .line 130
    .line 131
    invoke-virtual {v3, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Lcom/jcraft/jsch/Cipher;

    .line 144
    .line 145
    iput-object v3, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 146
    .line 147
    invoke-interface {v3}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    iget-object v6, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 152
    .line 153
    invoke-interface {v6}, Lcom/jcraft/jsch/Cipher;->isChaCha20()Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_2

    .line 158
    .line 159
    move v3, v8

    .line 160
    goto :goto_0

    .line 161
    :cond_2
    iget-object v6, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 162
    .line 163
    invoke-interface {v6}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_3

    .line 168
    .line 169
    const/16 v3, 0xc

    .line 170
    .line 171
    :cond_3
    :goto_0
    new-array v3, v3, [B

    .line 172
    .line 173
    iput-object v3, p0, Lcom/jcraft/jsch/KeyPair;->k:[B

    .line 174
    .line 175
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    array-length v6, v3

    .line 180
    iget-object v7, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 181
    .line 182
    invoke-interface {v7}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    add-int/2addr v6, v7

    .line 187
    new-array v7, v6, [B

    .line 188
    .line 189
    array-length v11, v3

    .line 190
    invoke-static {v3, v8, v7, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    .line 192
    .line 193
    array-length v8, v3

    .line 194
    array-length v3, v3

    .line 195
    sub-int/2addr v6, v3

    .line 196
    invoke-virtual {v5, v7, v8, v6}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 197
    .line 198
    .line 199
    iput-object v7, p0, Lcom/jcraft/jsch/KeyPair;->j:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_3

    .line 200
    .line 201
    :try_start_2
    invoke-static {v10}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    const-class v3, Lcom/jcraft/jsch/KDF;

    .line 210
    .line 211
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Lcom/jcraft/jsch/KDF;

    .line 224
    .line 225
    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->e:Lcom/jcraft/jsch/KDF;

    .line 226
    .line 227
    invoke-interface {v1, p1}, Lcom/jcraft/jsch/KDF;->initWithOpenSSHv1KDFOptions([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_1

    .line 228
    .line 229
    .line 230
    return-object p0

    .line 231
    :catch_1
    move-exception p1

    .line 232
    goto :goto_1

    .line 233
    :catch_2
    move-exception p1

    .line 234
    :goto_1
    :try_start_3
    instance-of v1, p1, Lcom/jcraft/jsch/JSchException;

    .line 235
    .line 236
    if-eqz v1, :cond_4

    .line 237
    .line 238
    check-cast p1, Lcom/jcraft/jsch/JSchException;

    .line 239
    .line 240
    throw p1

    .line 241
    :cond_4
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 242
    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-direct {v1, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    .line 260
    .line 261
    throw v1

    .line 262
    :catch_3
    move-exception p1

    .line 263
    goto :goto_2

    .line 264
    :catch_4
    move-exception p1

    .line 265
    :goto_2
    instance-of v2, p1, Lcom/jcraft/jsch/JSchException;

    .line 266
    .line 267
    if-eqz v2, :cond_5

    .line 268
    .line 269
    check-cast p1, Lcom/jcraft/jsch/JSchException;

    .line 270
    .line 271
    throw p1

    .line 272
    :cond_5
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    .line 273
    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-direct {v2, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 293
    :goto_3
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->j:[B

    .line 294
    .line 295
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 296
    .line 297
    .line 298
    throw p1

    .line 299
    :cond_6
    const-string p0, "We don\'t support having more than 1 key in the file (yet)."

    .line 300
    .line 301
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return-object v4

    .line 305
    :cond_7
    const-string p0, "Invalid openssh v1 format."

    .line 306
    .line 307
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    return-object v4

    .line 311
    :cond_8
    invoke-static {v3}, Le6;->h(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    return-object v4
.end method

.method public static r(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)Lcom/jcraft/jsch/KeyPair;
    .locals 9

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {v0, p1}, Lcom/jcraft/jsch/KeyPair;->t(Lcom/jcraft/jsch/Buffer;Ljava/util/HashMap;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "PuTTY-User-Key-File-2"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    const-string v1, "PuTTY-User-Key-File-3"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    return-object v3

    .line 40
    :cond_1
    const/4 v4, 0x5

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v4, v2

    .line 43
    :goto_0
    :try_start_0
    const-string v5, "Public-Lines"

    .line 44
    .line 45
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-static {v0, v5}, Lcom/jcraft/jsch/KeyPair;->u(Lcom/jcraft/jsch/Buffer;I)[B

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    :cond_3
    invoke-static {v0, p1}, Lcom/jcraft/jsch/KeyPair;->t(Lcom/jcraft/jsch/Buffer;Ljava/util/HashMap;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_3

    .line 64
    .line 65
    const-string v6, "Private-Lines"

    .line 66
    .line 67
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    invoke-static {v0, v6}, Lcom/jcraft/jsch/KeyPair;->u(Lcom/jcraft/jsch/Buffer;I)[B

    .line 78
    .line 79
    .line 80
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :cond_4
    :try_start_1
    invoke-static {v0, p1}, Lcom/jcraft/jsch/KeyPair;->t(Lcom/jcraft/jsch/Buffer;Ljava/util/HashMap;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-nez v7, :cond_4

    .line 86
    .line 87
    array-length v0, v6

    .line 88
    const/4 v7, 0x0

    .line 89
    invoke-static {v6, v7, v0}, Lcom/jcraft/jsch/Util;->i([BII)[B

    .line 90
    .line 91
    .line 92
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    array-length v8, v5

    .line 94
    invoke-static {v5, v7, v8}, Lcom/jcraft/jsch/Util;->i([BII)[B

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-static {p0, v5, v1}, Lcom/jcraft/jsch/KeyPair;->v(Lcom/jcraft/jsch/JSch$InstanceLogger;[BLjava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string v1, "Encryption"

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/lang/String;

    .line 109
    .line 110
    const-string v7, "none"

    .line 111
    .line 112
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    xor-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    iput-boolean v1, p0, Lcom/jcraft/jsch/KeyPair;->i:Z

    .line 119
    .line 120
    iput-object v5, p0, Lcom/jcraft/jsch/KeyPair;->l:[B

    .line 121
    .line 122
    iput v4, p0, Lcom/jcraft/jsch/KeyPair;->a:I

    .line 123
    .line 124
    const-string v1, "Comment"

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Ljava/lang/String;

    .line 131
    .line 132
    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 133
    .line 134
    iget-boolean v1, p0, Lcom/jcraft/jsch/KeyPair;->i:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    .line 136
    if-eqz v1, :cond_9

    .line 137
    .line 138
    :try_start_3
    const-string v1, "aes256-cbc"

    .line 139
    .line 140
    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    const-class v5, Lcom/jcraft/jsch/Cipher;

    .line 149
    .line 150
    invoke-virtual {v1, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Lcom/jcraft/jsch/Cipher;

    .line 163
    .line 164
    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 165
    .line 166
    invoke-interface {v1}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    new-array v1, v1, [B

    .line 171
    .line 172
    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->k:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    .line 174
    if-ne v4, v2, :cond_6

    .line 175
    .line 176
    :try_start_4
    const-string p1, "sha-1"

    .line 177
    .line 178
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const-class v1, Lcom/jcraft/jsch/HASH;

    .line 187
    .line 188
    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Lcom/jcraft/jsch/HASH;

    .line 201
    .line 202
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->init()V

    .line 203
    .line 204
    .line 205
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->f:Lcom/jcraft/jsch/HASH;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :catchall_0
    move-exception p0

    .line 209
    move-object v3, v6

    .line 210
    goto/16 :goto_7

    .line 211
    .line 212
    :catch_0
    move-exception p0

    .line 213
    goto :goto_1

    .line 214
    :catch_1
    move-exception p0

    .line 215
    :goto_1
    :try_start_5
    instance-of p1, p0, Lcom/jcraft/jsch/JSchException;

    .line 216
    .line 217
    if-eqz p1, :cond_5

    .line 218
    .line 219
    check-cast p0, Lcom/jcraft/jsch/JSchException;

    .line 220
    .line 221
    throw p0

    .line 222
    :catch_2
    move-exception p0

    .line 223
    move-object v3, v0

    .line 224
    goto/16 :goto_6

    .line 225
    .line 226
    :cond_5
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 227
    .line 228
    const-string v1, "hash sha-1 is not available"

    .line 229
    .line 230
    invoke-direct {p1, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    throw p1

    .line 234
    :cond_6
    const-string v1, "Key-Derivation"

    .line 235
    .line 236
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    check-cast v1, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 241
    .line 242
    :try_start_6
    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    const-class v4, Lcom/jcraft/jsch/KDF;

    .line 251
    .line 252
    invoke-virtual {v2, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Lcom/jcraft/jsch/KDF;

    .line 265
    .line 266
    iput-object v2, p0, Lcom/jcraft/jsch/KeyPair;->e:Lcom/jcraft/jsch/KDF;

    .line 267
    .line 268
    invoke-interface {v2, p1}, Lcom/jcraft/jsch/KDF;->initWithPPKv3Header(Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 269
    .line 270
    .line 271
    :goto_2
    :try_start_7
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->j:[B

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :catch_3
    move-exception p0

    .line 275
    goto :goto_3

    .line 276
    :catch_4
    move-exception p0

    .line 277
    :goto_3
    instance-of p1, p0, Lcom/jcraft/jsch/JSchException;

    .line 278
    .line 279
    if-eqz p1, :cond_7

    .line 280
    .line 281
    check-cast p0, Lcom/jcraft/jsch/JSchException;

    .line 282
    .line 283
    throw p0

    .line 284
    :cond_7
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 285
    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    const-string v3, "kdf "

    .line 292
    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v1, " is not available"

    .line 300
    .line 301
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-direct {p1, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    .line 310
    .line 311
    throw p1

    .line 312
    :catch_5
    move-exception p0

    .line 313
    goto :goto_4

    .line 314
    :catch_6
    move-exception p0

    .line 315
    :goto_4
    instance-of p1, p0, Lcom/jcraft/jsch/JSchException;

    .line 316
    .line 317
    if-eqz p1, :cond_8

    .line 318
    .line 319
    check-cast p0, Lcom/jcraft/jsch/JSchException;

    .line 320
    .line 321
    throw p0

    .line 322
    :cond_8
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 323
    .line 324
    const-string v1, "cipher aes256-cbc is not available"

    .line 325
    .line 326
    invoke-direct {p1, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    .line 328
    .line 329
    throw p1

    .line 330
    :cond_9
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->j:[B

    .line 331
    .line 332
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPair;->s([B)Z

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    if-eqz p1, :cond_a

    .line 337
    .line 338
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->e([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 339
    .line 340
    .line 341
    :goto_5
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 342
    .line 343
    .line 344
    return-object p0

    .line 345
    :cond_a
    :try_start_8
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 346
    .line 347
    const-string p1, "invalid privatekey"

    .line 348
    .line 349
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 353
    :catch_7
    move-exception p0

    .line 354
    goto :goto_6

    .line 355
    :catchall_1
    move-exception p0

    .line 356
    goto :goto_7

    .line 357
    :catch_8
    move-exception p0

    .line 358
    move-object v6, v3

    .line 359
    :goto_6
    :try_start_9
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 360
    .line 361
    .line 362
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 363
    :goto_7
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 364
    .line 365
    .line 366
    throw p0
.end method

.method public static t(Lcom/jcraft/jsch/Buffer;Ljava/util/HashMap;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 4
    .line 5
    move v2, v1

    .line 6
    :goto_0
    array-length v3, v0

    .line 7
    const/16 v4, 0xd

    .line 8
    .line 9
    const/16 v5, 0xa

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    if-ge v2, v3, :cond_4

    .line 14
    .line 15
    aget-byte v3, v0, v2

    .line 16
    .line 17
    if-eq v3, v4, :cond_3

    .line 18
    .line 19
    if-ne v3, v5, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/16 v8, 0x3a

    .line 23
    .line 24
    if-ne v3, v8, :cond_2

    .line 25
    .line 26
    sub-int v3, v2, v1

    .line 27
    .line 28
    invoke-static {v0, v1, v3}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    add-int/lit8 v3, v2, 0x1

    .line 33
    .line 34
    array-length v8, v0

    .line 35
    if-ge v3, v8, :cond_1

    .line 36
    .line 37
    aget-byte v8, v0, v3

    .line 38
    .line 39
    const/16 v9, 0x20

    .line 40
    .line 41
    if-ne v8, v9, :cond_1

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    move v2, v3

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    :goto_1
    add-int/2addr v2, v6

    .line 52
    array-length v3, v0

    .line 53
    if-ge v2, v3, :cond_4

    .line 54
    .line 55
    aget-byte v2, v0, v2

    .line 56
    .line 57
    :cond_4
    move v2, v1

    .line 58
    move-object v1, v7

    .line 59
    :goto_2
    if-nez v1, :cond_5

    .line 60
    .line 61
    goto :goto_5

    .line 62
    :cond_5
    move v3, v2

    .line 63
    :goto_3
    array-length v8, v0

    .line 64
    if-ge v3, v8, :cond_8

    .line 65
    .line 66
    aget-byte v8, v0, v3

    .line 67
    .line 68
    if-eq v8, v4, :cond_7

    .line 69
    .line 70
    if-ne v8, v5, :cond_6

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_7
    :goto_4
    sub-int v4, v3, v2

    .line 77
    .line 78
    invoke-static {v0, v2, v4}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    add-int/lit8 v2, v3, 0x1

    .line 83
    .line 84
    array-length v4, v0

    .line 85
    if-ge v2, v4, :cond_8

    .line 86
    .line 87
    aget-byte v0, v0, v2

    .line 88
    .line 89
    if-ne v0, v5, :cond_8

    .line 90
    .line 91
    add-int/lit8 v3, v3, 0x2

    .line 92
    .line 93
    move v2, v3

    .line 94
    :cond_8
    if-eqz v7, :cond_9

    .line 95
    .line 96
    invoke-virtual {p1, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    iput v2, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 100
    .line 101
    :cond_9
    if-eqz v7, :cond_a

    .line 102
    .line 103
    return v6

    .line 104
    :cond_a
    :goto_5
    const/4 p0, 0x0

    .line 105
    return p0
.end method

.method public static u(Lcom/jcraft/jsch/Buffer;I)[B
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    add-int/lit8 v3, p1, -0x1

    .line 7
    .line 8
    if-lez p1, :cond_6

    .line 9
    .line 10
    move p1, v1

    .line 11
    :goto_1
    array-length v4, v0

    .line 12
    const/16 v5, 0xa

    .line 13
    .line 14
    if-le v4, p1, :cond_4

    .line 15
    .line 16
    add-int/lit8 v4, p1, 0x1

    .line 17
    .line 18
    aget-byte p1, v0, p1

    .line 19
    .line 20
    const/16 v6, 0xd

    .line 21
    .line 22
    if-eq p1, v6, :cond_1

    .line 23
    .line 24
    if-ne p1, v5, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    move p1, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_2
    sub-int p1, v4, v1

    .line 30
    .line 31
    add-int/lit8 p1, p1, -0x1

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    if-nez v2, :cond_3

    .line 35
    .line 36
    new-array v2, p1, [B

    .line 37
    .line 38
    invoke-static {v0, v1, v2, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    :cond_2
    move p1, v4

    .line 42
    goto :goto_3

    .line 43
    :cond_3
    if-lez p1, :cond_2

    .line 44
    .line 45
    array-length v7, v2

    .line 46
    add-int/2addr v7, p1

    .line 47
    new-array v7, v7, [B

    .line 48
    .line 49
    array-length v8, v2

    .line 50
    invoke-static {v2, v6, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    array-length v6, v2

    .line 54
    invoke-static {v0, v1, v7, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 58
    .line 59
    .line 60
    move p1, v4

    .line 61
    move-object v2, v7

    .line 62
    :cond_4
    :goto_3
    array-length v1, v0

    .line 63
    if-ge p1, v1, :cond_5

    .line 64
    .line 65
    aget-byte v1, v0, p1

    .line 66
    .line 67
    if-ne v1, v5, :cond_5

    .line 68
    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 70
    .line 71
    :cond_5
    move v1, p1

    .line 72
    move p1, v3

    .line 73
    goto :goto_0

    .line 74
    :cond_6
    if-eqz v2, :cond_7

    .line 75
    .line 76
    iput v1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 77
    .line 78
    :cond_7
    return-object v2
.end method

.method public static v(Lcom/jcraft/jsch/JSch$InstanceLogger;[BLjava/lang/String;)Lcom/jcraft/jsch/KeyPair;
    .locals 12

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 4
    .line 5
    .line 6
    array-length p1, p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v1, Lcom/jcraft/jsch/Util;->a:[B

    .line 15
    .line 16
    array-length v1, p1

    .line 17
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    new-instance v3, Ljava/lang/String;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-direct {v3, p1, v4, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 23
    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    const-string p1, ""

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 44
    .line 45
    const-string p1, "] does not match expected type ["

    .line 46
    .line 47
    const-string v0, "]"

    .line 48
    .line 49
    const-string v1, "pubkeyblob type ["

    .line 50
    .line 51
    invoke-static {v1, v3, p1, p2, v0}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    :goto_0
    move-object p2, v3

    .line 60
    :goto_1
    const-string p1, "ssh-rsa"

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/4 v1, 0x0

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    new-array p2, p1, [B

    .line 74
    .line 75
    invoke-virtual {v0, p2, v4, p1}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    new-array v2, p1, [B

    .line 83
    .line 84
    invoke-virtual {v0, v2, v4, p1}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Lcom/jcraft/jsch/KeyPairRSA;

    .line 88
    .line 89
    invoke-direct {p1, p0, v2, p2, v1}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B)V

    .line 90
    .line 91
    .line 92
    return-object p1

    .line 93
    :cond_3
    const-string p1, "ssh-dss"

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    new-array v7, p1, [B

    .line 106
    .line 107
    invoke-virtual {v0, v7, v4, p1}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    new-array v8, p1, [B

    .line 115
    .line 116
    invoke-virtual {v0, v8, v4, p1}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    new-array v9, p1, [B

    .line 124
    .line 125
    invoke-virtual {v0, v9, v4, p1}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    new-array v10, p1, [B

    .line 133
    .line 134
    invoke-virtual {v0, v10, v4, p1}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 135
    .line 136
    .line 137
    new-instance v5, Lcom/jcraft/jsch/KeyPairDSA;

    .line 138
    .line 139
    const/4 v11, 0x0

    .line 140
    move-object v6, p0

    .line 141
    invoke-direct/range {v5 .. v11}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B[B)V

    .line 142
    .line 143
    .line 144
    return-object v5

    .line 145
    :cond_4
    move-object v6, p0

    .line 146
    const-string p0, "ecdsa-sha2-nistp256"

    .line 147
    .line 148
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-nez p0, :cond_9

    .line 153
    .line 154
    const-string p0, "ecdsa-sha2-nistp384"

    .line 155
    .line 156
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-nez p0, :cond_9

    .line 161
    .line 162
    const-string p0, "ecdsa-sha2-nistp521"

    .line 163
    .line 164
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-eqz p0, :cond_5

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_5
    const-string p0, "ssh-ed25519"

    .line 172
    .line 173
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-nez p1, :cond_7

    .line 178
    .line 179
    const-string p1, "ssh-ed448"

    .line 180
    .line 181
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_6

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_6
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 189
    .line 190
    const-string p1, "key type "

    .line 191
    .line 192
    const-string v0, " is not supported"

    .line 193
    .line 194
    invoke-static {p1, p2, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p0

    .line 202
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    new-array v2, p1, [B

    .line 207
    .line 208
    invoke-virtual {v0, v2, v4, p1}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    if-eqz p0, :cond_8

    .line 216
    .line 217
    new-instance p0, Lcom/jcraft/jsch/KeyPairEd25519;

    .line 218
    .line 219
    invoke-direct {p0, v6, v2, v1}, Lcom/jcraft/jsch/KeyPairEdDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    .line 220
    .line 221
    .line 222
    return-object p0

    .line 223
    :cond_8
    new-instance p0, Lcom/jcraft/jsch/KeyPairEd448;

    .line 224
    .line 225
    invoke-direct {p0, v6, v2, v1}, Lcom/jcraft/jsch/KeyPairEdDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    .line 226
    .line 227
    .line 228
    return-object p0

    .line 229
    :cond_9
    :goto_3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 238
    .line 239
    .line 240
    add-int/lit8 p0, p0, -0x1

    .line 241
    .line 242
    div-int/lit8 p0, p0, 0x2

    .line 243
    .line 244
    new-array v9, p0, [B

    .line 245
    .line 246
    new-array v10, p0, [B

    .line 247
    .line 248
    invoke-virtual {v0, v9, v4, p0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v10, v4, p0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 252
    .line 253
    .line 254
    move-object v7, v6

    .line 255
    new-instance v6, Lcom/jcraft/jsch/KeyPairECDSA;

    .line 256
    .line 257
    const/4 v11, 0x0

    .line 258
    invoke-direct/range {v6 .. v11}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B)V

    .line 259
    .line 260
    .line 261
    return-object v6
.end method

.method public static w(I[B[B)I
    .locals 2

    .line 1
    add-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aput-byte v1, p1, p0

    .line 5
    .line 6
    array-length p0, p2

    .line 7
    invoke-static {p1, v0, p0}, Lcom/jcraft/jsch/KeyPair;->x([BII)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x0

    .line 12
    array-length v1, p2

    .line 13
    invoke-static {p2, v0, p1, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    array-length p1, p2

    .line 17
    add-int/2addr p0, p1

    .line 18
    return p0
.end method

.method public static x([BII)I
    .locals 4

    .line 1
    invoke-static {p2}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, p1, 0x1

    .line 10
    .line 11
    int-to-byte p2, p2

    .line 12
    aput-byte p2, p0, p1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 16
    .line 17
    or-int/lit16 v2, v0, 0x80

    .line 18
    .line 19
    int-to-byte v2, v2

    .line 20
    aput-byte v2, p0, p1

    .line 21
    .line 22
    add-int p1, v1, v0

    .line 23
    .line 24
    :goto_0
    if-lez v0, :cond_1

    .line 25
    .line 26
    add-int v2, v1, v0

    .line 27
    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    and-int/lit16 v3, p2, 0xff

    .line 31
    .line 32
    int-to-byte v3, v3

    .line 33
    aput-byte v3, p0, v2

    .line 34
    .line 35
    ushr-int/lit8 p2, p2, 0x8

    .line 36
    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return p1
.end method


# virtual methods
.method public final a(Lcom/jcraft/jsch/KeyPair;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/jcraft/jsch/KeyPair;->l:[B

    .line 2
    .line 3
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->l:[B

    .line 4
    .line 5
    iget v0, p1, Lcom/jcraft/jsch/KeyPair;->a:I

    .line 6
    .line 7
    iput v0, p0, Lcom/jcraft/jsch/KeyPair;->a:I

    .line 8
    .line 9
    iget-object v0, p1, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 16
    .line 17
    return-void
.end method

.method public final c([B[B[B)[B
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/jcraft/jsch/KeyPair;->f([B[B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-interface {v0, v1, p2, p3}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 12
    .line 13
    .line 14
    array-length p2, p1

    .line 15
    iget-object p3, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 16
    .line 17
    invoke-interface {p3}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    sub-int/2addr p2, p3

    .line 22
    new-array v4, p2, [B

    .line 23
    .line 24
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 25
    .line 26
    invoke-interface {p2}, Lcom/jcraft/jsch/Cipher;->isChaCha20()Z

    .line 27
    .line 28
    .line 29
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    iget-object p3, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    :try_start_1
    invoke-interface {p3, p2}, Lcom/jcraft/jsch/Cipher;->update(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 39
    .line 40
    array-length p2, p1

    .line 41
    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    sub-int v3, p2, p3

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v2, -0x4

    .line 49
    move-object v1, p1

    .line 50
    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V

    .line 51
    .line 52
    .line 53
    return-object v4

    .line 54
    :catch_0
    move-exception v0

    .line 55
    move-object p1, v0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object v1, p1

    .line 58
    invoke-interface {p3}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    .line 59
    .line 60
    .line 61
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    :try_start_2
    array-length v3, v1

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V

    .line 70
    .line 71
    .line 72
    return-object v4

    .line 73
    :cond_1
    array-length v3, v1

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    .line 78
    .line 79
    return-object v4

    .line 80
    :goto_0
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const/4 p3, 0x3

    .line 87
    invoke-interface {p2, p3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_2

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const-string p2, "failed to decrypt key"

    .line 98
    .line 99
    invoke-interface {p0, p3, p2, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    const/4 p0, 0x0

    .line 103
    return-object p0
.end method

.method public final d()Lcom/jcraft/jsch/Cipher;
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "3des-cbc"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lcom/jcraft/jsch/Cipher;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/jcraft/jsch/Cipher;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    .line 34
    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x3

    .line 41
    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "failed to create cipher"

    .line 52
    .line 53
    invoke-interface {v1, v3, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 57
    .line 58
    return-object p0
.end method

.method public final decrypt(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 63
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPair;->decrypt([B)Z

    move-result p0

    return p0

    .line 65
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/jcraft/jsch/KeyPair;->i:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public decrypt([B)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    .line 9
    xor-int/lit8 p0, v0, 0x1

    .line 10
    .line 11
    return p0

    .line 12
    :cond_1
    array-length v0, p1

    .line 13
    new-array v2, v0, [B

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->j:[B

    .line 21
    .line 22
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPair;->k:[B

    .line 23
    .line 24
    invoke-virtual {p0, v0, v2, v4}, Lcom/jcraft/jsch/KeyPair;->c([B[B[B)[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPair;->s([B)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iput-boolean v3, p0, Lcom/jcraft/jsch/KeyPair;->i:Z

    .line 35
    .line 36
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->j:[B

    .line 37
    .line 38
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->e([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 48
    .line 49
    .line 50
    iget-boolean p0, p0, Lcom/jcraft/jsch/KeyPair;->i:Z

    .line 51
    .line 52
    xor-int/2addr p0, v1

    .line 53
    return p0

    .line 54
    :goto_1
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public dispose()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e()Lcom/jcraft/jsch/HASH;
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "md5"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lcom/jcraft/jsch/HASH;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/jcraft/jsch/HASH;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->g:Lcom/jcraft/jsch/HASH;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception v0

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x3

    .line 44
    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "failed to create hash"

    .line 55
    .line 56
    invoke-interface {v1, v3, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->g:Lcom/jcraft/jsch/HASH;

    .line 60
    .line 61
    return-object p0
.end method

.method public final declared-synchronized f([B[B)[B
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->d()Lcom/jcraft/jsch/Cipher;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto/16 :goto_8

    .line 15
    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->g:Lcom/jcraft/jsch/HASH;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->e()Lcom/jcraft/jsch/HASH;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->g:Lcom/jcraft/jsch/HASH;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    new-array v1, v0, [B

    .line 33
    .line 34
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->g:Lcom/jcraft/jsch/HASH;

    .line 35
    .line 36
    invoke-interface {v2}, Lcom/jcraft/jsch/HASH;->getBlockSize()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    div-int v3, v0, v2

    .line 41
    .line 42
    mul-int/2addr v3, v2

    .line 43
    rem-int v4, v0, v2

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    move v4, v5

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v4, v2

    .line 51
    :goto_1
    add-int/2addr v3, v4

    .line 52
    new-array v4, v3, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    const/4 v6, 0x3

    .line 55
    :try_start_1
    iget v7, p0, Lcom/jcraft/jsch/KeyPair;->a:I

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    if-nez v7, :cond_6

    .line 59
    .line 60
    move v7, v5

    .line 61
    :goto_2
    add-int v9, v7, v2

    .line 62
    .line 63
    if-gt v9, v3, :cond_5

    .line 64
    .line 65
    if-eqz v8, :cond_3

    .line 66
    .line 67
    iget-object v9, p0, Lcom/jcraft/jsch/KeyPair;->g:Lcom/jcraft/jsch/HASH;

    .line 68
    .line 69
    array-length v10, v8

    .line 70
    invoke-interface {v9, v8, v5, v10}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/jcraft/jsch/KeyPair;->g:Lcom/jcraft/jsch/HASH;

    .line 78
    .line 79
    array-length v9, p1

    .line 80
    invoke-interface {v8, p1, v5, v9}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 81
    .line 82
    .line 83
    iget-object v8, p0, Lcom/jcraft/jsch/KeyPair;->g:Lcom/jcraft/jsch/HASH;

    .line 84
    .line 85
    array-length v9, p2

    .line 86
    const/16 v10, 0x8

    .line 87
    .line 88
    if-le v9, v10, :cond_4

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_4
    array-length v10, p2

    .line 92
    :goto_4
    invoke-interface {v8, p2, v5, v10}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 93
    .line 94
    .line 95
    iget-object v8, p0, Lcom/jcraft/jsch/KeyPair;->g:Lcom/jcraft/jsch/HASH;

    .line 96
    .line 97
    invoke-interface {v8}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    array-length v9, v8

    .line 102
    invoke-static {v8, v5, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    .line 104
    .line 105
    array-length v9, v8

    .line 106
    add-int/2addr v7, v9

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    invoke-static {v4, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_7

    .line 112
    .line 113
    :cond_6
    const/4 v9, 0x4

    .line 114
    if-ne v7, v9, :cond_7

    .line 115
    .line 116
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->e:Lcom/jcraft/jsch/KDF;

    .line 117
    .line 118
    array-length v3, p2

    .line 119
    add-int/2addr v3, v0

    .line 120
    invoke-interface {v2, p1, v3}, Lcom/jcraft/jsch/KDF;->getKey([BI)[B

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    .line 126
    .line 127
    array-length v2, p2

    .line 128
    invoke-static {p1, v0, p2, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    .line 130
    .line 131
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_7

    .line 135
    .line 136
    :cond_7
    const/4 v10, 0x1

    .line 137
    if-ne v7, v10, :cond_a

    .line 138
    .line 139
    move p2, v5

    .line 140
    :goto_5
    add-int v7, p2, v2

    .line 141
    .line 142
    if-gt v7, v3, :cond_9

    .line 143
    .line 144
    if-eqz v8, :cond_8

    .line 145
    .line 146
    iget-object v7, p0, Lcom/jcraft/jsch/KeyPair;->g:Lcom/jcraft/jsch/HASH;

    .line 147
    .line 148
    array-length v9, v8

    .line 149
    invoke-interface {v7, v8, v5, v9}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 150
    .line 151
    .line 152
    :cond_8
    iget-object v7, p0, Lcom/jcraft/jsch/KeyPair;->g:Lcom/jcraft/jsch/HASH;

    .line 153
    .line 154
    array-length v8, p1

    .line 155
    invoke-interface {v7, p1, v5, v8}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 156
    .line 157
    .line 158
    iget-object v7, p0, Lcom/jcraft/jsch/KeyPair;->g:Lcom/jcraft/jsch/HASH;

    .line 159
    .line 160
    invoke-interface {v7}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    array-length v7, v8

    .line 165
    invoke-static {v8, v5, v4, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    .line 167
    .line 168
    array-length v7, v8

    .line 169
    add-int/2addr p2, v7

    .line 170
    goto :goto_5

    .line 171
    :cond_9
    invoke-static {v4, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_a
    const/4 v2, 0x2

    .line 176
    if-ne v7, v2, :cond_b

    .line 177
    .line 178
    new-array p2, v9, [B

    .line 179
    .line 180
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->f:Lcom/jcraft/jsch/HASH;

    .line 181
    .line 182
    invoke-interface {v2, p2, v5, v9}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 183
    .line 184
    .line 185
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->f:Lcom/jcraft/jsch/HASH;

    .line 186
    .line 187
    array-length v3, p1

    .line 188
    invoke-interface {v2, p1, v5, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 189
    .line 190
    .line 191
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->f:Lcom/jcraft/jsch/HASH;

    .line 192
    .line 193
    invoke-interface {v2}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    array-length v3, v2

    .line 198
    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    .line 200
    .line 201
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 202
    .line 203
    .line 204
    aput-byte v10, p2, v6

    .line 205
    .line 206
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->f:Lcom/jcraft/jsch/HASH;

    .line 207
    .line 208
    invoke-interface {v2, p2, v5, v9}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 209
    .line 210
    .line 211
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->f:Lcom/jcraft/jsch/HASH;

    .line 212
    .line 213
    array-length v2, p1

    .line 214
    invoke-interface {p2, p1, v5, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPair;->f:Lcom/jcraft/jsch/HASH;

    .line 218
    .line 219
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    array-length p2, p1

    .line 224
    array-length v2, p1

    .line 225
    sub-int/2addr v0, v2

    .line 226
    invoke-static {p1, v5, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    .line 228
    .line 229
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 230
    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_b
    const/4 v2, 0x5

    .line 234
    if-ne v7, v2, :cond_c

    .line 235
    .line 236
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->e:Lcom/jcraft/jsch/KDF;

    .line 237
    .line 238
    array-length v3, p2

    .line 239
    add-int/2addr v3, v0

    .line 240
    add-int/lit8 v3, v3, 0x20

    .line 241
    .line 242
    invoke-interface {v2, p1, v3}, Lcom/jcraft/jsch/KDF;->getKey([BI)[B

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-static {p1, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    .line 248
    .line 249
    array-length v2, p2

    .line 250
    invoke-static {p1, v0, p2, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    .line 252
    .line 253
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->e([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    .line 255
    .line 256
    goto :goto_7

    .line 257
    :goto_6
    :try_start_2
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 258
    .line 259
    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-interface {p2, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    if-eqz p2, :cond_c

    .line 268
    .line 269
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 270
    .line 271
    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    const-string v0, "failed to generate key from passphrase"

    .line 276
    .line 277
    invoke-interface {p2, v6, v0, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    .line 279
    .line 280
    :cond_c
    :goto_7
    monitor-exit p0

    .line 281
    return-object v1

    .line 282
    :goto_8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    throw p1
.end method

.method public final finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract forSSHAgent()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation
.end method

.method public final g()Lcom/jcraft/jsch/Random;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Random;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v0, "random"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Lcom/jcraft/jsch/Random;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/jcraft/jsch/Random;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    .line 38
    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x3

    .line 45
    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "failed to create random"

    .line 56
    .line 57
    invoke-interface {v1, v3, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Random;

    .line 61
    .line 62
    return-object p0
.end method

.method public final getFingerPrint()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "FingerprintHash"

    .line 3
    .line 4
    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-class v2, Lcom/jcraft/jsch/HASH;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/jcraft/jsch/HASH;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2

    .line 37
    .line 38
    :try_start_1
    invoke-interface {v1}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catch_0
    move-exception v2

    .line 43
    goto :goto_1

    .line 44
    :catch_1
    move-exception v2

    .line 45
    goto :goto_1

    .line 46
    :catch_2
    move-exception v2

    .line 47
    :goto_0
    move-object v1, v0

    .line 48
    goto :goto_1

    .line 49
    :catch_3
    move-exception v2

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const/4 v5, 0x3

    .line 58
    invoke-interface {v4, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_0

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-string v4, "failed to create hash"

    .line 69
    .line 70
    invoke-interface {v3, v5, v4, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    :goto_2
    if-nez v1, :cond_1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-nez p0, :cond_2

    .line 81
    .line 82
    :goto_3
    return-object v0

    .line 83
    :cond_2
    invoke-static {v1, p0}, Lcom/jcraft/jsch/Util;->k(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method

.method public abstract getKeySize()I
.end method

.method public abstract getKeyType()I
.end method

.method public final getKeyTypeString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->k()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getPublicKeyBlob()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->l:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPublicKeyComment()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract getSignature([B)[B
.end method

.method public abstract getSignature([BLjava/lang/String;)[B
.end method

.method public abstract getVerifier()Lcom/jcraft/jsch/Signature;
.end method

.method public abstract getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;
.end method

.method public abstract h(I)V
.end method

.method public abstract i()[B
.end method

.method public final isEncrypted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jcraft/jsch/KeyPair;->i:Z

    .line 2
    .line 3
    return p0
.end method

.method public abstract j()[B
.end method

.method public abstract k()[B
.end method

.method public abstract l()[B
.end method

.method public abstract m()[B
.end method

.method public abstract s([B)Z
.end method

.method public final setPassphrase(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "deprecated"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final setPassphrase([B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "deprecated"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setPublicKeyComment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 863
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;I)V

    return-void
.end method

.method public final writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 862
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;I)V

    return-void
.end method

.method public final writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 861
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;I)V

    return-void
.end method

.method public final writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;I)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Lcom/jcraft/jsch/KeyPair;->n:[B

    .line 8
    .line 9
    const-string v4, "cipher "

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    array-length v6, v2

    .line 15
    if-nez v6, :cond_0

    .line 16
    .line 17
    move-object v2, v5

    .line 18
    :cond_0
    if-nez p3, :cond_1

    .line 19
    .line 20
    const-string v6, "aes256-ctr"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object/from16 v6, p3

    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    if-eqz v7, :cond_13

    .line 30
    .line 31
    new-instance v8, Lcom/jcraft/jsch/Buffer;

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    invoke-direct {v8, v9}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iget-object v10, v0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Random;

    .line 38
    .line 39
    if-nez v10, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->g()Lcom/jcraft/jsch/Random;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    iput-object v10, v0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Random;

    .line 46
    .line 47
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->l()[B

    .line 48
    .line 49
    .line 50
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 51
    if-eqz v10, :cond_f

    .line 52
    .line 53
    const/16 v11, 0x18

    .line 54
    .line 55
    const/16 v12, 0x10

    .line 56
    .line 57
    if-eqz v2, :cond_7

    .line 58
    .line 59
    :try_start_1
    invoke-static {v6}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    const-class v14, Lcom/jcraft/jsch/Cipher;

    .line 68
    .line 69
    invoke-virtual {v8, v14}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v8, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    check-cast v8, Lcom/jcraft/jsch/Cipher;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 82
    .line 83
    :try_start_2
    const-string v4, "bcrypt"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 84
    .line 85
    :try_start_3
    invoke-static {v4}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    const-class v15, Lcom/jcraft/jsch/KDF;

    .line 94
    .line 95
    invoke-virtual {v14, v15}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v14

    .line 99
    invoke-virtual {v14, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 100
    .line 101
    .line 102
    move-result-object v14

    .line 103
    invoke-virtual {v14, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v14

    .line 107
    check-cast v14, Lcom/jcraft/jsch/KDF;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 108
    .line 109
    :try_start_4
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 110
    .line 111
    invoke-virtual {v4, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    new-array v5, v12, [B

    .line 116
    .line 117
    const/16 p2, 0x8

    .line 118
    .line 119
    iget-object v13, v0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Random;

    .line 120
    .line 121
    invoke-interface {v13, v5, v9, v12}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 122
    .line 123
    .line 124
    new-instance v13, Lcom/jcraft/jsch/Buffer;

    .line 125
    .line 126
    invoke-direct {v13, v11}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v13, v5, v9, v12}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 130
    .line 131
    .line 132
    move/from16 v5, p4

    .line 133
    .line 134
    invoke-virtual {v13, v5}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 135
    .line 136
    .line 137
    iget-object v5, v13, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 138
    .line 139
    invoke-interface {v14, v5}, Lcom/jcraft/jsch/KDF;->initWithOpenSSHv1KDFOptions([B)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-interface {v8}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    invoke-interface {v8}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    .line 151
    .line 152
    .line 153
    move-result v15

    .line 154
    move/from16 p3, v11

    .line 155
    .line 156
    invoke-interface {v8}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    move/from16 v17, v12

    .line 161
    .line 162
    new-array v12, v11, [B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 163
    .line 164
    :try_start_5
    invoke-interface {v8}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    .line 165
    .line 166
    .line 167
    move-result v18

    .line 168
    invoke-interface {v8}, Lcom/jcraft/jsch/Cipher;->isChaCha20()Z

    .line 169
    .line 170
    .line 171
    move-result v19

    .line 172
    if-eqz v19, :cond_3

    .line 173
    .line 174
    :goto_1
    move-object/from16 v18, v4

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_3
    invoke-interface {v8}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    .line 178
    .line 179
    .line 180
    move-result v19

    .line 181
    if-eqz v19, :cond_4

    .line 182
    .line 183
    const/16 v18, 0xc

    .line 184
    .line 185
    :cond_4
    move/from16 v9, v18

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :goto_2
    new-array v4, v9, [B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 189
    .line 190
    move-object/from16 p4, v5

    .line 191
    .line 192
    add-int v5, v11, v9

    .line 193
    .line 194
    :try_start_6
    invoke-interface {v14, v2, v5}, Lcom/jcraft/jsch/KDF;->getKey([BI)[B

    .line 195
    .line 196
    .line 197
    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 198
    const/4 v14, 0x0

    .line 199
    :try_start_7
    invoke-static {v5, v14, v12, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    .line 201
    .line 202
    invoke-static {v5, v11, v4, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v8, v14, v12, v4}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 206
    .line 207
    .line 208
    move v9, v6

    .line 209
    move-object v11, v8

    .line 210
    move-object/from16 v6, p4

    .line 211
    .line 212
    move-object v8, v5

    .line 213
    move-object v5, v4

    .line 214
    move-object/from16 v4, v18

    .line 215
    .line 216
    goto/16 :goto_f

    .line 217
    .line 218
    :catchall_0
    move-exception v0

    .line 219
    move-object/from16 v16, v4

    .line 220
    .line 221
    :goto_3
    const/4 v1, 0x0

    .line 222
    :goto_4
    const/4 v2, 0x0

    .line 223
    :goto_5
    const/4 v4, 0x0

    .line 224
    goto/16 :goto_1a

    .line 225
    .line 226
    :catch_0
    move-exception v0

    .line 227
    move-object/from16 v16, v4

    .line 228
    .line 229
    move-object/from16 v26, v5

    .line 230
    .line 231
    :goto_6
    move-object v5, v12

    .line 232
    const/4 v1, 0x0

    .line 233
    :goto_7
    const/4 v2, 0x0

    .line 234
    :goto_8
    const/4 v4, 0x0

    .line 235
    goto/16 :goto_19

    .line 236
    .line 237
    :catchall_1
    move-exception v0

    .line 238
    move-object/from16 v16, v4

    .line 239
    .line 240
    const/4 v1, 0x0

    .line 241
    const/4 v2, 0x0

    .line 242
    const/4 v4, 0x0

    .line 243
    const/4 v5, 0x0

    .line 244
    goto/16 :goto_1a

    .line 245
    .line 246
    :catch_1
    move-exception v0

    .line 247
    move-object/from16 v16, v4

    .line 248
    .line 249
    move-object v5, v12

    .line 250
    const/4 v1, 0x0

    .line 251
    const/4 v2, 0x0

    .line 252
    const/4 v4, 0x0

    .line 253
    :goto_9
    const/16 v26, 0x0

    .line 254
    .line 255
    goto/16 :goto_19

    .line 256
    .line 257
    :catchall_2
    move-exception v0

    .line 258
    const/4 v1, 0x0

    .line 259
    const/4 v2, 0x0

    .line 260
    const/4 v4, 0x0

    .line 261
    const/4 v5, 0x0

    .line 262
    :goto_a
    const/16 v16, 0x0

    .line 263
    .line 264
    goto/16 :goto_1a

    .line 265
    .line 266
    :catch_2
    move-exception v0

    .line 267
    move-object v5, v12

    .line 268
    const/4 v1, 0x0

    .line 269
    const/4 v2, 0x0

    .line 270
    const/4 v4, 0x0

    .line 271
    :goto_b
    const/16 v16, 0x0

    .line 272
    .line 273
    goto :goto_9

    .line 274
    :catchall_3
    move-exception v0

    .line 275
    const/4 v1, 0x0

    .line 276
    const/4 v2, 0x0

    .line 277
    const/4 v4, 0x0

    .line 278
    const/4 v5, 0x0

    .line 279
    :goto_c
    const/4 v12, 0x0

    .line 280
    goto :goto_a

    .line 281
    :catch_3
    move-exception v0

    .line 282
    const/4 v1, 0x0

    .line 283
    const/4 v2, 0x0

    .line 284
    const/4 v4, 0x0

    .line 285
    const/4 v5, 0x0

    .line 286
    goto :goto_b

    .line 287
    :catch_4
    move-exception v0

    .line 288
    goto :goto_d

    .line 289
    :catch_5
    move-exception v0

    .line 290
    :goto_d
    :try_start_8
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    .line 291
    .line 292
    if-eqz v1, :cond_5

    .line 293
    .line 294
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    .line 295
    .line 296
    throw v0

    .line 297
    :cond_5
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 298
    .line 299
    const-string v2, "kdf bcrypt is not available"

    .line 300
    .line 301
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    .line 303
    .line 304
    throw v1

    .line 305
    :catch_6
    move-exception v0

    .line 306
    goto :goto_e

    .line 307
    :catch_7
    move-exception v0

    .line 308
    :goto_e
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    .line 309
    .line 310
    if-eqz v1, :cond_6

    .line 311
    .line 312
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    .line 313
    .line 314
    throw v0

    .line 315
    :cond_6
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 316
    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v3, " is not available"

    .line 326
    .line 327
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    .line 336
    .line 337
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 338
    :cond_7
    move/from16 p3, v11

    .line 339
    .line 340
    move/from16 v17, v12

    .line 341
    .line 342
    const/16 p2, 0x8

    .line 343
    .line 344
    sget-object v4, Lcom/jcraft/jsch/KeyPair;->q:[B

    .line 345
    .line 346
    move/from16 v9, p2

    .line 347
    .line 348
    move-object v6, v4

    .line 349
    move-object v13, v8

    .line 350
    const/4 v5, 0x0

    .line 351
    const/4 v8, 0x0

    .line 352
    const/4 v11, 0x0

    .line 353
    const/4 v12, 0x0

    .line 354
    const/4 v15, 0x0

    .line 355
    :goto_f
    const/4 v14, 0x4

    .line 356
    move-object/from16 v18, v2

    .line 357
    .line 358
    :try_start_9
    new-array v2, v14, [B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 359
    .line 360
    move-object/from16 p4, v5

    .line 361
    .line 362
    :try_start_a
    iget-object v5, v0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Random;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 363
    .line 364
    move-object/from16 v26, v8

    .line 365
    .line 366
    const/4 v8, 0x0

    .line 367
    :try_start_b
    invoke-interface {v5, v2, v8, v14}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 368
    .line 369
    .line 370
    aget-byte v5, v2, v8

    .line 371
    .line 372
    shl-int/lit8 v5, v5, 0x18

    .line 373
    .line 374
    const/high16 v8, -0x1000000

    .line 375
    .line 376
    and-int/2addr v5, v8

    .line 377
    const/4 v8, 0x1

    .line 378
    aget-byte v20, v2, v8

    .line 379
    .line 380
    shl-int/lit8 v17, v20, 0x10

    .line 381
    .line 382
    const/high16 v20, 0xff0000

    .line 383
    .line 384
    and-int v17, v17, v20

    .line 385
    .line 386
    or-int v5, v5, v17

    .line 387
    .line 388
    const/16 v17, 0x2

    .line 389
    .line 390
    aget-byte v17, v2, v17

    .line 391
    .line 392
    shl-int/lit8 v17, v17, 0x8

    .line 393
    .line 394
    const v20, 0xff00

    .line 395
    .line 396
    .line 397
    and-int v17, v17, v20

    .line 398
    .line 399
    or-int v5, v5, v17

    .line 400
    .line 401
    const/16 v17, 0x3

    .line 402
    .line 403
    aget-byte v2, v2, v17

    .line 404
    .line 405
    and-int/lit16 v2, v2, 0xff

    .line 406
    .line 407
    or-int/2addr v2, v5

    .line 408
    iget-object v0, v0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 409
    .line 410
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 411
    .line 412
    invoke-static {v0, v5}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    if-nez v0, :cond_8

    .line 417
    .line 418
    const/4 v5, 0x0

    .line 419
    new-array v0, v5, [B

    .line 420
    .line 421
    goto :goto_12

    .line 422
    :catchall_4
    move-exception v0

    .line 423
    :goto_10
    move-object/from16 v16, p4

    .line 424
    .line 425
    move-object/from16 v5, v26

    .line 426
    .line 427
    goto/16 :goto_3

    .line 428
    .line 429
    :catch_8
    move-exception v0

    .line 430
    :goto_11
    move-object/from16 v16, p4

    .line 431
    .line 432
    goto/16 :goto_6

    .line 433
    .line 434
    :cond_8
    :goto_12
    array-length v5, v10

    .line 435
    add-int v5, p2, v5

    .line 436
    .line 437
    move/from16 p2, v14

    .line 438
    .line 439
    array-length v14, v0

    .line 440
    add-int/lit8 v14, v14, 0x4

    .line 441
    .line 442
    add-int/2addr v14, v5

    .line 443
    add-int/2addr v14, v9

    .line 444
    add-int/2addr v14, v15

    .line 445
    new-instance v5, Lcom/jcraft/jsch/Buffer;

    .line 446
    .line 447
    invoke-direct {v5, v14}, Lcom/jcraft/jsch/Buffer;-><init>(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 448
    .line 449
    .line 450
    :try_start_c
    invoke-virtual {v5, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v5, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 454
    .line 455
    .line 456
    array-length v2, v10

    .line 457
    const/4 v14, 0x0

    .line 458
    invoke-virtual {v5, v10, v14, v2}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    .line 459
    .line 460
    .line 461
    array-length v2, v0

    .line 462
    invoke-virtual {v5, v0, v14, v2}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 463
    .line 464
    .line 465
    move v0, v8

    .line 466
    :goto_13
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    rem-int/2addr v2, v9

    .line 471
    if-eqz v2, :cond_9

    .line 472
    .line 473
    add-int/lit8 v2, v0, 0x1

    .line 474
    .line 475
    int-to-byte v2, v2

    .line 476
    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 477
    .line 478
    .line 479
    move v0, v2

    .line 480
    goto :goto_13

    .line 481
    :catchall_5
    move-exception v0

    .line 482
    move-object/from16 v16, p4

    .line 483
    .line 484
    move-object v1, v5

    .line 485
    move-object/from16 v5, v26

    .line 486
    .line 487
    goto/16 :goto_4

    .line 488
    .line 489
    :catch_9
    move-exception v0

    .line 490
    move-object/from16 v16, p4

    .line 491
    .line 492
    move-object v1, v5

    .line 493
    move-object v5, v12

    .line 494
    goto/16 :goto_7

    .line 495
    .line 496
    :cond_9
    if-eqz v18, :cond_c

    .line 497
    .line 498
    invoke-interface {v11}, Lcom/jcraft/jsch/Cipher;->isChaCha20()Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-eqz v0, :cond_a

    .line 503
    .line 504
    const/4 v14, 0x0

    .line 505
    invoke-interface {v11, v14}, Lcom/jcraft/jsch/Cipher;->update(I)V

    .line 506
    .line 507
    .line 508
    iget-object v0, v5, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 509
    .line 510
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 511
    .line 512
    .line 513
    move-result v23

    .line 514
    iget-object v2, v5, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 515
    .line 516
    const/16 v25, 0x0

    .line 517
    .line 518
    const/16 v22, -0x4

    .line 519
    .line 520
    move-object/from16 v21, v0

    .line 521
    .line 522
    move-object/from16 v24, v2

    .line 523
    .line 524
    move-object/from16 v20, v11

    .line 525
    .line 526
    invoke-interface/range {v20 .. v25}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V

    .line 527
    .line 528
    .line 529
    goto :goto_14

    .line 530
    :cond_a
    move-object/from16 v20, v11

    .line 531
    .line 532
    invoke-interface/range {v20 .. v20}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    .line 533
    .line 534
    .line 535
    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 536
    iget-object v2, v5, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 537
    .line 538
    if-eqz v0, :cond_b

    .line 539
    .line 540
    :try_start_d
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 541
    .line 542
    .line 543
    move-result v23

    .line 544
    iget-object v0, v5, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 545
    .line 546
    const/16 v25, 0x0

    .line 547
    .line 548
    const/16 v22, 0x0

    .line 549
    .line 550
    move-object/from16 v24, v0

    .line 551
    .line 552
    move-object/from16 v21, v2

    .line 553
    .line 554
    invoke-interface/range {v20 .. v25}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V

    .line 555
    .line 556
    .line 557
    goto :goto_14

    .line 558
    :cond_b
    move-object/from16 v21, v2

    .line 559
    .line 560
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 561
    .line 562
    .line 563
    move-result v23

    .line 564
    iget-object v0, v5, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 565
    .line 566
    const/16 v25, 0x0

    .line 567
    .line 568
    const/16 v22, 0x0

    .line 569
    .line 570
    move-object/from16 v24, v0

    .line 571
    .line 572
    invoke-interface/range {v20 .. v25}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 573
    .line 574
    .line 575
    :cond_c
    :goto_14
    sget-object v0, Lcom/jcraft/jsch/KeyPair;->m:[B

    .line 576
    .line 577
    array-length v2, v0

    .line 578
    array-length v9, v6

    .line 579
    add-int/lit8 v9, v9, 0x4

    .line 580
    .line 581
    add-int/2addr v9, v2

    .line 582
    array-length v2, v4

    .line 583
    add-int/lit8 v2, v2, 0x4

    .line 584
    .line 585
    add-int/2addr v2, v9

    .line 586
    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 587
    .line 588
    .line 589
    move-result v9

    .line 590
    add-int/lit8 v9, v9, 0x4

    .line 591
    .line 592
    add-int/2addr v9, v2

    .line 593
    add-int/lit8 v9, v9, 0x4

    .line 594
    .line 595
    array-length v2, v7

    .line 596
    add-int/lit8 v2, v2, 0x4

    .line 597
    .line 598
    add-int/2addr v2, v9

    .line 599
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 600
    .line 601
    .line 602
    move-result v9

    .line 603
    add-int/lit8 v9, v9, 0x4

    .line 604
    .line 605
    add-int/2addr v9, v2

    .line 606
    add-int/2addr v9, v15

    .line 607
    new-instance v2, Lcom/jcraft/jsch/Buffer;

    .line 608
    .line 609
    invoke-direct {v2, v9}, Lcom/jcraft/jsch/Buffer;-><init>(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 610
    .line 611
    .line 612
    :try_start_e
    array-length v9, v0

    .line 613
    const/4 v14, 0x0

    .line 614
    invoke-virtual {v2, v0, v14, v9}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    .line 615
    .line 616
    .line 617
    array-length v0, v6

    .line 618
    invoke-virtual {v2, v6, v14, v0}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 619
    .line 620
    .line 621
    array-length v0, v4

    .line 622
    invoke-virtual {v2, v4, v14, v0}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 623
    .line 624
    .line 625
    iget-object v0, v13, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 626
    .line 627
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v2, v8}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 631
    .line 632
    .line 633
    array-length v0, v7

    .line 634
    invoke-virtual {v2, v7, v14, v0}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 635
    .line 636
    .line 637
    iget-object v0, v5, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 638
    .line 639
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 640
    .line 641
    .line 642
    move-result v4

    .line 643
    invoke-virtual {v2, v0, v14, v4}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 644
    .line 645
    .line 646
    iget-object v0, v5, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 647
    .line 648
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 649
    .line 650
    .line 651
    move-result v4

    .line 652
    invoke-virtual {v2, v0, v4, v15}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    .line 653
    .line 654
    .line 655
    iget-object v0, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 656
    .line 657
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 658
    .line 659
    .line 660
    move-result v4

    .line 661
    invoke-static {v4, v8, v0}, Lcom/jcraft/jsch/Util;->q(IZ[B)[B

    .line 662
    .line 663
    .line 664
    move-result-object v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 665
    :try_start_f
    sget-object v0, Lcom/jcraft/jsch/KeyPair;->o:[B

    .line 666
    .line 667
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 671
    .line 672
    .line 673
    move v9, v14

    .line 674
    :goto_15
    array-length v0, v4

    .line 675
    if-ge v9, v0, :cond_e

    .line 676
    .line 677
    add-int/lit8 v0, v9, 0x46

    .line 678
    .line 679
    array-length v6, v4

    .line 680
    if-ge v0, v6, :cond_d

    .line 681
    .line 682
    const/16 v6, 0x46

    .line 683
    .line 684
    invoke-virtual {v1, v4, v9, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 688
    .line 689
    .line 690
    move v9, v0

    .line 691
    goto :goto_15

    .line 692
    :catchall_6
    move-exception v0

    .line 693
    move-object/from16 v16, p4

    .line 694
    .line 695
    move-object v1, v5

    .line 696
    :goto_16
    move-object/from16 v5, v26

    .line 697
    .line 698
    goto/16 :goto_1a

    .line 699
    .line 700
    :catch_a
    move-exception v0

    .line 701
    move-object/from16 v16, p4

    .line 702
    .line 703
    move-object v1, v5

    .line 704
    move-object v5, v12

    .line 705
    goto :goto_19

    .line 706
    :cond_d
    array-length v0, v4

    .line 707
    sub-int/2addr v0, v9

    .line 708
    invoke-virtual {v1, v4, v9, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 712
    .line 713
    .line 714
    :cond_e
    sget-object v0, Lcom/jcraft/jsch/KeyPair;->p:[B

    .line 715
    .line 716
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 720
    .line 721
    .line 722
    invoke-static/range {v26 .. v26}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 723
    .line 724
    .line 725
    invoke-static {v12}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 726
    .line 727
    .line 728
    invoke-static/range {p4 .. p4}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 729
    .line 730
    .line 731
    invoke-static {v10}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 732
    .line 733
    .line 734
    iget-object v0, v5, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 735
    .line 736
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 737
    .line 738
    .line 739
    iget-object v0, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 740
    .line 741
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 742
    .line 743
    .line 744
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 745
    .line 746
    .line 747
    return-void

    .line 748
    :catchall_7
    move-exception v0

    .line 749
    move-object/from16 v16, p4

    .line 750
    .line 751
    move-object v1, v5

    .line 752
    move-object/from16 v5, v26

    .line 753
    .line 754
    goto/16 :goto_5

    .line 755
    .line 756
    :catch_b
    move-exception v0

    .line 757
    move-object/from16 v16, p4

    .line 758
    .line 759
    move-object v1, v5

    .line 760
    move-object v5, v12

    .line 761
    goto/16 :goto_8

    .line 762
    .line 763
    :catchall_8
    move-exception v0

    .line 764
    :goto_17
    move-object/from16 v26, v8

    .line 765
    .line 766
    goto/16 :goto_10

    .line 767
    .line 768
    :catch_c
    move-exception v0

    .line 769
    :goto_18
    move-object/from16 v26, v8

    .line 770
    .line 771
    goto/16 :goto_11

    .line 772
    .line 773
    :catchall_9
    move-exception v0

    .line 774
    move-object/from16 p4, v5

    .line 775
    .line 776
    goto :goto_17

    .line 777
    :catch_d
    move-exception v0

    .line 778
    move-object/from16 p4, v5

    .line 779
    .line 780
    goto :goto_18

    .line 781
    :cond_f
    :try_start_10
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 782
    .line 783
    const-string v1, "Unable to get private key blob"

    .line 784
    .line 785
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 789
    :catchall_a
    move-exception v0

    .line 790
    const/4 v1, 0x0

    .line 791
    const/4 v2, 0x0

    .line 792
    const/4 v4, 0x0

    .line 793
    const/4 v5, 0x0

    .line 794
    const/4 v10, 0x0

    .line 795
    goto/16 :goto_c

    .line 796
    .line 797
    :catch_e
    move-exception v0

    .line 798
    const/4 v1, 0x0

    .line 799
    const/4 v2, 0x0

    .line 800
    const/4 v4, 0x0

    .line 801
    const/4 v5, 0x0

    .line 802
    const/4 v10, 0x0

    .line 803
    goto/16 :goto_b

    .line 804
    .line 805
    :goto_19
    :try_start_11
    instance-of v3, v0, Lcom/jcraft/jsch/JSchException;

    .line 806
    .line 807
    if-eqz v3, :cond_10

    .line 808
    .line 809
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    .line 810
    .line 811
    throw v0

    .line 812
    :catchall_b
    move-exception v0

    .line 813
    move-object v12, v5

    .line 814
    goto :goto_16

    .line 815
    :cond_10
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    .line 816
    .line 817
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v6

    .line 821
    invoke-direct {v3, v6, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 822
    .line 823
    .line 824
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 825
    :goto_1a
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 826
    .line 827
    .line 828
    invoke-static {v12}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 829
    .line 830
    .line 831
    invoke-static/range {v16 .. v16}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 832
    .line 833
    .line 834
    invoke-static {v10}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 835
    .line 836
    .line 837
    if-eqz v1, :cond_11

    .line 838
    .line 839
    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 840
    .line 841
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 842
    .line 843
    .line 844
    :cond_11
    if-eqz v2, :cond_12

    .line 845
    .line 846
    iget-object v1, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 847
    .line 848
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 849
    .line 850
    .line 851
    :cond_12
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 852
    .line 853
    .line 854
    throw v0

    .line 855
    :cond_13
    const-string v0, "Unable to get public key blob"

    .line 856
    .line 857
    invoke-static {v0}, Le6;->h(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    return-void
.end method

.method public final writeOpenSSHv1PrivateKey(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 864
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/lang/String;[B)V

    return-void
.end method

.method public final writeOpenSSHv1PrivateKey(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 865
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 866
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 868
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final writeOpenSSHv1PrivateKey(Ljava/lang/String;[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 869
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 870
    :try_start_0
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 872
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final writeOpenSSHv1PrivateKey(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 873
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 874
    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 876
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final writeOpenSSHv1PrivateKey(Ljava/lang/String;[BLjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 877
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 878
    :try_start_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 880
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final writePrivateKey(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->writePrivateKey(Ljava/io/OutputStream;[B)V

    return-void
.end method

.method public final writePrivateKey(Ljava/io/OutputStream;[B)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    sget-object v4, Lcom/jcraft/jsch/KeyPair;->n:[B

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair;->m()[B

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    const/4 v6, 0x1

    .line 14
    new-array v7, v6, [[B

    .line 15
    .line 16
    const/4 v8, 0x3

    .line 17
    iget-object v9, v1, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 18
    .line 19
    const/4 v10, 0x0

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    move-object v15, v5

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object v0, v1, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair;->d()Lcom/jcraft/jsch/Cipher;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, v1, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 33
    .line 34
    :cond_1
    iget-object v0, v1, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    new-array v11, v0, [B

    .line 41
    .line 42
    aput-object v11, v7, v10

    .line 43
    .line 44
    iget-object v12, v1, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Random;

    .line 45
    .line 46
    if-nez v12, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair;->g()Lcom/jcraft/jsch/Random;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    iput-object v12, v1, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Random;

    .line 53
    .line 54
    :cond_2
    iget-object v12, v1, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Random;

    .line 55
    .line 56
    invoke-interface {v12, v11, v10, v0}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3, v11}, Lcom/jcraft/jsch/KeyPair;->f([B[B)[B

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    iget-object v0, v1, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 64
    .line 65
    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    array-length v13, v5

    .line 70
    div-int/2addr v13, v0

    .line 71
    add-int/2addr v13, v6

    .line 72
    mul-int/2addr v13, v0

    .line 73
    new-array v15, v13, [B

    .line 74
    .line 75
    array-length v14, v5

    .line 76
    invoke-static {v5, v10, v15, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    array-length v14, v5

    .line 80
    rem-int/2addr v14, v0

    .line 81
    sub-int/2addr v0, v14

    .line 82
    add-int/lit8 v14, v13, -0x1

    .line 83
    .line 84
    :goto_0
    sub-int v6, v13, v0

    .line 85
    .line 86
    if-gt v6, v14, :cond_3

    .line 87
    .line 88
    int-to-byte v6, v0

    .line 89
    aput-byte v6, v15, v14

    .line 90
    .line 91
    add-int/lit8 v14, v14, -0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    :try_start_0
    iget-object v0, v1, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 95
    .line 96
    invoke-interface {v0, v10, v12, v11}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    .line 97
    .line 98
    .line 99
    iget-object v14, v1, Lcom/jcraft/jsch/KeyPair;->d:Lcom/jcraft/jsch/Cipher;

    .line 100
    .line 101
    const/16 v16, 0x0

    .line 102
    .line 103
    const/16 v19, 0x0

    .line 104
    .line 105
    move-object/from16 v18, v15

    .line 106
    .line 107
    move/from16 v17, v13

    .line 108
    .line 109
    invoke-interface/range {v14 .. v19}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v9}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-interface {v6, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_4

    .line 123
    .line 124
    invoke-virtual {v9}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const-string v11, "failed to encrypt key"

    .line 129
    .line 130
    invoke-interface {v6, v8, v11, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_1
    invoke-static {v12}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 134
    .line 135
    .line 136
    :goto_2
    if-eq v15, v5, :cond_5

    .line 137
    .line 138
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 139
    .line 140
    .line 141
    :cond_5
    aget-object v0, v7, v10

    .line 142
    .line 143
    array-length v5, v15

    .line 144
    const/4 v6, 0x1

    .line 145
    invoke-static {v5, v6, v15}, Lcom/jcraft/jsch/Util;->q(IZ[B)[B

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    :try_start_1
    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair;->i()[B

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 157
    .line 158
    .line 159
    if-eqz v3, :cond_9

    .line 160
    .line 161
    sget-object v3, Lcom/jcraft/jsch/KeyPair;->r:[[B

    .line 162
    .line 163
    aget-object v6, v3, v10

    .line 164
    .line 165
    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 169
    .line 170
    .line 171
    const/16 v20, 0x1

    .line 172
    .line 173
    aget-object v3, v3, v20

    .line 174
    .line 175
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 176
    .line 177
    .line 178
    move v3, v10

    .line 179
    :goto_3
    array-length v6, v0

    .line 180
    if-ge v3, v6, :cond_8

    .line 181
    .line 182
    aget-byte v6, v0, v3

    .line 183
    .line 184
    ushr-int/lit8 v6, v6, 0x4

    .line 185
    .line 186
    and-int/lit8 v6, v6, 0xf

    .line 187
    .line 188
    int-to-byte v6, v6

    .line 189
    const/16 v7, 0x9

    .line 190
    .line 191
    if-ltz v6, :cond_6

    .line 192
    .line 193
    if-gt v6, v7, :cond_6

    .line 194
    .line 195
    add-int/lit8 v6, v6, 0x30

    .line 196
    .line 197
    :goto_4
    int-to-byte v6, v6

    .line 198
    goto :goto_5

    .line 199
    :cond_6
    add-int/lit8 v6, v6, 0x37

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :goto_5
    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write(I)V

    .line 203
    .line 204
    .line 205
    aget-byte v6, v0, v3

    .line 206
    .line 207
    and-int/lit8 v6, v6, 0xf

    .line 208
    .line 209
    int-to-byte v6, v6

    .line 210
    if-ltz v6, :cond_7

    .line 211
    .line 212
    if-gt v6, v7, :cond_7

    .line 213
    .line 214
    add-int/lit8 v6, v6, 0x30

    .line 215
    .line 216
    :goto_6
    int-to-byte v6, v6

    .line 217
    goto :goto_7

    .line 218
    :cond_7
    add-int/lit8 v6, v6, 0x37

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :goto_7
    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write(I)V

    .line 222
    .line 223
    .line 224
    add-int/lit8 v3, v3, 0x1

    .line 225
    .line 226
    goto :goto_3

    .line 227
    :catch_1
    move-exception v0

    .line 228
    goto :goto_9

    .line 229
    :cond_8
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 233
    .line 234
    .line 235
    :cond_9
    :goto_8
    array-length v0, v5

    .line 236
    if-ge v10, v0, :cond_b

    .line 237
    .line 238
    add-int/lit8 v0, v10, 0x40

    .line 239
    .line 240
    array-length v3, v5

    .line 241
    if-ge v0, v3, :cond_a

    .line 242
    .line 243
    const/16 v3, 0x40

    .line 244
    .line 245
    invoke-virtual {v2, v5, v10, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 249
    .line 250
    .line 251
    move v10, v0

    .line 252
    goto :goto_8

    .line 253
    :cond_a
    array-length v0, v5

    .line 254
    sub-int/2addr v0, v10

    .line 255
    invoke-virtual {v2, v5, v10, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 259
    .line 260
    .line 261
    :cond_b
    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair;->j()[B

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    .line 270
    .line 271
    goto :goto_a

    .line 272
    :goto_9
    invoke-virtual {v9}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-interface {v1, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_c

    .line 281
    .line 282
    invoke-virtual {v9}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    const-string v2, "failed to write private key"

    .line 287
    .line 288
    invoke-interface {v1, v8, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    .line 290
    .line 291
    :cond_c
    :goto_a
    return-void
.end method

.method public final writePrivateKey(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->writePrivateKey(Ljava/lang/String;[B)V

    return-void
.end method

.method public final writePrivateKey(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 295
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/KeyPair;->writePrivateKey(Ljava/io/OutputStream;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 297
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final writePublicKey(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2, v0}, Lcom/jcraft/jsch/Util;->q(IZ[B)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->k()[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcom/jcraft/jsch/KeyPair;->s:[B

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 21
    .line 22
    .line 23
    array-length v2, v0

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    invoke-static {p2, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 38
    .line 39
    .line 40
    sget-object p2, Lcom/jcraft/jsch/KeyPair;->n:[B

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception p1

    .line 47
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const/4 v0, 0x3

    .line 54
    invoke-interface {p2, v0}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p2, "failed to write public key"

    .line 65
    .line 66
    invoke-interface {p0, v0, p2, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method public final writePublicKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 71
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/KeyPair;->writePublicKey(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 73
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final writeSECSHPublicKey(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/jcraft/jsch/KeyPair;->n:[B

    .line 2
    .line 3
    const-string v1, "Comment: \""

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    array-length v3, v2

    .line 10
    const/4 v4, 0x1

    .line 11
    invoke-static {v3, v4, v2}, Lcom/jcraft/jsch/Util;->q(IZ[B)[B

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :try_start_0
    const-string v3, "---- BEGIN SSH2 PUBLIC KEY ----"

    .line 16
    .line 17
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p2, "\""

    .line 38
    .line 39
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 54
    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    :goto_0
    array-length v1, v2

    .line 58
    if-ge p2, v1, :cond_1

    .line 59
    .line 60
    array-length v1, v2

    .line 61
    sub-int/2addr v1, p2

    .line 62
    const/16 v3, 0x46

    .line 63
    .line 64
    if-ge v1, v3, :cond_0

    .line 65
    .line 66
    array-length v1, v2

    .line 67
    sub-int v3, v1, p2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :cond_0
    :goto_1
    invoke-virtual {p1, v2, p2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 76
    .line 77
    .line 78
    add-int/2addr p2, v3

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-string p2, "---- END SSH2 PUBLIC KEY ----"

    .line 81
    .line 82
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 83
    .line 84
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :goto_2
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const/4 v0, 0x3

    .line 102
    invoke-interface {p2, v0}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_2

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string p2, "failed to write public key"

    .line 113
    .line 114
    invoke-interface {p0, v0, p2, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    return-void
.end method

.method public final writeSECSHPublicKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 119
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/KeyPair;->writeSECSHPublicKey(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 121
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method
