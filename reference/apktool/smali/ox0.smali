.class public Lox0;
.super Ljava/io/OutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lox0$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public d:J

.field public e:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lox0;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lox0;->c:I

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    iput-wide v1, p0, Lox0;->d:J

    .line 17
    .line 18
    iput-boolean v0, p0, Lox0;->e:Z

    .line 19
    .line 20
    const-wide v0, 0x140000000L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long v0, p1, v0

    .line 26
    .line 27
    if-gtz v0, :cond_0

    .line 28
    .line 29
    iput-wide p1, p0, Lox0;->a:J

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string p0, "Size cannot exceed 5GiB"

    .line 33
    .line 34
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lox0;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput v2, p0, Lox0;->c:I

    .line 11
    .line 12
    new-instance p0, Lox0$a;

    .line 13
    .line 14
    invoke-direct {p0, v2}, Lox0$a;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-wide v3, p0, Lox0;->d:J

    .line 22
    .line 23
    iget v1, p0, Lox0;->c:I

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    int-to-long v5, v1

    .line 28
    const-wide/32 v7, 0x7fffffff

    .line 29
    .line 30
    .line 31
    mul-long/2addr v5, v7

    .line 32
    cmp-long v3, v3, v5

    .line 33
    .line 34
    if-ltz v3, :cond_1

    .line 35
    .line 36
    iput v1, p0, Lox0;->c:I

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    add-int/lit8 p0, p0, -0x1

    .line 43
    .line 44
    if-le v1, p0, :cond_1

    .line 45
    .line 46
    new-instance p0, Lox0$a;

    .line 47
    .line 48
    invoke-direct {p0, v2}, Lox0$a;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lox0;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lox0;->e:Z

    .line 7
    .line 8
    iget-object p0, p0, Lox0;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final q0()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lox0;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lox0$a;

    .line 23
    .line 24
    invoke-virtual {v1}, Lox0$a;->a()Ljava/io/ByteArrayInputStream;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-eq p0, v1, :cond_2

    .line 42
    .line 43
    new-instance p0, Ljava/io/SequenceInputStream;

    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_2
    const/4 p0, 0x0

    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ljava/io/InputStream;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_3
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 62
    .line 63
    sget-object v0, Lki8;->h:[B

    .line 64
    .line 65
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 66
    .line 67
    .line 68
    return-object p0
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lox0;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lox0;->d:J

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lox0;->c:I

    .line 11
    .line 12
    iget-object p0, p0, Lox0;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lox0$a;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void

    .line 35
    :cond_1
    new-instance p0, Lrg5;

    .line 36
    .line 37
    const-string v0, "Cannot reset a closed stream"

    .line 38
    .line 39
    invoke-direct {p0, v0}, Lrg5;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final write(I)V
    .locals 4

    .line 70
    iget-boolean v0, p0, Lox0;->e:Z

    if-nez v0, :cond_1

    .line 71
    iget-wide v0, p0, Lox0;->d:J

    iget-wide v2, p0, Lox0;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lox0;->a()V

    .line 73
    iget-object v0, p0, Lox0;->b:Ljava/util/ArrayList;

    iget v1, p0, Lox0;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lox0$a;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 74
    iget-wide v0, p0, Lox0;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lox0;->d:J

    return-void

    .line 75
    :cond_0
    const-string p0, "Exceeded total size limit"

    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    return-void

    .line 76
    :cond_1
    const-string p0, "Stream is closed"

    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 77
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lox0;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lox0;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    int-to-long v0, p3

    .line 6
    iget-wide v2, p0, Lox0;->a:J

    .line 7
    .line 8
    iget-wide v4, p0, Lox0;->d:J

    .line 9
    .line 10
    sub-long/2addr v2, v4

    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-gtz v0, :cond_1

    .line 14
    .line 15
    move v0, p3

    .line 16
    :goto_0
    if-lez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lox0;->a()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lox0;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget v2, p0, Lox0;->c:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lox0$a;

    .line 30
    .line 31
    const v2, 0x7fffffff

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    sub-int/2addr v2, v3

    .line 39
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    sub-int v3, p3, v0

    .line 44
    .line 45
    add-int/2addr v3, p2

    .line 46
    invoke-virtual {v1, p1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 47
    .line 48
    .line 49
    iget-wide v3, p0, Lox0;->d:J

    .line 50
    .line 51
    int-to-long v5, v2

    .line 52
    add-long/2addr v3, v5

    .line 53
    iput-wide v3, p0, Lox0;->d:J

    .line 54
    .line 55
    sub-int/2addr v0, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void

    .line 58
    :cond_1
    const-string p0, "Exceeded total size limit"

    .line 59
    .line 60
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    const-string p0, "Stream is closed"

    .line 65
    .line 66
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
