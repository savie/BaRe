.class public final Lrt1;
.super Ljava/io/InputStream;


# instance fields
.field public final a:Lz1;

.field public b:Z

.field public c:I

.field public d:Lw;

.field public e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lz1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lrt1;->b:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lrt1;->c:I

    .line 9
    .line 10
    iput-object p1, p0, Lrt1;->a:Lz1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lw;
    .locals 3

    .line 1
    iget-object v0, p0, Lrt1;->a:Lz1;

    .line 2
    .line 3
    iget-object v1, v0, Lz1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lou4;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-gez v1, :cond_0

    .line 13
    .line 14
    move-object v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, v1}, Lz1;->a(I)Lb0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_1
    instance-of v1, v0, Lw;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iget p0, p0, Lrt1;->c:I

    .line 28
    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    check-cast v0, Lw;

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_2
    const-string p0, "only the last nested bitstring can have padding"

    .line 35
    .line 36
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_3
    const-string p0, "unknown object encountered: "

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, p0}, Lc6;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v2
.end method

.method public final read()I
    .locals 3

    .line 69
    iget-object v0, p0, Lrt1;->e:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lrt1;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrt1;->a()Lw;

    move-result-object v0

    iput-object v0, p0, Lrt1;->d:Lw;

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrt1;->b:Z

    :cond_2
    invoke-interface {v0}, Lw;->e()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lrt1;->e:Ljava/io/InputStream;

    :cond_3
    iget-object v0, p0, Lrt1;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Lrt1;->d:Lw;

    invoke-interface {v0}, Lw;->f()I

    move-result v0

    iput v0, p0, Lrt1;->c:I

    invoke-virtual {p0}, Lrt1;->a()Lw;

    move-result-object v0

    iput-object v0, p0, Lrt1;->d:Lw;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lrt1;->e:Ljava/io/InputStream;

    return v1
.end method

.method public final read([BII)I
    .locals 4

    .line 1
    iget-object v0, p0, Lrt1;->e:Ljava/io/InputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget-boolean v0, p0, Lrt1;->b:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lrt1;->a()Lw;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lrt1;->d:Lw;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput-boolean v1, p0, Lrt1;->b:Z

    .line 21
    .line 22
    :cond_2
    invoke-interface {v0}, Lw;->e()Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lrt1;->e:Ljava/io/InputStream;

    .line 27
    .line 28
    :cond_3
    iget-object v0, p0, Lrt1;->e:Ljava/io/InputStream;

    .line 29
    .line 30
    add-int v2, p2, v1

    .line 31
    .line 32
    sub-int v3, p3, v1

    .line 33
    .line 34
    invoke-virtual {v0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ltz v0, :cond_4

    .line 39
    .line 40
    add-int/2addr v1, v0

    .line 41
    if-ne v1, p3, :cond_3

    .line 42
    .line 43
    return v1

    .line 44
    :cond_4
    iget-object v0, p0, Lrt1;->d:Lw;

    .line 45
    .line 46
    invoke-interface {v0}, Lw;->f()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lrt1;->c:I

    .line 51
    .line 52
    invoke-virtual {p0}, Lrt1;->a()Lw;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lrt1;->d:Lw;

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lrt1;->e:Ljava/io/InputStream;

    .line 62
    .line 63
    const/4 p0, 0x1

    .line 64
    if-ge v1, p0, :cond_5

    .line 65
    .line 66
    :goto_0
    const/4 p0, -0x1

    .line 67
    return p0

    .line 68
    :cond_5
    return v1
.end method
