.class public abstract Lp06;
.super Ljava/security/SignatureSpi;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lvz0;

.field public b:Lh16;


# direct methods
.method public constructor <init>(Lvz0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp06;->a:Lvz0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract a()[B
.end method

.method public abstract b(B)V
.end method

.method public abstract c([BII)V
.end method

.method public final engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 2
    .line 3
    const-string p1, "ECDSA doesn\'t take parameters"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lh16;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lh16;

    .line 6
    .line 7
    iput-object p1, p0, Lp06;->b:Lh16;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p0, "Unsupported key type"

    .line 11
    .line 12
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final engineInitVerify(Ljava/security/PublicKey;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/security/InvalidKeyException;

    .line 2
    .line 3
    const-string p1, "Can only be used for signing."

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 2
    .line 3
    const-string p1, "ECDSA doesn\'t take parameters"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final engineSign()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lp06;->b:Lh16;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lp06;->a:Lvz0;

    .line 6
    .line 7
    invoke-virtual {p0}, Lp06;->a()[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, v1, p0}, Lj16;->b(Lvz0;[B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    new-instance v0, Ljava/security/SignatureException;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    .line 24
    .line 25
    const-string v0, "Not initialized"

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final engineUpdate(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp06;->b:Lh16;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lp06;->b(B)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    .line 10
    .line 11
    const-string p1, "Not initialized"

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public final engineUpdate([BII)V
    .locals 1

    .line 17
    iget-object v0, p0, Lp06;->b:Lh16;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lp06;->c([BII)V

    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "Not initialized"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineVerify([B)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/security/SignatureException;

    .line 2
    .line 3
    const-string p1, "Not initialized"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
