.class public final Lh;
.super Ljava/io/OutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljavax/crypto/CipherOutputStream;

.field public final b:I

.field public final c:[B

.field public d:I


# direct methods
.method public constructor <init>(Lf;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {v0, p2, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lh;->a:Ljavax/crypto/CipherOutputStream;

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget v0, p0, Lh;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lh;->a:Ljavax/crypto/CipherOutputStream;

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lh;->c:[B

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v1}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget-object p0, p0, Lh;->a:Ljavax/crypto/CipherOutputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write(I)V
    .locals 3

    .line 56
    iget v0, p0, Lh;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lh;->d:I

    int-to-byte p1, p1

    iget-object v2, p0, Lh;->c:[B

    aput-byte p1, v2, v0

    .line 57
    iget p1, p0, Lh;->b:I

    if-ne v1, p1, :cond_0

    .line 58
    iget-object p1, p0, Lh;->a:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {p1, v2}, Ljavax/crypto/CipherOutputStream;->write([B)V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lh;->d:I

    .line 60
    invoke-static {v2, p1}, Ljava/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method public final write([BII)V
    .locals 6

    .line 1
    iget v0, p0, Lh;->d:I

    .line 2
    .line 3
    add-int v1, p3, v0

    .line 4
    .line 5
    iget v2, p0, Lh;->b:I

    .line 6
    .line 7
    if-le v1, v2, :cond_0

    .line 8
    .line 9
    sub-int v1, v2, v0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, p3

    .line 13
    :goto_0
    iget-object v3, p0, Lh;->c:[B

    .line 14
    .line 15
    invoke-static {p1, p2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lh;->d:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lh;->d:I

    .line 22
    .line 23
    if-ne v0, v2, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lh;->a:Ljavax/crypto/CipherOutputStream;

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    iput v4, p0, Lh;->d:I

    .line 32
    .line 33
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 34
    .line 35
    .line 36
    sub-int v5, p3, v1

    .line 37
    .line 38
    if-lt v5, v2, :cond_1

    .line 39
    .line 40
    div-int/2addr v5, v2

    .line 41
    mul-int/2addr v5, v2

    .line 42
    add-int v2, p2, v1

    .line 43
    .line 44
    invoke-virtual {v0, p1, v2, v5}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    .line 45
    .line 46
    .line 47
    add-int/2addr v1, v5

    .line 48
    :cond_1
    add-int/2addr p2, v1

    .line 49
    sub-int/2addr p3, v1

    .line 50
    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    iput p3, p0, Lh;->d:I

    .line 54
    .line 55
    :cond_2
    return-void
.end method
