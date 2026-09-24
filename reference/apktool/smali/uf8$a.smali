.class public final Luf8$a;
.super Ldc6$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldc6$a<",
        "Luf8$a;",
        "Luf8;",
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

.method public static synthetic l0(Ljava/lang/String;Luf8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Luf8$a;->r0(Ljava/lang/String;Luf8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(JLuf8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Luf8$a;->t0(JLuf8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(ILuf8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Luf8$a;->u0(ILuf8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(JLuf8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Luf8$a;->s0(JLuf8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic r0(Ljava/lang/String;Luf8;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Luf8;->A(Luf8;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic s0(JLuf8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iput-object p0, p2, Ldc6;->q:Ljava/lang/Long;

    .line 6
    .line 7
    return-void
.end method

.method private static synthetic t0(JLuf8;)V
    .locals 0

    .line 1
    iput-wide p0, p2, Ldc6;->r:J

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic u0(ILuf8;)V
    .locals 0

    .line 1
    iput p0, p1, Ldc6;->s:I

    .line 2
    .line 3
    return-void
.end method

.method private w0(Ljava/lang/String;)V
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
    check-cast p1, Luf8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Luf8$a;->v0(Luf8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic k0(Ldc6;)V
    .locals 0

    .line 1
    check-cast p1, Luf8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Luf8$a;->v0(Luf8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Luf8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Luf8$a;->v0(Luf8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p0(Ljava/lang/String;)Luf8$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrg5;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, v1}, Luf8$a;->q0(Ljava/lang/String;J)Luf8$a;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public q0(Ljava/lang/String;J)Luf8$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrg5;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Luf8$a;->w0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p0, v3, p2}, Ldc6$a;->f0(Ljava/lang/Long;Ljava/lang/Long;)[J

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    aget-wide v3, p2, v0

    .line 28
    .line 29
    const/4 p3, 0x1

    .line 30
    aget-wide v5, p2, p3

    .line 31
    .line 32
    long-to-int p2, v5

    .line 33
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 34
    .line 35
    new-instance v5, Ldw0;

    .line 36
    .line 37
    const/4 v6, 0x5

    .line 38
    invoke-direct {v5, p1, v6}, Ldw0;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lll0$a;->a:Ljava/util/List;

    .line 45
    .line 46
    new-instance v0, Lsf8;

    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lsf8;-><init>(J)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lll0$a;->a:Ljava/util/List;

    .line 55
    .line 56
    new-instance v0, Lec6;

    .line 57
    .line 58
    invoke-direct {v0, p3, v3, v4}, Lec6;-><init>(IJ)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lll0$a;->a:Ljava/util/List;

    .line 65
    .line 66
    new-instance p3, Ltf8;

    .line 67
    .line 68
    invoke-direct {p3, p2}, Ltf8;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :catch_0
    move-exception p0

    .line 76
    new-instance p1, Lrg5;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Luf8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Luf8$a;->v0(Luf8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public v0(Luf8;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ldc6$a;->k0(Ldc6;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Luf8;->z(Luf8;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Luf8$a;->w0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
