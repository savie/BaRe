.class public final Lmo2$a;
.super Lrr5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmo2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrr5$a<",
        "Lmo2$a;",
        "Lmo2;",
        ">;"
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

.method public static synthetic I(Ljava/lang/String;Lmo2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmo2$a;->Q(Ljava/lang/String;Lmo2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic J(ZLmo2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmo2$a;->T(ZLmo2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Ljava/time/ZonedDateTime;Lmo2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmo2$a;->U(Ljava/time/ZonedDateTime;Lmo2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Ljava/lang/String;Lmo2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmo2$a;->S(Ljava/lang/String;Lmo2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M(Ljava/time/ZonedDateTime;Lmo2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmo2$a;->R(Ljava/time/ZonedDateTime;Lmo2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N(Ljava/lang/String;Lmo2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmo2$a;->P(Ljava/lang/String;Lmo2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic P(Ljava/lang/String;Lmo2;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lmo2;->m(Lmo2;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic Q(Ljava/lang/String;Lmo2;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lmo2;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic R(Ljava/time/ZonedDateTime;Lmo2;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lmo2;->m:Ljava/time/ZonedDateTime;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic S(Ljava/lang/String;Lmo2;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lmo2;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic T(ZLmo2;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lmo2;->l(Lmo2;Z)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic U(Ljava/time/ZonedDateTime;Lmo2;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lmo2;->n:Ljava/time/ZonedDateTime;

    .line 2
    .line 3
    return-void
.end method

.method private a0(Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p0, "filename"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lki8;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public O(Ljava/lang/String;)Lmo2$a;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lmo2$a;->a0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Lho2;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p1, v2}, Lho2;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public V(Ljava/lang/String;)Lmo2$a;
    .locals 3

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
    new-instance v1, Llo2;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p1, v2}, Llo2;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public W(Ljava/time/ZonedDateTime;)Lmo2$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lgo2;

    .line 4
    .line 5
    const/4 v2, 0x0

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

.method public X(Ljava/lang/String;)Lmo2$a;
    .locals 3

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
    const/4 v2, 0x0

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

.method public Y(Z)Lmo2$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Ljo2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p1}, Ljo2;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public Z(Ljava/time/ZonedDateTime;)Lmo2$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lko2;

    .line 4
    .line 5
    const/4 v2, 0x0

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
