.class public abstract Lgk1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Llo4;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x100

    .line 8
    .line 9
    if-gt p1, v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lgk1;->a:I

    .line 12
    .line 13
    new-array p1, p1, [B

    .line 14
    .line 15
    iput-object p1, p0, Lgk1;->b:Ljava/lang/Object;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string p0, "Invalid distance: "

    .line 19
    .line 20
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "KEY_256"

    const-string v1, "crypto."

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 37
    new-instance p1, Lkh3;

    .line 38
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 39
    iput-object p1, p0, Lgk1;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 40
    iput p1, p0, Lgk1;->a:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 31
    invoke-static {p1}, Lym9;->d([B)[I

    move-result-object p1

    iput-object p1, p0, Lgk1;->b:Ljava/lang/Object;

    .line 32
    iput p2, p0, Lgk1;->a:I

    return-void

    .line 33
    :cond_0
    const-string p0, "The key length in bytes must be 32."

    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static C(J)J
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    ushr-long v0, p0, v0

    .line 3
    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    and-long/2addr p0, v2

    .line 7
    neg-long p0, p0

    .line 8
    xor-long/2addr p0, v0

    .line 9
    return-wide p0
.end method

.method public static E([BII)Ly69;
    .locals 1

    .line 1
    new-instance v0, Ly69;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Ly69;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0, p2}, Ly69;->I(I)I
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public abstract A()D
.end method

.method public abstract B()I
.end method

.method public D([BI)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-static {p1}, Lym9;->d([B)[I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lgk1;->G([II)[I

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [I

    .line 14
    .line 15
    invoke-static {p1}, Lym9;->b([I)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    move v0, p2

    .line 20
    :goto_0
    array-length v1, p0

    .line 21
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    aget v1, p0, v0

    .line 24
    .line 25
    aget v2, p1, v0

    .line 26
    .line 27
    add-int/2addr v1, v2

    .line 28
    aput v1, p0, v0

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/16 p1, 0x40

    .line 34
    .line 35
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/16 v1, 0x10

    .line 50
    .line 51
    invoke-virtual {v0, p0, p2, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 52
    .line 53
    .line 54
    return-object p1
.end method

.method public F([BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    invoke-virtual {p0}, Lgk1;->B()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    div-int/lit8 v1, v0, 0x40

    .line 13
    .line 14
    add-int/lit8 v2, v1, 0x1

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    iget v4, p0, Lgk1;->a:I

    .line 20
    .line 21
    add-int/2addr v4, v3

    .line 22
    invoke-virtual {p0, p1, v4}, Lgk1;->D([BI)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/16 v5, 0x40

    .line 27
    .line 28
    if-ne v3, v1, :cond_0

    .line 29
    .line 30
    rem-int/lit8 v5, v0, 0x40

    .line 31
    .line 32
    invoke-static {p2, p3, v4, v5}, Lz85;->K(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-static {p2, p3, v4, v5}, Lz85;->K(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 37
    .line 38
    .line 39
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void

    .line 43
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 44
    .line 45
    invoke-virtual {p0}, Lgk1;->B()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    const-string p2, "The nonce length (in bytes) must be "

    .line 50
    .line 51
    invoke-static {p0, p2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public abstract G([II)[I
.end method

.method public abstract H()F
.end method

.method public abstract I(I)I
.end method

.method public abstract J()I
.end method

.method public abstract K(I)V
.end method

.method public abstract L()I
.end method

.method public abstract M(I)V
.end method

.method public abstract N()I
.end method

.method public abstract O()I
.end method

.method public abstract P()I
.end method

.method public abstract Q()I
.end method

.method public abstract R()I
.end method

.method public abstract S()I
.end method

.method public abstract T()J
.end method

.method public abstract U()J
.end method

.method public abstract V()J
.end method

.method public abstract W()J
.end method

.method public abstract X()J
.end method

.method public abstract Y()Lx69;
.end method

.method public abstract Z()Ljava/lang/String;
.end method

.method public abstract a(I)V
.end method

.method public abstract a0()Ljava/lang/String;
.end method

.method public abstract b()I
.end method

.method public abstract b0()Z
.end method

.method public abstract c()Z
.end method

.method public abstract c0()Z
.end method

.method public abstract d(I)V
.end method

.method public abstract e(I)I
.end method

.method public abstract f()Z
.end method

.method public abstract g()Lgy0;
.end method

.method public abstract h()D
.end method

.method public abstract j()I
.end method

.method public abstract k()I
.end method

.method public abstract l()J
.end method

.method public abstract m()F
.end method

.method public abstract n()I
.end method

.method public abstract o()J
.end method

.method public abstract p()I
.end method

.method public abstract q()J
.end method

.method public abstract r()I
.end method

.method public abstract s()J
.end method

.method public abstract t()Ljava/lang/String;
.end method

.method public abstract u()Ljava/lang/String;
.end method

.method public abstract v()I
.end method

.method public abstract w()I
.end method

.method public abstract x()J
.end method

.method public abstract y(I)Z
.end method

.method public z()V
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Lgk1;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_1
    iget v1, p0, Lgk1;->a:I

    .line 9
    .line 10
    const/16 v2, 0x64

    .line 11
    .line 12
    if-ge v1, v2, :cond_2

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    iput v1, p0, Lgk1;->a:I

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lgk1;->y(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v1, p0, Lgk1;->a:I

    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    iput v1, p0, Lgk1;->a:I

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_2
    new-instance p0, Lfg4;

    .line 32
    .line 33
    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    .line 34
    .line 35
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method
