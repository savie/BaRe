.class public final Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mCodeChallenge:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "code_challenge"
    .end annotation
.end field

.field private final mCodeChallengeMethod:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "code_challenge_method"
    .end annotation
.end field

.field private final transient mCodeVerifier:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;->mCodeVerifier:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;->mCodeChallenge:Ljava/lang/String;

    .line 7
    .line 8
    const-string p1, "S256"

    .line 9
    .line 10
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;->mCodeChallengeMethod:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static newPkceChallenge()Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;
    .locals 4

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    new-instance v1, Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 11
    .line 12
    .line 13
    sget v1, Lcom/microsoft/identity/common/java/base64/Base64Util;->a:I

    .line 14
    .line 15
    invoke-static {v0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->encodeUrlSafeString([B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_0
    const-string v2, "SHA-256"

    .line 21
    .line 22
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "ISO_8859_1"

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->encodeUrlSafeString([B)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    new-instance v2, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;

    .line 44
    .line 45
    invoke-direct {v2, v0, v1}, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :catch_0
    move-exception v0

    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :goto_0
    const-string v2, "Every implementation of the Java platform is required to support ISO-8859-1.Consult the release documentation for your implementation."

    .line 54
    .line 55
    invoke-static {v2, v0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :goto_1
    const-string v2, "Failed to generate the code verifier challenge"

    .line 60
    .line 61
    invoke-static {v2, v0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    return-object v1
.end method


# virtual methods
.method public final getCodeChallenge()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;->mCodeChallenge:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCodeChallengeMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;->mCodeChallengeMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCodeVerifier()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;->mCodeVerifier:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
