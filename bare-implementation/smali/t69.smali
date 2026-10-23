.class public abstract Lt69;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# static fields
.field public static final b:Lx69;

.field public static final c:Lhx0;


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx69;

    .line 2
    .line 3
    sget-object v1, Ll79;->a:[B

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lx69;-><init>([B)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lt69;->b:Lx69;

    .line 9
    .line 10
    new-instance v0, Lhx0;

    .line 11
    .line 12
    const/16 v1, 0x10

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lhx0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lt69;->c:Lhx0;

    .line 18
    .line 19
    return-void
.end method

.method public static e(III)I
    .locals 3

    .line 1
    sub-int v0, p1, p0

    .line 2
    .line 3
    or-int v1, p0, p1

    .line 4
    .line 5
    or-int/2addr v1, v0

    .line 6
    sub-int v2, p2, p1

    .line 7
    .line 8
    or-int/2addr v1, v2

    .line 9
    if-gez v1, :cond_2

    .line 10
    .line 11
    if-ltz p0, :cond_1

    .line 12
    .line 13
    if-ge p1, p0, :cond_0

    .line 14
    .line 15
    const-string p2, "Beginning index larger than ending index: "

    .line 16
    .line 17
    const-string v0, ", "

    .line 18
    .line 19
    invoke-static {p2, p0, p1, v0}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_0
    const-string p0, "End index: "

    .line 29
    .line 30
    const-string v0, " >= "

    .line 31
    .line 32
    invoke-static {p0, p1, p2, v0}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string p1, "Beginning index: "

    .line 41
    .line 42
    const-string p2, " < 0"

    .line 43
    .line 44
    invoke-static {p0, p1, p2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return v0
.end method

.method public static g([BII)Lx69;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lt69;->o([BII)Lx69;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/AssertionError;

    .line 8
    .line 9
    const-string p2, "Expected no InvalidProtocolBufferException as data UTF8 validity is not checked."

    .line 10
    .line 11
    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public static synthetic l([BII[BI)Z
    .locals 2

    .line 1
    add-int v0, p1, p4

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    invoke-static {p1, v0, v1}, Lt69;->e(III)I

    .line 5
    .line 6
    .line 7
    add-int/2addr p4, p2

    .line 8
    array-length v1, p3

    .line 9
    invoke-static {p2, p4, v1}, Lt69;->e(III)I

    .line 10
    .line 11
    .line 12
    :goto_0
    if-ge p1, v0, :cond_1

    .line 13
    .line 14
    aget-byte p4, p0, p1

    .line 15
    .line 16
    aget-byte v1, p3, p2

    .line 17
    .line 18
    if-eq p4, v1, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    add-int/lit8 p2, p2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x1

    .line 28
    return p0
.end method

.method public static o([BII)Lx69;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lt69;->b:Lx69;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    add-int v0, p1, p2

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    invoke-static {p1, v0, v1}, Lt69;->e(III)I

    .line 10
    .line 11
    .line 12
    sget-object v0, Lt69;->c:Lhx0;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-array v0, p2, [B

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Lx69;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lx69;-><init>([B)V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method


# virtual methods
.method public abstract c(I)B
.end method

.method public abstract d()I
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lt69;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lt69;

    .line 10
    .line 11
    invoke-virtual {p0}, Lt69;->d()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Lt69;->d()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    if-nez v0, :cond_3

    .line 23
    .line 24
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_3
    iget v0, p0, Lt69;->a:I

    .line 27
    .line 28
    iget v1, p1, Lt69;->a:I

    .line 29
    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    if-eq v0, v1, :cond_4

    .line 35
    .line 36
    :goto_1
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    :cond_4
    invoke-virtual {p0, p1}, Lt69;->k(Lt69;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method

.method public abstract f(II)Lw69;
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lt69;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lt69;->d()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0, v0}, Lt69;->s(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    :cond_0
    iput v0, p0, Lt69;->a:I

    .line 17
    .line 18
    :cond_1
    return v0
.end method

.method public abstract i([BI)V
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lu69;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lu69;-><init>(Lt69;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public abstract k(Lt69;)Z
.end method

.method public abstract p(Lc79;)V
.end method

.method public abstract s(II)I
.end method

.method public abstract t()Ly69;
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lt69;->d()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Lt69;->d()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x32

    .line 20
    .line 21
    if-gt v2, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lt69;->w()[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lxh8;->H([B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    const/16 v3, 0x2f

    .line 34
    .line 35
    invoke-virtual {p0, v2, v3}, Lt69;->f(II)Lw69;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lt69;->w()[B

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lxh8;->H([B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string v2, "..."

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :goto_0
    const-string v2, " size="

    .line 54
    .line 55
    const-string v3, " contents=\""

    .line 56
    .line 57
    const-string v4, "<ByteString@"

    .line 58
    .line 59
    invoke-static {v4, v0, v2, v1, v3}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "\">"

    .line 64
    .line 65
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public final w()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt69;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Ll79;->a:[B

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-array v1, v0, [B

    .line 11
    .line 12
    invoke-virtual {p0, v1, v0}, Lt69;->i([BI)V

    .line 13
    .line 14
    .line 15
    return-object v1
.end method
