.class public final Lio9;
.super Ljava/lang/ThreadLocal;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object p0, Ls1a;->b:Ls1a;

    .line 2
    .line 3
    const-string v0, "AES/GCM-SIV/NoPadding"

    .line 4
    .line 5
    iget-object p0, p0, Ls1a;->a:Lt1a;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljavax/crypto/Cipher;

    .line 12
    .line 13
    invoke-static {p0}, Lml9;->c(Ljavax/crypto/Cipher;)Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    :cond_0
    return-object p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method
