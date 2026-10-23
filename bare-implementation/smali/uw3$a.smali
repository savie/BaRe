.class public final Luw3$a;
.super Lvr5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luw3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvr5$a<",
        "Luw3$a;",
        "Luw3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvr5$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F(ILuw3;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Luw3$a;->J(ILuw3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Lv64$d;Luw3;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Luw3$a;->K(Lv64$d;Luw3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic J(ILuw3;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Luw3;->l(Luw3;I)I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic K(Lv64$d;Luw3;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Luw3;->k(Luw3;Lv64$d;)Lv64$d;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private N(I)V
    .locals 4

    .line 1
    const/4 p0, 0x1

    .line 2
    if-lt p1, p0, :cond_0

    .line 3
    .line 4
    sget p0, Luw3;->j:I

    .line 5
    .line 6
    if-gt p1, p0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string p1, "expiry must be minimum 1 second to maximum "

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget p1, Luw3;->j:I

    .line 17
    .line 18
    int-to-long v0, p1

    .line 19
    const-wide/32 v2, 0x15180

    .line 20
    .line 21
    .line 22
    div-long/2addr v0, v2

    .line 23
    const-string p1, " days"

    .line 24
    .line 25
    invoke-static {v0, v1, p1, p0}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private O(Lv64$d;)V
    .locals 0

    .line 1
    const-string p0, "method"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Luw3;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Luw3$a;->M(Luw3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public H(I)Luw3$a;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Luw3$a;->N(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Ltw3;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p1, v2}, Ltw3;-><init>(II)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public I(ILjava/util/concurrent/TimeUnit;)Luw3$a;
    .locals 2

    .line 1
    int-to-long v0, p1

    .line 2
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 3
    .line 4
    .line 5
    move-result-wide p1

    .line 6
    long-to-int p1, p1

    .line 7
    invoke-virtual {p0, p1}, Luw3$a;->H(I)Luw3$a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public L(Lv64$d;)Luw3$a;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Luw3$a;->O(Lv64$d;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Lc10;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, p1, v2}, Lc10;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public M(Luw3;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Luw3;->j(Luw3;)Lv64$d;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Luw3$a;->O(Lv64$d;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Luw3;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Luw3$a;->M(Luw3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Luw3;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Luw3$a;->M(Luw3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
