.class public final Ler9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfr9;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(Lkg9;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lkg9;->b:I

    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    iget v0, p1, Lkg9;->c:I

    .line 12
    .line 13
    const/16 v1, 0x10

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Lkg9;->d:Lig9;

    .line 18
    .line 19
    sget-object v1, Lig9;->e:Lig9;

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iget p1, p1, Lkg9;->a:I

    .line 24
    .line 25
    iput p1, p0, Ler9;->a:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string p0, "invalid variant"

    .line 29
    .line 30
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v2

    .line 34
    :cond_1
    const-string p0, "invalid tag size"

    .line 35
    .line 36
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v2

    .line 40
    :cond_2
    const-string p0, "invalid IV size"

    .line 41
    .line 42
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v2
.end method


# virtual methods
.method public final a(I[B[B)[B
    .locals 4

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "ciphertext too short"

    .line 4
    .line 5
    if-lt v0, p1, :cond_2

    .line 6
    .line 7
    array-length v0, p2

    .line 8
    iget p0, p0, Ler9;->a:I

    .line 9
    .line 10
    if-ne v0, p0, :cond_1

    .line 11
    .line 12
    invoke-static {p2}, Lyk9;->c([B)Ljavax/crypto/spec/SecretKeySpec;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    array-length p2, p3

    .line 17
    add-int/lit8 v0, p1, 0xc

    .line 18
    .line 19
    add-int/lit8 v3, p1, 0x1c

    .line 20
    .line 21
    if-lt p2, v3, :cond_0

    .line 22
    .line 23
    const/16 p2, 0xc

    .line 24
    .line 25
    invoke-static {p3, p1, p2}, Lyk9;->a([BII)Ljava/security/spec/AlgorithmParameterSpec;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Lyk9;->b()Ljavax/crypto/Cipher;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x2

    .line 34
    invoke-virtual {v2, v3, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 35
    .line 36
    .line 37
    array-length p0, p3

    .line 38
    sub-int/2addr p0, p1

    .line 39
    sub-int/2addr p0, p2

    .line 40
    invoke-virtual {v2, p3, v0, p0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_0
    invoke-static {v2}, Lm0;->h(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_1
    const-string p0, "invalid key size"

    .line 50
    .line 51
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_2
    invoke-static {v2}, Lm0;->h(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v1
.end method

.method public final zza()I
    .locals 0

    .line 1
    iget p0, p0, Ler9;->a:I

    .line 2
    .line 3
    return p0
.end method
