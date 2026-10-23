.class public final Lom6$a;
.super Lvr5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lom6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvr5$a<",
        "Lom6$a;",
        "Lom6;",
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

.method public static synthetic F(Lpm6;Lom6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lom6$a;->G(Lpm6;Lom6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic G(Lpm6;Lom6;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lom6;->j(Lom6;Lpm6;)Lpm6;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private J(Lpm6;)V
    .locals 0

    .line 1
    const-string p0, "request"

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
    check-cast p1, Lom6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lom6$a;->I(Lom6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public H(Lpm6;)Lom6$a;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lom6$a;->J(Lpm6;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Luo1;

    .line 7
    .line 8
    const/4 v2, 0x4

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

.method public I(Lom6;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lom6;->l()Lpm6;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lom6$a;->J(Lpm6;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lom6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lom6$a;->I(Lom6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lom6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lom6$a;->I(Lom6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
