.class public abstract Lyb6$a;
.super Lyq5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lyb6$a<",
        "TB;TA;>;A:",
        "Lyb6;",
        ">",
        "Lyq5$a<",
        "TB;TA;>;"
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

.method public static synthetic C(Lv64$c;Lyb6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyb6$a;->L(Lv64$c;Lyb6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lox0;Lyb6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyb6$a;->N(Lox0;Lyb6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Ljava/lang/Long;Lyb6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyb6$a;->P(Ljava/lang/Long;Lyb6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F(Ljava/io/RandomAccessFile;Lyb6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyb6$a;->M(Ljava/io/RandomAccessFile;Lyb6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G([BLyb6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyb6$a;->O([BLyb6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic L(Lv64$c;Lyb6;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lyb6;->k:Lv64$c;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic M(Ljava/io/RandomAccessFile;Lyb6;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lyb6;->g:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic N(Lox0;Lyb6;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lyb6;->h:Lox0;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic O([BLyb6;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lyb6;->i:[B

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic P(Ljava/lang/Long;Lyb6;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lyb6;->j:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Lyb6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lyb6$a;->R(Lyb6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public H(Lox0;)Lyb6$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lox0;",
            ")TB;"
        }
    .end annotation

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, p1, v0, v0}, Lyb6$a;->Q(Ljava/io/RandomAccessFile;Lox0;[BLjava/lang/Long;)Lyb6$a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public I([BI)Lyb6$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)TB;"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-ltz p2, :cond_0

    .line 8
    .line 9
    int-to-long v1, p2

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, v0, v0, p1, p2}, Lyb6$a;->Q(Ljava/io/RandomAccessFile;Lox0;[BLjava/lang/Long;)Lyb6$a;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "valid length must be provided"

    .line 20
    .line 21
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public J(Ljava/io/RandomAccessFile;J)Lyb6$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)TB;"
        }
    .end annotation

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p2, v0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p0, p1, v1, v1, p2}, Lyb6$a;->Q(Ljava/io/RandomAccessFile;Lox0;[BLjava/lang/Long;)Lyb6$a;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, "valid length must be provided"

    .line 23
    .line 24
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method

.method public K(Lv64$c;)Lyb6$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv64$c;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lv02;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v1, p1, v2}, Lv02;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public Q(Ljava/io/RandomAccessFile;Lox0;[BLjava/lang/Long;)Lyb6$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "Lox0;",
            "[B",
            "Ljava/lang/Long;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lsh2;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v1, p1, v2}, Lsh2;-><init>(Ljava/lang/Object;I)V

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
    new-instance v0, Ly00;

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    invoke-direct {v0, p2, v1}, Ly00;-><init>(Ljava/lang/Object;I)V

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
    new-instance p2, Lkl0;

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    invoke-direct {p2, p3, v0}, Lkl0;-><init>(Ljava/lang/Object;I)V

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
    new-instance p2, La10;

    .line 37
    .line 38
    const/4 p3, 0x6

    .line 39
    invoke-direct {p2, p4, p3}, La10;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-object p0
.end method

.method public R(Lyb6;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p1, Lyb6;->g:Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    move v2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v0

    .line 13
    :goto_0
    iget-object v3, p1, Lyb6;->h:Lox0;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    move v4, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v4, v0

    .line 20
    :goto_1
    if-eq v2, v4, :cond_2

    .line 21
    .line 22
    move v2, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move v2, v0

    .line 25
    :goto_2
    iget-object p1, p1, Lyb6;->i:[B

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    move v0, v1

    .line 30
    :cond_3
    if-eq v2, v0, :cond_5

    .line 31
    .line 32
    if-eqz p0, :cond_4

    .line 33
    .line 34
    if-eqz v3, :cond_4

    .line 35
    .line 36
    if-nez p1, :cond_5

    .line 37
    .line 38
    :cond_4
    return-void

    .line 39
    :cond_5
    const-string p0, "only one of file, buffer or data must be provided"

    .line 40
    .line 41
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lyb6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lyb6$a;->R(Lyb6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lyb6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lyb6$a;->R(Lyb6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
