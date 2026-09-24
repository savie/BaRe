.class public abstract Ldr5$a;
.super Lrr5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldr5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ldr5$a<",
        "TB;TA;>;A:",
        "Ldr5;",
        ">",
        "Lrr5$a<",
        "TB;TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrr5$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I(Ljava/lang/Long;Ldr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldr5$a;->V(Ljava/lang/Long;Ldr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic J(ZLdr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldr5$a;->Q(ZLdr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Ljava/lang/String;Ldr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldr5$a;->S(Ljava/lang/String;Ldr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Ljava/time/ZonedDateTime;Ldr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldr5$a;->W(Ljava/time/ZonedDateTime;Ldr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M(Ljava/time/ZonedDateTime;Ldr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldr5$a;->T(Ljava/time/ZonedDateTime;Ldr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N(Ljava/lang/String;Ldr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldr5$a;->U(Ljava/lang/String;Ldr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic O(Ljava/lang/Long;Ldr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldr5$a;->R(Ljava/lang/Long;Ldr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic Q(ZLdr5;)V
    .locals 0

    .line 1
    iput-boolean p0, p1, Ldr5;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic R(Ljava/lang/Long;Ldr5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Ldr5;->j:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic S(Ljava/lang/String;Ldr5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Ldr5;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic T(Ljava/time/ZonedDateTime;Ldr5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Ldr5;->m:Ljava/time/ZonedDateTime;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic U(Ljava/lang/String;Ldr5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Ldr5;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic V(Ljava/lang/Long;Ldr5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Ldr5;->i:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic W(Ljava/time/ZonedDateTime;Ldr5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Ldr5;->n:Ljava/time/ZonedDateTime;

    .line 2
    .line 3
    return-void
.end method

.method private d0(Ljava/lang/Long;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long p0, p0, v0

    .line 10
    .line 11
    if-lez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "length should be greater than zero"

    .line 15
    .line 16
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method private e0(Ljava/lang/Long;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long p0, p0, v0

    .line 10
    .line 11
    if-ltz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "offset should be zero or greater"

    .line 15
    .line 16
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public P(Z)Ldr5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lcr5;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p1}, Lcr5;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public X(Ljava/lang/Long;)Ldr5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ldr5$a;->d0(Ljava/lang/Long;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Lbr5;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p1, v2}, Lbr5;-><init>(Ljava/lang/Long;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public Y(Ljava/lang/String;)Ldr5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    const-string v0, "etag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lio2;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-direct {v1, p1, v2}, Lio2;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public Z(Ljava/time/ZonedDateTime;)Ldr5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZonedDateTime;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lko2;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p1, v2}, Lko2;-><init>(Ljava/time/ZonedDateTime;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public a0(Ljava/lang/String;)Ldr5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    const-string v0, "etag"

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
    const/4 v2, 0x2

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

.method public b0(Ljava/lang/Long;)Ldr5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ldr5$a;->e0(Ljava/lang/Long;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Low1;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, p1, v2}, Low1;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public c0(Ljava/time/ZonedDateTime;)Ldr5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZonedDateTime;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lgo2;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p1, v2}, Lgo2;-><init>(Ljava/time/ZonedDateTime;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
