.class public final Ldq7;
.super Ljava/io/Reader;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ldq7;->a:Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Ldq7;->b:Z

    .line 9
    .line 10
    iget v1, p0, Ldq7;->c:I

    .line 11
    .line 12
    iput v1, p0, Ldq7;->e:I

    .line 13
    .line 14
    iget v1, p0, Ldq7;->d:I

    .line 15
    .line 16
    iput v1, p0, Ldq7;->f:I

    .line 17
    .line 18
    iput-boolean v0, p0, Ldq7;->k:Z

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Ldq7;->a:Ljava/util/ArrayList;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget v2, p0, Ldq7;->d:I

    .line 4
    .line 5
    iget-object v3, p0, Ldq7;->a:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_2

    .line 12
    .line 13
    cmp-long v2, v0, p1

    .line 14
    .line 15
    if-gez v2, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Ldq7;->g()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    move v2, v3

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v4, p0, Ldq7;->c:I

    .line 31
    .line 32
    sub-int/2addr v2, v4

    .line 33
    :goto_1
    sub-long v4, p1, v0

    .line 34
    .line 35
    int-to-long v6, v2

    .line 36
    cmp-long v2, v4, v6

    .line 37
    .line 38
    if-gez v2, :cond_1

    .line 39
    .line 40
    iget v2, p0, Ldq7;->c:I

    .line 41
    .line 42
    int-to-long v2, v2

    .line 43
    add-long/2addr v2, v4

    .line 44
    long-to-int v2, v2

    .line 45
    iput v2, p0, Ldq7;->c:I

    .line 46
    .line 47
    add-long/2addr v0, v4

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    add-long/2addr v0, v6

    .line 50
    iput v3, p0, Ldq7;->c:I

    .line 51
    .line 52
    iget v2, p0, Ldq7;->d:I

    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    iput v2, p0, Ldq7;->d:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-wide v0
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldq7;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Ldq7;->k:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p0, "Reader needs to be frozen before read operations can be called"

    .line 11
    .line 12
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const-string p0, "Stream already closed"

    .line 17
    .line 18
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldq7;->b()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ldq7;->b:Z

    .line 6
    .line 7
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Ldq7;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Ldq7;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_0

    .line 10
    .line 11
    iget p0, p0, Ldq7;->d:I

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public final mark(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldq7;->b()V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Ldq7;->c:I

    .line 5
    .line 6
    iput p1, p0, Ldq7;->e:I

    .line 7
    .line 8
    iget p1, p0, Ldq7;->d:I

    .line 9
    .line 10
    iput p1, p0, Ldq7;->f:I

    .line 11
    .line 12
    return-void
.end method

.method public final markSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final read()I
    .locals 3

    .line 64
    invoke-virtual {p0}, Ldq7;->b()V

    .line 65
    invoke-virtual {p0}, Ldq7;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 66
    :cond_0
    iget v1, p0, Ldq7;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-wide/16 v1, 0x1

    .line 67
    invoke-virtual {p0, v1, v2}, Ldq7;->a(J)J

    return v0
.end method

.method public final read(Ljava/nio/CharBuffer;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ldq7;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Ldq7;->g()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-lez v0, :cond_0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget v3, p0, Ldq7;->c:I

    .line 22
    .line 23
    sub-int/2addr v1, v3

    .line 24
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v3, p0, Ldq7;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget v4, p0, Ldq7;->d:I

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    iget v4, p0, Ldq7;->c:I

    .line 39
    .line 40
    add-int v5, v4, v1

    .line 41
    .line 42
    invoke-virtual {p1, v3, v4, v5}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    .line 43
    .line 44
    .line 45
    sub-int/2addr v0, v1

    .line 46
    add-int/2addr v2, v1

    .line 47
    int-to-long v3, v1

    .line 48
    invoke-virtual {p0, v3, v4}, Ldq7;->a(J)J

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ldq7;->g()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    if-gtz v2, :cond_2

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 p0, -0x1

    .line 62
    return p0

    .line 63
    :cond_2
    :goto_1
    return v2
.end method

.method public final read([CII)I
    .locals 7

    .line 68
    invoke-virtual {p0}, Ldq7;->b()V

    .line 69
    invoke-virtual {p0}, Ldq7;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    if-ge v2, p3, :cond_1

    .line 70
    invoke-virtual {p0}, Ldq7;->g()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    .line 71
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Ldq7;->c:I

    sub-int/2addr v3, v4

    :goto_1
    sub-int v4, p3, v2

    .line 72
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 73
    iget v4, p0, Ldq7;->c:I

    add-int v5, v4, v3

    add-int v6, p2, v2

    invoke-virtual {v0, v4, v5, p1, v6}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v2, v3

    int-to-long v3, v3

    .line 74
    invoke-virtual {p0, v3, v4}, Ldq7;->a(J)J

    .line 75
    invoke-virtual {p0}, Ldq7;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-gtz v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, -0x1

    return p0

    :cond_3
    :goto_2
    return v2
.end method

.method public final ready()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldq7;->b()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget v0, p0, Ldq7;->e:I

    .line 2
    .line 3
    iput v0, p0, Ldq7;->c:I

    .line 4
    .line 5
    iget v0, p0, Ldq7;->f:I

    .line 6
    .line 7
    iput v0, p0, Ldq7;->d:I

    .line 8
    .line 9
    return-void
.end method

.method public final skip(J)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldq7;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Ldq7;->a(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    return-wide p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ldq7;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
