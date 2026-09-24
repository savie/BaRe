.class public final Lpw1$a;
.super Lyr5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpw1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyr5$a<",
        "Lpw1$a;",
        "Lpw1;",
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

.method public static synthetic Z(Lkj7;Lpw1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lpw1$a;->d0(Lkj7;Lpw1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a0(Lzl2;Lpw1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lpw1$a;->e0(Lzl2;Lpw1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Lzl2;Lpw1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lpw1$a;->c0(Lzl2;Lpw1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic c0(Lzl2;Lpw1;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lpw1;->x(Lpw1;Lzl2;)Lzl2;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic d0(Lkj7;Lpw1;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lpw1;->v(Lpw1;Lkj7;)Lkj7;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic e0(Lzl2;Lpw1;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lpw1;->z(Lpw1;Lzl2;)Lzl2;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Lpw1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lpw1$a;->i0(Lpw1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f0(Lzl2;)Lpw1$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lmw1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2}, Lmw1;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public g0(Lkj7;)Lpw1$a;
    .locals 3

    .line 1
    const-string v0, "source object"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Low1;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p1, v2}, Low1;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public h0(Lzl2;)Lpw1$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lnw1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2}, Lnw1;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public i0(Lpw1;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lpw1;->u(Lpw1;)Lkj7;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "source object"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lpw1;->u(Lpw1;)Lkj7;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ldr5;->s()Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lpw1;->u(Lpw1;)Lkj7;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ldr5;->m()Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    :cond_0
    invoke-static {p1}, Lpw1;->w(Lpw1;)Lzl2;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    sget-object v0, Lzl2;->a:Lzl2;

    .line 38
    .line 39
    if-eq p0, v0, :cond_3

    .line 40
    .line 41
    invoke-static {p1}, Lpw1;->y(Lpw1;)Lzl2;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eq p0, v0, :cond_2

    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    :cond_2
    const-string p0, "COPY tagging directive is not applicable to source object with range"

    .line 49
    .line 50
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    const-string p0, "COPY metadata directive is not applicable to source object with range"

    .line 55
    .line 56
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lpw1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lpw1$a;->i0(Lpw1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lpw1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lpw1$a;->i0(Lpw1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
