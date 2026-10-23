.class public final Lbg8$a;
.super Lyr5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbg8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyr5$a<",
        "Lbg8$a;",
        "Lbg8;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyr5$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Z(Ljava/lang/Iterable;Lbg8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lbg8$a;->e0(Ljava/lang/Iterable;Lbg8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a0(ZLbg8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lbg8$a;->d0(ZLbg8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Ljava/lang/String;Lbg8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lbg8$a;->f0(Ljava/lang/String;Lbg8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic d0(ZLbg8;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lbg8;->x(Lbg8;Z)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic e0(Ljava/lang/Iterable;Lbg8;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lbg8;->w(Lbg8;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic f0(Ljava/lang/String;Lbg8;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lbg8;->y(Lbg8;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j0(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p0, "objects"

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
    check-cast p1, Lbg8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbg8$a;->i0(Lbg8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c0(Z)Lbg8$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lrh2;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2, p1}, Lrh2;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public g0(Ljava/lang/Iterable;)Lbg8$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Lbg8$a;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lbg8$a;->j0(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Luo1;

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-direct {v1, p1, v2}, Luo1;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public h0(Ljava/lang/String;)Lbg8$a;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "staging filename must not be empty"

    .line 11
    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 18
    .line 19
    new-instance v1, Llo2;

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    invoke-direct {v1, p1, v2}, Llo2;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public i0(Lbg8;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "snowball."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lbg8;->u()Ljava/util/Random;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ".tar"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p1, Lyq5;->f:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p1}, Lbg8;->v(Lbg8;)Ljava/lang/Iterable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Lbg8$a;->j0(Ljava/lang/Iterable;)V

    .line 35
    .line 36
    .line 37
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lbg8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbg8$a;->i0(Lbg8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lbg8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbg8$a;->i0(Lbg8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
