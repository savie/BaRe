.class public final Lbc6$a;
.super Ldc6$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbc6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldc6$a<",
        "Lbc6$a;",
        "Lbc6;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldc6$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(JLbc6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lbc6$a;->u0(JLbc6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(Ljava/io/InputStream;Lbc6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lbc6$a;->r0(Ljava/io/InputStream;Lbc6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(Ljava/lang/Long;Lbc6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lbc6$a;->t0(Ljava/lang/Long;Lbc6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0([BLbc6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lbc6$a;->s0([BLbc6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(ILbc6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lbc6$a;->v0(ILbc6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic r0(Ljava/io/InputStream;Lbc6;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lbc6;->A(Lbc6;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic s0([BLbc6;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lbc6;->C(Lbc6;[B)[B

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic t0(Ljava/lang/Long;Lbc6;)V
    .locals 0

    .line 1
    iput-object p0, p1, Ldc6;->q:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic u0(JLbc6;)V
    .locals 0

    .line 1
    iput-wide p0, p2, Ldc6;->r:J

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic v0(ILbc6;)V
    .locals 0

    .line 1
    iput p0, p1, Ldc6;->s:I

    .line 2
    .line 3
    return-void
.end method

.method private w0(Ljava/io/InputStream;[BLjava/lang/Long;JI)Lbc6$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lb10;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p1, v2}, Lb10;-><init>(Ljava/lang/Object;I)V

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
    new-instance v0, Lc10;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-direct {v0, p2, v1}, Lc10;-><init>(Ljava/lang/Object;I)V

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
    new-instance p2, Lbr5;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-direct {p2, p3, v0}, Lbr5;-><init>(Ljava/lang/Long;I)V

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
    new-instance p2, Lzb6;

    .line 37
    .line 38
    invoke-direct {p2, p4, p5}, Lzb6;-><init>(J)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lll0$a;->a:Ljava/util/List;

    .line 45
    .line 46
    new-instance p2, Lac6;

    .line 47
    .line 48
    invoke-direct {p2, p6}, Lac6;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-object p0
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Lbc6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbc6$a;->y0(Lbc6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic k0(Ldc6;)V
    .locals 0

    .line 1
    check-cast p1, Lbc6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbc6$a;->y0(Lbc6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lbc6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbc6$a;->y0(Lbc6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q0([BI)Lbc6$a;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-ltz p2, :cond_0

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
    :goto_1
    move-object v4, v0

    .line 16
    goto :goto_2

    .line 17
    :cond_2
    int-to-long v0, p2

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_1

    .line 23
    :goto_2
    if-nez p1, :cond_3

    .line 24
    .line 25
    const/4 p2, -0x1

    .line 26
    :cond_3
    const/high16 v0, 0x500000

    .line 27
    .line 28
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    int-to-long v5, p2

    .line 33
    const/4 v7, 0x1

    .line 34
    const/4 v2, 0x0

    .line 35
    move-object v1, p0

    .line 36
    move-object v3, p1

    .line 37
    invoke-direct/range {v1 .. v7}, Lbc6$a;->w0(Ljava/io/InputStream;[BLjava/lang/Long;JI)Lbc6$a;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lbc6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbc6$a;->y0(Lbc6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public x0(Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/Long;)Lbc6$a;
    .locals 8

    .line 1
    const-string v0, "stream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Ldc6$a;->f0(Ljava/lang/Long;Ljava/lang/Long;)[J

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    const/4 v0, 0x0

    .line 11
    aget-wide v5, p3, v0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aget-wide v0, p3, v0

    .line 15
    .line 16
    long-to-int v7, v0

    .line 17
    const/4 v3, 0x0

    .line 18
    move-object v1, p0

    .line 19
    move-object v2, p1

    .line 20
    move-object v4, p2

    .line 21
    invoke-direct/range {v1 .. v7}, Lbc6$a;->w0(Ljava/io/InputStream;[BLjava/lang/Long;JI)Lbc6$a;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public y0(Lbc6;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ldc6$a;->k0(Ldc6;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lbc6;->z(Lbc6;)Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    invoke-static {p1}, Lbc6;->B(Lbc6;)[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p0, "either stream or data must be provided"

    .line 18
    .line 19
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method
