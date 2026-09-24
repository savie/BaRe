.class public final Lx32;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lov7;

.field public final b:Lw00;


# direct methods
.method public constructor <init>(Lgk1;Lov7;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lz28;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lx32;->a:Lov7;

    .line 12
    .line 13
    new-instance p1, Lw00;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-direct {p1, v1, p2, v0}, Lw00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lx32;->b:Lw00;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a([BLgx2;)[B
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1, p2}, Lx32;->c(Ljava/io/InputStream;Lgx2;)Lpk5;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    add-int/lit8 v0, v0, -0x1e

    .line 12
    .line 13
    new-instance p1, Llh3;

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/16 p2, 0x400

    .line 19
    .line 20
    new-array v0, p2, [B

    .line 21
    .line 22
    :goto_0
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v0, v1, p2}, Lpk5;->read([BII)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, -0x1

    .line 28
    if-eq v2, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lpk5;->close()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Llh3;->a()[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public final b([BLgx2;)[B
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    add-int/lit8 v0, v0, 0x1e

    .line 3
    .line 4
    new-instance v1, Llh3;

    .line 5
    .line 6
    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, p2}, Lx32;->d(Ljava/io/OutputStream;Lgx2;)Lqk5;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p2, 0x0

    .line 14
    array-length v0, p1

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lqk5;->write([BII)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lqk5;->close()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Llh3;->a()[B

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final c(Ljava/io/InputStream;Lgx2;)Lpk5;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-byte v0, v0

    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-byte v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v0, v3, :cond_0

    .line 14
    .line 15
    move v4, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v4, v2

    .line 18
    :goto_0
    const-string v5, "Unexpected crypto version "

    .line 19
    .line 20
    invoke-static {v0, v5}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/4 v6, 0x0

    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    if-ne v1, v4, :cond_1

    .line 29
    .line 30
    move v4, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v4, v2

    .line 33
    :goto_1
    const-string v5, "Unexpected cipher ID "

    .line 34
    .line 35
    invoke-static {v1, v5}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    const/16 v4, 0xc

    .line 42
    .line 43
    new-array v4, v4, [B

    .line 44
    .line 45
    new-instance v5, Ljava/io/DataInputStream;

    .line 46
    .line 47
    invoke-direct {v5, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 51
    .line 52
    .line 53
    new-instance v5, Lcom/facebook/crypto/cipher/NativeGCMCipher;

    .line 54
    .line 55
    iget-object p0, p0, Lx32;->b:Lw00;

    .line 56
    .line 57
    iget-object v6, p0, Lw00;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v6, Lov7;

    .line 60
    .line 61
    invoke-direct {v5, v6}, Lcom/facebook/crypto/cipher/NativeGCMCipher;-><init>(Lov7;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lz28;

    .line 67
    .line 68
    invoke-virtual {p0}, Lz28;->i()[B

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v5, p0, v4}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->b([B[B)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p2, Lgx2;->a:[B

    .line 76
    .line 77
    new-array p2, v3, [B

    .line 78
    .line 79
    aput-byte v0, p2, v2

    .line 80
    .line 81
    new-array v0, v3, [B

    .line 82
    .line 83
    aput-byte v1, v0, v2

    .line 84
    .line 85
    invoke-virtual {v5, p2, v3}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->i([BI)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v0, v3}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->i([BI)V

    .line 89
    .line 90
    .line 91
    array-length p2, p0

    .line 92
    invoke-virtual {v5, p0, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->i([BI)V

    .line 93
    .line 94
    .line 95
    new-instance p0, Lpk5;

    .line 96
    .line 97
    invoke-direct {p0, p1, v5}, Lpk5;-><init>(Ljava/io/InputStream;Lcom/facebook/crypto/cipher/NativeGCMCipher;)V

    .line 98
    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_2
    invoke-static {v5}, Ly5;->m(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object v6

    .line 105
    :cond_3
    invoke-static {v5}, Ly5;->m(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-object v6
.end method

.method public final d(Ljava/io/OutputStream;Lgx2;)Lqk5;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lx32;->b:Lw00;

    .line 10
    .line 11
    iget-object v2, p0, Lw00;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lz28;

    .line 14
    .line 15
    iget-object v3, v2, Lz28;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lgk1;

    .line 18
    .line 19
    iget v4, v3, Lgk1;->a:I

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    const/16 v4, 0xc

    .line 24
    .line 25
    new-array v5, v4, [B

    .line 26
    .line 27
    iget-object v3, v3, Lgk1;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lkh3;

    .line 30
    .line 31
    invoke-virtual {v3, v5}, Lkh3;->nextBytes([B)V

    .line 32
    .line 33
    .line 34
    const-string v3, "IV"

    .line 35
    .line 36
    invoke-static {v3, v4, v5}, Lz28;->D(Ljava/lang/String;I[B)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/facebook/crypto/cipher/NativeGCMCipher;

    .line 40
    .line 41
    iget-object p0, p0, Lw00;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lov7;

    .line 44
    .line 45
    invoke-direct {v3, p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;-><init>(Lov7;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lz28;->i()[B

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v3, p0, v5}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->e([B[B)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p2, Lgx2;->a:[B

    .line 59
    .line 60
    new-array p2, v0, [B

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    aput-byte v0, p2, v2

    .line 64
    .line 65
    new-array v4, v0, [B

    .line 66
    .line 67
    aput-byte v1, v4, v2

    .line 68
    .line 69
    invoke-virtual {v3, p2, v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->i([BI)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4, v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->i([BI)V

    .line 73
    .line 74
    .line 75
    array-length p2, p0

    .line 76
    invoke-virtual {v3, p0, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->i([BI)V

    .line 77
    .line 78
    .line 79
    new-instance p0, Lqk5;

    .line 80
    .line 81
    invoke-direct {p0, p1, v3}, Lqk5;-><init>(Ljava/io/OutputStream;Lcom/facebook/crypto/cipher/NativeGCMCipher;)V

    .line 82
    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_0
    const/4 p0, 0x0

    .line 86
    throw p0
.end method
