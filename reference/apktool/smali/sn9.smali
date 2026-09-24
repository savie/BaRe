.class public final Lsn9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lw99;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lon9;Lit9;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lsn9;->a:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lsn9;->b:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Lsn9;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lsn9;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Len9;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lao;-><init>([B)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lsn9;->b:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p2, p0, Lsn9;->c:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 3

    .line 1
    iget v0, p0, Lsn9;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lsn9;->c:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v2, [B

    .line 10
    .line 11
    array-length v0, v2

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lsn9;->c([B[B)[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v2, p1}, Lau9;->b([B[B)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    array-length v0, v2

    .line 26
    array-length v1, p1

    .line 27
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1, p2}, Lsn9;->c([B[B)[B

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p0, "Decryption failed (OutputPrefix mismatch)."

    .line 37
    .line 38
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-object v1

    .line 42
    :pswitch_0
    check-cast v2, Lit9;

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Lit9;->a([B)Ljava/lang/Iterable;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :catch_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lon9;

    .line 63
    .line 64
    :try_start_0
    iget-object v0, v0, Lon9;->a:Lw99;

    .line 65
    .line 66
    invoke-interface {v0, p1, p2}, Lw99;->a([B[B)[B

    .line 67
    .line 68
    .line 69
    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const-string p0, "decryption failed"

    .line 72
    .line 73
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    return-object v1

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b([B[B)[B
    .locals 3

    .line 1
    iget v0, p0, Lsn9;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lsn9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    array-length v0, p1

    .line 9
    add-int/lit8 v0, v0, 0x1c

    .line 10
    .line 11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v2, 0xc

    .line 16
    .line 17
    invoke-static {v2}, Lrt9;->a(I)[B

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    check-cast v1, Len9;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2, p1, p2}, Lao;->s(Ljava/nio/ByteBuffer;[B[B[B)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lsn9;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, [B

    .line 36
    .line 37
    array-length p2, p0

    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    filled-new-array {p0, p1}, [[B

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lz85;->N([[B)[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_0
    return-object p1

    .line 50
    :pswitch_0
    check-cast v1, Lon9;

    .line 51
    .line 52
    iget-object p0, v1, Lon9;->a:Lw99;

    .line 53
    .line 54
    invoke-interface {p0, p1, p2}, Lw99;->b([B[B)[B

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    array-length p1, p1

    .line 59
    return-object p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c([B[B)[B
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x1c

    .line 3
    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    const/16 v0, 0xc

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    array-length v2, p1

    .line 13
    sub-int/2addr v2, v0

    .line 14
    invoke-static {p1, v0, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lsn9;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Len9;

    .line 21
    .line 22
    invoke-virtual {p0, p1, v1, p2}, Lao;->t(Ljava/nio/ByteBuffer;[B[B)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    const-string p0, "ciphertext too short"

    .line 28
    .line 29
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method
