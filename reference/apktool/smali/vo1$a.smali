.class public final Lvo1$a;
.super Lyr5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvo1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyr5$a<",
        "Lvo1$a;",
        "Lvo1;",
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

.method public static synthetic Z(Ljava/util/List;Lvo1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lvo1$a;->a0(Ljava/util/List;Lvo1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic a0(Ljava/util/List;Lvo1;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lvo1;->q:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method private d0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkj7;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p0, "source objects cannot be empty"

    .line 11
    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Lvo1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lvo1$a;->c0(Lvo1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b0(Ljava/util/List;)Lvo1$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkj7;",
            ">;)",
            "Lvo1$a;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lvo1$a;->d0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Luo1;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p1, v2}, Luo1;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public c0(Lvo1;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lvo1;->q:Ljava/util/List;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lvo1$a;->d0(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lvo1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lvo1$a;->c0(Lvo1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lvo1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lvo1$a;->c0(Lvo1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
