.class public final Lfc6$a;
.super Lfw0$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfc6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfw0$a<",
        "Lfc6$a;",
        "Lfc6;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfw0$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic A(Ljava/util/List;Lfc6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfc6$a;->F(Ljava/util/List;Lfc6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(La61;Lfc6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfc6$a;->E(La61;Lfc6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic E(La61;Lfc6;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lfc6;->m(Lfc6;La61;)La61;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic F(Ljava/util/List;Lfc6;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lfc6;->k(Lfc6;Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic G(Lg87;Lfc6;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lfc6;->l(Lfc6;Lg87;)Lg87;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic H(Ljava/io/InputStream;Lfc6;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lfc6;->i(Lfc6;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic I(JLfc6;)V
    .locals 0

    .line 1
    invoke-static {p2, p0, p1}, Lfc6;->n(Lfc6;J)J

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x(JLfc6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lfc6$a;->I(JLfc6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Lg87;Lfc6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfc6$a;->G(Lg87;Lfc6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Ljava/io/InputStream;Lfc6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfc6$a;->H(Ljava/io/InputStream;Lfc6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public C(La61;)Lfc6$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lv02;

    .line 4
    .line 5
    const/4 v2, 0x5

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

.method public D(Ljava/util/List;)Lfc6$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgc6;",
            ">;)",
            "Lfc6$a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, La10;

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    invoke-direct {v1, p1, v2}, La10;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public J(Lg87;)Lfc6$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lsh2;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-direct {v1, p1, v2}, Lsh2;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public K(Ljava/io/InputStream;J)Lfc6$a;
    .locals 4

    .line 1
    const-string v0, "stream"

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
    if-ltz v0, :cond_1

    .line 12
    .line 13
    const-wide v2, 0x140000000L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v0, p2, v2

    .line 19
    .line 20
    if-gtz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 23
    .line 24
    new-instance v1, Ly00;

    .line 25
    .line 26
    const/4 v2, 0x6

    .line 27
    invoke-direct {v1, p1, v2}, Ly00;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lll0$a;->a:Ljava/util/List;

    .line 34
    .line 35
    new-instance v0, Lec6;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v0, v1, p2, p3}, Lec6;-><init>(IJ)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_0
    const-string p0, "size "

    .line 46
    .line 47
    const-string p1, " is not supported; maximum allowed 5GiB"

    .line 48
    .line 49
    invoke-static {p0, p1, p2, p3}, Lfz5;->m(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_1
    const-string p0, "invalid stream size "

    .line 58
    .line 59
    invoke-static {p2, p3, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v1
.end method

.method public L(Lfc6;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lfw0$a;->u(Lfw0;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lfc6;->h(Lfc6;)Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "stream"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lfc6;->j(Lfc6;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "fan-out entries"

    .line 18
    .line 19
    invoke-static {p0, p1}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lfc6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfc6$a;->L(Lfc6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lfc6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfc6$a;->L(Lfc6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
