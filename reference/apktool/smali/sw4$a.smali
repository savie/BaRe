.class public final Lsw4$a;
.super Lll0$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsw4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lll0$a<",
        "Lsw4$a;",
        "Lsw4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lll0$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Ljava/lang/String;Lsw4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsw4$a;->t(Ljava/lang/String;Lsw4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o(Ljava/lang/String;Lsw4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsw4$a;->u(Ljava/lang/String;Lsw4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p(ILsw4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsw4$a;->v(ILsw4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q(Ljava/lang/String;Lsw4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsw4$a;->w(Ljava/lang/String;Lsw4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic t(Ljava/lang/String;Lsw4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lsw4;->i(Lsw4;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic u(Ljava/lang/String;Lsw4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lsw4;->f(Lsw4;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic v(ILsw4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lsw4;->h(Lsw4;I)I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic w(Ljava/lang/String;Lsw4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lsw4;->g(Lsw4;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lsw4;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lsw4$a;->z(Lsw4;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r(Ljava/lang/String;)Lsw4$a;
    .locals 3

    .line 1
    const-string v0, "bucket region"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lho2;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, p1, v2}, Lho2;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public s(Ljava/lang/String;)Lsw4$a;
    .locals 3

    .line 1
    const-string v0, "continuation token"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lpw4;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p1, v2}, Lpw4;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public x(I)Lsw4$a;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    const/16 v0, 0x2710

    .line 5
    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 9
    .line 10
    new-instance v1, Lrw4;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lrw4;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "max buckets must be between 1 and 10000"

    .line 20
    .line 21
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public y(Ljava/lang/String;)Lsw4$a;
    .locals 3

    .line 1
    const-string v0, "prefix"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lqw4;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p1, v2}, Lqw4;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public z(Lsw4;)V
    .locals 0

    .line 1
    return-void
.end method
