.class public Lcom/facebook/crypto/cipher/NativeGCMCipher;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:I

.field public final b:Lov7;

.field private mCtxPtr:J


# direct methods
.method public constructor <init>(Lov7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->b:Lov7;

    .line 8
    .line 9
    return-void
.end method

.method private native nativeDecryptFinal([BI)I
.end method

.method private native nativeDecryptInit([B[B)I
.end method

.method private native nativeDestroy()I
.end method

.method private native nativeEncryptFinal([BI)I
.end method

.method private native nativeEncryptInit([B[B)I
.end method

.method private static native nativeFailure()I
.end method

.method private native nativeGetCipherBlockSize()I
.end method

.method private native nativeUpdate([BII[BI)I
.end method

.method private native nativeUpdateAad([BI)I
.end method


# virtual methods
.method public final a([BI)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v1, "Cipher has not been initialized"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lbb9;->n(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x5

    .line 15
    iput v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeDecryptFinal([BI)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eq p0, p1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance p0, Ll;

    .line 29
    .line 30
    const-string p1, "The message could not be decrypted successfully.It has either been tampered with or the wrong resource is being decrypted."

    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final b([B[B)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    const-string v0, "Cipher has already been initialized"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lbb9;->n(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->b:Lov7;

    .line 14
    .line 15
    invoke-virtual {v0}, Lov7;->a()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeDecryptInit([B[B)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eq p1, p2, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    iput p1, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p0, Ll;

    .line 33
    .line 34
    const-string p1, "decryptInit"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    move v0, v2

    .line 14
    :goto_1
    const-string v1, "Cipher has not been finalized"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lbb9;->n(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeDestroy()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    .line 29
    iput v2, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    new-instance p0, Ll;

    .line 33
    .line 34
    const-string v0, "destroy"

    .line 35
    .line 36
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final d([BI)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v1, "Cipher has not been initialized"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lbb9;->n(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    iput v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeEncryptFinal([BI)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eq p0, p1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance p0, Ll;

    .line 29
    .line 30
    const-string p1, "encryptFinal: "

    .line 31
    .line 32
    invoke-static {p2, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final e([B[B)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    const-string v0, "Cipher has already been initialized"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lbb9;->n(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->b:Lov7;

    .line 14
    .line 15
    invoke-virtual {v0}, Lov7;->a()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeEncryptInit([B[B)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eq p1, p2, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    iput p1, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p0, Ll;

    .line 33
    .line 34
    const-string p1, "encryptInit"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final f()V
    .locals 1

    .line 1
    iget p0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    const-string v0, "Cipher has not been initialized"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lbb9;->n(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final g()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->f()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeGetCipherBlockSize()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final h([BII[BI)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->f()V

    .line 2
    .line 3
    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeUpdate([BII[BI)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-ltz p0, :cond_0

    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    new-instance p1, Ll;

    .line 12
    .line 13
    const-string p4, "; DataLen = "

    .line 14
    .line 15
    const-string p5, "; Result = "

    .line 16
    .line 17
    const-string v0, "update: Offset = "

    .line 18
    .line 19
    invoke-static {v0, p2, p4, p5, p3}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public final i([BI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->f()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeUpdateAad([BI)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-ltz p0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ll;

    .line 12
    .line 13
    const-string p1, "updateAAd: DataLen = "

    .line 14
    .line 15
    invoke-static {p2, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method
