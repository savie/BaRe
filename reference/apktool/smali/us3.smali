.class public final Lus3;
.super Ljava/io/PushbackInputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Z

.field public static final c:[B


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\r\n"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput-boolean v0, Lus3;->b:Z

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lus3;->c:[B

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 9
    .line 10
    sub-int/2addr v0, v1

    .line 11
    iget-object p0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    add-int/2addr p0, v0

    .line 18
    return p0

    .line 19
    :cond_0
    const-string p0, "Stream closed"

    .line 20
    .line 21
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final read()I
    .locals 1

    .line 62
    sget-boolean v0, Lus3;->b:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result p0

    return p0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lus3;->readInt()I

    move-result p0

    return p0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 61
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lus3;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 4

    .line 1
    sget-boolean v0, Lus3;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    if-ge p3, v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lus3;->available()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    iput p3, p0, Lus3;->a:I

    .line 24
    .line 25
    if-ge p3, v0, :cond_2

    .line 26
    .line 27
    iput v0, p0, Lus3;->a:I

    .line 28
    .line 29
    :cond_2
    invoke-virtual {p0}, Lus3;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    const/4 v1, -0x1

    .line 34
    if-ne p3, v1, :cond_3

    .line 35
    .line 36
    return v1

    .line 37
    :cond_3
    move v2, p2

    .line 38
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 39
    .line 40
    int-to-byte p3, p3

    .line 41
    aput-byte p3, p1, v2

    .line 42
    .line 43
    iget p3, p0, Lus3;->a:I

    .line 44
    .line 45
    sub-int/2addr p3, v0

    .line 46
    iput p3, p0, Lus3;->a:I

    .line 47
    .line 48
    if-lez p3, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0}, Lus3;->readInt()I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-ne p3, v1, :cond_4

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    move v2, v3

    .line 58
    goto :goto_0

    .line 59
    :cond_5
    :goto_1
    sub-int/2addr v3, p2

    .line 60
    return v3
.end method

.method public final readInt()I
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    if-eq v0, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return v1

    .line 24
    :cond_1
    sget-object v0, Lus3;->c:[B

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 27
    .line 28
    .line 29
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget v1, p0, Lus3;->a:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    iput v1, p0, Lus3;->a:I

    .line 38
    .line 39
    :cond_2
    return v0
.end method
