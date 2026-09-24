.class public final Lwf8$a;
.super Lyb6$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyb6$a<",
        "Lwf8$a;",
        "Lwf8;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyb6$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic S(ILwf8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lwf8$a;->U(ILwf8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic T(Ljava/lang/String;Lwf8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lwf8$a;->V(Ljava/lang/String;Lwf8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic U(ILwf8;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lwf8;->q(Lwf8;I)I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic V(Ljava/lang/String;Lwf8;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lwf8;->o(Lwf8;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Lwf8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lwf8$a;->Y(Lwf8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic R(Lyb6;)V
    .locals 0

    .line 1
    check-cast p1, Lwf8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lwf8$a;->Y(Lwf8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public W(I)Lwf8$a;
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 4
    .line 5
    new-instance v1, Lvf8;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lvf8;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "valid part number must be provided"

    .line 15
    .line 16
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public X(Ljava/lang/String;)Lwf8$a;
    .locals 3

    .line 1
    const-string v0, "upload ID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lqw4;

    .line 9
    .line 10
    const/4 v2, 0x5

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

.method public Y(Lwf8;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lyb6$a;->R(Lyb6;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lwf8;->n(Lwf8;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "upload ID"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lki8;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lwf8;->p(Lwf8;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-lez p0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p0, "valid part number must be provided"

    .line 21
    .line 22
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lwf8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lwf8$a;->Y(Lwf8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lwf8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lwf8$a;->Y(Lwf8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
