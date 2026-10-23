.class public final Ld10$a;
.super Lyq5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyq5$a<",
        "Ld10$a;",
        "Ld10;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyq5$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Ljava/lang/Long;Ld10;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ld10$a;->K(Ljava/lang/Long;Ld10;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Ljava/lang/Long;Ld10;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ld10$a;->O(Ljava/lang/Long;Ld10;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E([BLd10;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ld10$a;->N([BLd10;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F(Ljava/io/InputStream;Ld10;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ld10$a;->M(Ljava/io/InputStream;Ld10;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Ljava/lang/String;Ld10;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ld10$a;->L(Ljava/lang/String;Ld10;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic K(Ljava/lang/Long;Ld10;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Ld10;->o(Ld10;Ljava/lang/Long;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic L(Ljava/lang/String;Ld10;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Ld10;->j(Ld10;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic M(Ljava/io/InputStream;Ld10;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Ld10;->l(Ld10;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic N([BLd10;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Ld10;->n(Ld10;[B)[B

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic O(Ljava/lang/Long;Ld10;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Ld10;->p(Ld10;Ljava/lang/Long;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private P(Ljava/lang/String;Ljava/io/InputStream;[BLjava/lang/Long;)Ld10$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lz00;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2}, Lz00;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lll0$a;->a:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, La10;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, p2, v1}, La10;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lll0$a;->a:Ljava/util/List;

    .line 24
    .line 25
    new-instance p2, Lb10;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p2, p3, v0}, Lb10;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lll0$a;->a:Ljava/util/List;

    .line 35
    .line 36
    new-instance p2, Lc10;

    .line 37
    .line 38
    const/4 p3, 0x0

    .line 39
    invoke-direct {p2, p4, p3}, Lc10;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-object p0
.end method

.method private S(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p0, "filename"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lki8;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    new-array v0, p0, [Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-array p0, p0, [Ljava/nio/file/LinkOption;

    .line 14
    .line 15
    invoke-static {v0, p0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p0, " not a regular file"

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Ld10;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ld10$a;->R(Ld10;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public H(Ljava/lang/Long;)Ld10$a;
    .locals 6

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/32 v2, 0x500000

    .line 8
    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-ltz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    const-wide v4, 0x140000000L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    cmp-long v0, v2, v4

    .line 25
    .line 26
    if-gtz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p0, "chunk size must be less than 5 GiB"

    .line 30
    .line 31
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_1
    const-string p0, "chunk size must be minimum of 5 MiB"

    .line 36
    .line 37
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_2
    :goto_0
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 42
    .line 43
    new-instance v1, Ly00;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v1, p1, v2}, Ly00;-><init>(Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-object p0
.end method

.method public I([BI)Ld10$a;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-lez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string p0, "valid length must be provided"

    .line 8
    .line 9
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 14
    .line 15
    move-object p2, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_2
    int-to-long v1, p2

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    :goto_1
    invoke-direct {p0, v0, v0, p1, p2}, Ld10$a;->P(Ljava/lang/String;Ljava/io/InputStream;[BLjava/lang/Long;)Ld10$a;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public J(Ljava/lang/String;)Ld10$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrg5;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Ld10$a;->S(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1, v1, v1, v0}, Ld10$a;->P(Ljava/lang/String;Ljava/io/InputStream;[BLjava/lang/Long;)Ld10$a;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Lrg5;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public Q(Ljava/io/InputStream;Ljava/lang/Long;)Ld10$a;
    .locals 1

    .line 1
    const-string v0, "stream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0, p1, v0, p2}, Ld10$a;->P(Ljava/lang/String;Ljava/io/InputStream;[BLjava/lang/Long;)Ld10$a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public R(Ld10;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ld10;->i(Ld10;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    invoke-static {p1}, Ld10;->k(Ld10;)Ljava/io/InputStream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    invoke-static {p1}, Ld10;->m(Ld10;)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p0, "either filename, stream or data must be provided"

    .line 24
    .line 25
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Ld10;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ld10$a;->R(Ld10;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Ld10;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ld10$a;->R(Ld10;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
