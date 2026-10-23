.class public final Lp96;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[B

.field public b:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lp96;->a:[B

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lrt3;)V
    .locals 5

    .line 1
    :goto_0
    iget v0, p0, Lp96;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lp96;->a:[B

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lp96;->c()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const/4 v2, 0x3

    .line 13
    ushr-long v2, v0, v2

    .line 14
    .line 15
    long-to-int v2, v2

    .line 16
    const-wide/16 v3, 0x7

    .line 17
    .line 18
    and-long/2addr v0, v3

    .line 19
    long-to-int v0, v0

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {p1, v1, v0, p0}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final b(I)[B
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lp96;->c()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    long-to-int p1, v2

    .line 10
    if-ltz p1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lp96;->b:I

    .line 13
    .line 14
    add-int v2, v0, p1

    .line 15
    .line 16
    iget-object v3, p0, Lp96;->a:[B

    .line 17
    .line 18
    array-length v4, v3

    .line 19
    if-gt v2, v4, :cond_0

    .line 20
    .line 21
    add-int v1, v0, p1

    .line 22
    .line 23
    invoke-static {v3, v0, v1}, Lx50;->k0([BII)[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v1, p0, Lp96;->b:I

    .line 28
    .line 29
    add-int/2addr v1, p1

    .line 30
    iput v1, p0, Lp96;->b:I

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    const-string p0, "Invalid length-delimited size"

    .line 34
    .line 35
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    const-string p0, "Expected length-delimited field"

    .line 40
    .line 41
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v1
.end method

.method public final c()J
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    :goto_0
    const/16 v3, 0x40

    .line 5
    .line 6
    if-ge v0, v3, :cond_2

    .line 7
    .line 8
    iget v3, p0, Lp96;->b:I

    .line 9
    .line 10
    iget-object v4, p0, Lp96;->a:[B

    .line 11
    .line 12
    array-length v5, v4

    .line 13
    if-ge v3, v5, :cond_1

    .line 14
    .line 15
    add-int/lit8 v5, v3, 0x1

    .line 16
    .line 17
    iput v5, p0, Lp96;->b:I

    .line 18
    .line 19
    aget-byte v3, v4, v3

    .line 20
    .line 21
    and-int/lit8 v4, v3, 0x7f

    .line 22
    .line 23
    int-to-long v4, v4

    .line 24
    shl-long/2addr v4, v0

    .line 25
    or-long/2addr v1, v4

    .line 26
    and-int/lit16 v3, v3, 0x80

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    return-wide v1

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x7

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string p0, "Truncated varint"

    .line 35
    .line 36
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    const-wide/16 v0, 0x0

    .line 40
    .line 41
    return-wide v0

    .line 42
    :cond_2
    const-string p0, "Malformed varint"

    .line 43
    .line 44
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1
.end method

.method public final d(I)J
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lp96;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0

    .line 8
    :cond_0
    const-string p0, "Expected varint field"

    .line 9
    .line 10
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 p0, 0x0

    .line 14
    .line 15
    return-wide p0
.end method

.method public final e(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget p1, p0, Lp96;->b:I

    .line 13
    .line 14
    add-int/lit8 p1, p1, 0x4

    .line 15
    .line 16
    iput p1, p0, Lp96;->b:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 20
    .line 21
    const-string v0, "Unsupported wire type: "

    .line 22
    .line 23
    invoke-static {p1, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lp96;->c()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    long-to-int p1, v0

    .line 36
    iget v0, p0, Lp96;->b:I

    .line 37
    .line 38
    add-int/2addr v0, p1

    .line 39
    iput v0, p0, Lp96;->b:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget p1, p0, Lp96;->b:I

    .line 43
    .line 44
    add-int/lit8 p1, p1, 0x8

    .line 45
    .line 46
    iput p1, p0, Lp96;->b:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p0}, Lp96;->c()J

    .line 50
    .line 51
    .line 52
    :goto_0
    iget p1, p0, Lp96;->b:I

    .line 53
    .line 54
    iget-object p0, p0, Lp96;->a:[B

    .line 55
    .line 56
    array-length p0, p0

    .line 57
    if-gt p1, p0, :cond_4

    .line 58
    .line 59
    return-void

    .line 60
    :cond_4
    const-string p0, "Skipped past proto end"

    .line 61
    .line 62
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
