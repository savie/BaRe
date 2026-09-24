.class public final Le51;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[C

.field public final b:Ljava/io/StringReader;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/StringReader;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x80

    .line 13
    .line 14
    new-array p1, p1, [Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Le51;->h:[Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iput-object v0, p0, Le51;->b:Ljava/io/StringReader;

    .line 25
    .line 26
    const/16 p1, 0x1000

    .line 27
    .line 28
    new-array p1, p1, [C

    .line 29
    .line 30
    iput-object p1, p0, Le51;->a:[C

    .line 31
    .line 32
    invoke-virtual {p0}, Le51;->b()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-string p0, "Must be true"

    .line 37
    .line 38
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    throw p0
.end method

.method public static c([C[Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    if-le p3, v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 8
    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    if-ge p3, v0, :cond_1

    .line 13
    .line 14
    const-string p0, ""

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    move v4, p2

    .line 19
    move v2, v1

    .line 20
    move v3, v2

    .line 21
    :goto_0
    if-ge v2, p3, :cond_2

    .line 22
    .line 23
    mul-int/lit8 v3, v3, 0x1f

    .line 24
    .line 25
    add-int/lit8 v5, v4, 0x1

    .line 26
    .line 27
    aget-char v4, p0, v4

    .line 28
    .line 29
    add-int/2addr v3, v4

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    move v4, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    array-length v2, p1

    .line 35
    sub-int/2addr v2, v0

    .line 36
    and-int v0, v3, v2

    .line 37
    .line 38
    aget-object v2, p1, v0

    .line 39
    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    new-instance v1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 45
    .line 46
    .line 47
    aput-object v1, p1, v0

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ne p3, v3, :cond_6

    .line 55
    .line 56
    move v4, p2

    .line 57
    move v3, p3

    .line 58
    :goto_1
    add-int/lit8 v5, v3, -0x1

    .line 59
    .line 60
    if-eqz v3, :cond_5

    .line 61
    .line 62
    add-int/lit8 v3, v4, 0x1

    .line 63
    .line 64
    aget-char v4, p0, v4

    .line 65
    .line 66
    add-int/lit8 v6, v1, 0x1

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eq v4, v1, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move v4, v3

    .line 76
    move v3, v5

    .line 77
    move v1, v6

    .line 78
    goto :goto_1

    .line 79
    :cond_5
    return-object v2

    .line 80
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/String;

    .line 81
    .line 82
    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 83
    .line 84
    .line 85
    aput-object v1, p1, v0

    .line 86
    .line 87
    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget v0, p0, Le51;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Le51;->e:I

    .line 6
    .line 7
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Le51;->b:Ljava/io/StringReader;

    .line 2
    .line 3
    iget v1, p0, Le51;->e:I

    .line 4
    .line 5
    iget v2, p0, Le51;->d:I

    .line 6
    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    int-to-long v1, v1

    .line 11
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/io/Reader;->skip(J)J

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x1000

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/io/Reader;->mark(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Le51;->a:[C

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    .line 26
    .line 27
    .line 28
    const/4 v0, -0x1

    .line 29
    if-eq v1, v0, :cond_2

    .line 30
    .line 31
    iput v1, p0, Le51;->c:I

    .line 32
    .line 33
    iget v0, p0, Le51;->f:I

    .line 34
    .line 35
    iget v2, p0, Le51;->e:I

    .line 36
    .line 37
    add-int/2addr v0, v2

    .line 38
    iput v0, p0, Le51;->f:I

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Le51;->e:I

    .line 42
    .line 43
    iput v0, p0, Le51;->g:I

    .line 44
    .line 45
    const/16 v0, 0xc00

    .line 46
    .line 47
    if-le v1, v0, :cond_1

    .line 48
    .line 49
    move v1, v0

    .line 50
    :cond_1
    iput v1, p0, Le51;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception p0

    .line 54
    new-instance v0, Ler3;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public final d()C
    .locals 2

    .line 1
    invoke-virtual {p0}, Le51;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Le51;->e:I

    .line 5
    .line 6
    iget v1, p0, Le51;->c:I

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const v1, 0xffff

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Le51;->a:[C

    .line 15
    .line 16
    aget-char v1, v1, v0

    .line 17
    .line 18
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Le51;->e:I

    .line 21
    .line 22
    return v1
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le51;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Le51;->e:I

    .line 5
    .line 6
    :goto_0
    iget v1, p0, Le51;->e:I

    .line 7
    .line 8
    iget v2, p0, Le51;->c:I

    .line 9
    .line 10
    iget-object v3, p0, Le51;->a:[C

    .line 11
    .line 12
    if-ge v1, v2, :cond_3

    .line 13
    .line 14
    aget-char v1, v3, v1

    .line 15
    .line 16
    const/16 v2, 0x41

    .line 17
    .line 18
    if-lt v1, v2, :cond_0

    .line 19
    .line 20
    const/16 v2, 0x5a

    .line 21
    .line 22
    if-le v1, v2, :cond_2

    .line 23
    .line 24
    :cond_0
    const/16 v2, 0x61

    .line 25
    .line 26
    if-lt v1, v2, :cond_1

    .line 27
    .line 28
    const/16 v2, 0x7a

    .line 29
    .line 30
    if-le v1, v2, :cond_2

    .line 31
    .line 32
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    :cond_2
    iget v1, p0, Le51;->e:I

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    iput v1, p0, Le51;->e:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget v1, p0, Le51;->e:I

    .line 46
    .line 47
    sub-int/2addr v1, v0

    .line 48
    iget-object p0, p0, Le51;->h:[Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v3, p0, v0, v1}, Le51;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public final f(C)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le51;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Le51;->e:I

    .line 5
    .line 6
    :goto_0
    iget v1, p0, Le51;->c:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    iget-object v3, p0, Le51;->a:[C

    .line 10
    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    aget-char v1, v3, v0

    .line 14
    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    iget p1, p0, Le51;->e:I

    .line 18
    .line 19
    sub-int/2addr v0, p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v0, v2

    .line 25
    :goto_1
    iget-object p1, p0, Le51;->h:[Ljava/lang/String;

    .line 26
    .line 27
    if-eq v0, v2, :cond_2

    .line 28
    .line 29
    iget v1, p0, Le51;->e:I

    .line 30
    .line 31
    invoke-static {v3, p1, v1, v0}, Le51;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget v1, p0, Le51;->e:I

    .line 36
    .line 37
    add-int/2addr v1, v0

    .line 38
    iput v1, p0, Le51;->e:I

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_2
    invoke-virtual {p0}, Le51;->b()V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Le51;->e:I

    .line 45
    .line 46
    iget v1, p0, Le51;->c:I

    .line 47
    .line 48
    sub-int/2addr v1, v0

    .line 49
    invoke-static {v3, p1, v0, v1}, Le51;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget v0, p0, Le51;->c:I

    .line 54
    .line 55
    iput v0, p0, Le51;->e:I

    .line 56
    .line 57
    return-object p1
.end method

.method public final varargs g([C)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Le51;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Le51;->e:I

    .line 5
    .line 6
    iget v1, p0, Le51;->c:I

    .line 7
    .line 8
    :goto_0
    iget v2, p0, Le51;->e:I

    .line 9
    .line 10
    iget-object v3, p0, Le51;->a:[C

    .line 11
    .line 12
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    array-length v2, p1

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_1
    if-ge v4, v2, :cond_1

    .line 17
    .line 18
    aget-char v5, p1, v4

    .line 19
    .line 20
    iget v6, p0, Le51;->e:I

    .line 21
    .line 22
    aget-char v6, v3, v6

    .line 23
    .line 24
    if-ne v6, v5, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget v2, p0, Le51;->e:I

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    iput v2, p0, Le51;->e:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    :goto_2
    iget p1, p0, Le51;->e:I

    .line 38
    .line 39
    if-le p1, v0, :cond_3

    .line 40
    .line 41
    iget-object p0, p0, Le51;->h:[Ljava/lang/String;

    .line 42
    .line 43
    sub-int/2addr p1, v0

    .line 44
    invoke-static {v3, p0, v0, p1}, Le51;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_3
    const-string p0, ""

    .line 50
    .line 51
    return-object p0
.end method

.method public final varargs h([C)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le51;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Le51;->e:I

    .line 5
    .line 6
    iget v1, p0, Le51;->c:I

    .line 7
    .line 8
    :goto_0
    iget v2, p0, Le51;->e:I

    .line 9
    .line 10
    iget-object v3, p0, Le51;->a:[C

    .line 11
    .line 12
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-char v2, v3, v2

    .line 15
    .line 16
    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([CC)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ltz v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget v2, p0, Le51;->e:I

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    iput v2, p0, Le51;->e:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    iget p1, p0, Le51;->e:I

    .line 31
    .line 32
    if-le p1, v0, :cond_2

    .line 33
    .line 34
    iget-object p0, p0, Le51;->h:[Ljava/lang/String;

    .line 35
    .line 36
    sub-int/2addr p1, v0

    .line 37
    invoke-static {v3, p0, v0, p1}, Le51;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_2
    const-string p0, ""

    .line 43
    .line 44
    return-object p0
.end method

.method public final i()C
    .locals 2

    .line 1
    invoke-virtual {p0}, Le51;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Le51;->e:I

    .line 5
    .line 6
    iget v1, p0, Le51;->c:I

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const p0, 0xffff

    .line 11
    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    iget-object p0, p0, Le51;->a:[C

    .line 15
    .line 16
    aget-char p0, p0, v0

    .line 17
    .line 18
    return p0
.end method

.method public final j()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le51;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Le51;->e:I

    .line 5
    .line 6
    iget p0, p0, Le51;->c:I

    .line 7
    .line 8
    if-lt v0, p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Le51;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Le51;->b()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Le51;->c:I

    .line 12
    .line 13
    iget v2, p0, Le51;->e:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    const/4 v2, 0x0

    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    if-ge v1, v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget v4, p0, Le51;->e:I

    .line 28
    .line 29
    add-int/2addr v4, v1

    .line 30
    iget-object v5, p0, Le51;->a:[C

    .line 31
    .line 32
    aget-char v4, v5, v4

    .line 33
    .line 34
    if-eq v3, v4, :cond_1

    .line 35
    .line 36
    :goto_1
    return v2

    .line 37
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget v0, p0, Le51;->e:I

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    add-int/2addr p1, v0

    .line 47
    iput p1, p0, Le51;->e:I

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Le51;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Le51;->c:I

    .line 9
    .line 10
    iget v2, p0, Le51;->e:I

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    const/4 v2, 0x0

    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    move v1, v2

    .line 18
    :goto_0
    if-ge v1, v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget v4, p0, Le51;->e:I

    .line 29
    .line 30
    add-int/2addr v4, v1

    .line 31
    iget-object v5, p0, Le51;->a:[C

    .line 32
    .line 33
    aget-char v4, v5, v4

    .line 34
    .line 35
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eq v3, v4, :cond_1

    .line 40
    .line 41
    :goto_1
    return v2

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget v0, p0, Le51;->e:I

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    add-int/2addr p1, v0

    .line 52
    iput p1, p0, Le51;->e:I

    .line 53
    .line 54
    const/4 p0, 0x1

    .line 55
    return p0
.end method

.method public final m(C)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le51;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Le51;->a:[C

    .line 8
    .line 9
    iget p0, p0, Le51;->e:I

    .line 10
    .line 11
    aget-char p0, v0, p0

    .line 12
    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final varargs n([C)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Le51;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0}, Le51;->b()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Le51;->a:[C

    .line 13
    .line 14
    iget p0, p0, Le51;->e:I

    .line 15
    .line 16
    aget-char p0, v0, p0

    .line 17
    .line 18
    array-length v0, p1

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_2

    .line 21
    .line 22
    aget-char v3, p1, v2

    .line 23
    .line 24
    if-ne v3, p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    :goto_1
    return v1
.end method

.method public final o()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le51;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Le51;->a:[C

    .line 10
    .line 11
    iget p0, p0, Le51;->e:I

    .line 12
    .line 13
    aget-char p0, v0, p0

    .line 14
    .line 15
    const/16 v0, 0x41

    .line 16
    .line 17
    if-lt p0, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x5a

    .line 20
    .line 21
    if-le p0, v0, :cond_3

    .line 22
    .line 23
    :cond_1
    const/16 v0, 0x61

    .line 24
    .line 25
    if-lt p0, v0, :cond_2

    .line 26
    .line 27
    const/16 v0, 0x7a

    .line 28
    .line 29
    if-le p0, v0, :cond_3

    .line 30
    .line 31
    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_4

    .line 36
    .line 37
    :cond_3
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_4
    return v1
.end method

.method public final p(Ljava/lang/String;)I
    .locals 9

    .line 1
    invoke-virtual {p0}, Le51;->b()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Le51;->e:I

    .line 10
    .line 11
    :goto_0
    iget v2, p0, Le51;->c:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_3

    .line 14
    .line 15
    iget-object v2, p0, Le51;->a:[C

    .line 16
    .line 17
    aget-char v3, v2, v1

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-eq v0, v3, :cond_0

    .line 21
    .line 22
    :goto_1
    add-int/2addr v1, v4

    .line 23
    iget v3, p0, Le51;->c:I

    .line 24
    .line 25
    if-ge v1, v3, :cond_0

    .line 26
    .line 27
    aget-char v3, v2, v1

    .line 28
    .line 29
    if-eq v0, v3, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    add-int/2addr v5, v3

    .line 39
    sub-int/2addr v5, v4

    .line 40
    iget v6, p0, Le51;->c:I

    .line 41
    .line 42
    if-ge v1, v6, :cond_2

    .line 43
    .line 44
    if-gt v5, v6, :cond_2

    .line 45
    .line 46
    move v6, v3

    .line 47
    :goto_2
    if-ge v6, v5, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    aget-char v8, v2, v6

    .line 54
    .line 55
    if-ne v7, v8, :cond_1

    .line 56
    .line 57
    add-int/lit8 v6, v6, 0x1

    .line 58
    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    if-ne v6, v5, :cond_2

    .line 63
    .line 64
    iget p0, p0, Le51;->e:I

    .line 65
    .line 66
    sub-int/2addr v1, p0

    .line 67
    return v1

    .line 68
    :cond_2
    move v1, v3

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/4 p0, -0x1

    .line 71
    return p0
.end method

.method public final q()V
    .locals 1

    .line 1
    iget v0, p0, Le51;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Le51;->e:I

    .line 6
    .line 7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Le51;->e:I

    .line 4
    .line 5
    iget v2, p0, Le51;->c:I

    .line 6
    .line 7
    sub-int/2addr v2, v1

    .line 8
    iget-object p0, p0, Le51;->a:[C

    .line 9
    .line 10
    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
