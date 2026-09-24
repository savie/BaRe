.class public final Ls12$a;
.super Lyq5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyq5$a<",
        "Ls12$a;",
        "Ls12;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyq5$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lv64$c;Ls12;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ls12$a;->E(Lv64$c;Ls12;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic E(Lv64$c;Ls12;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Ls12;->i(Ls12;Lv64$c;)Lv64$c;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Ls12;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ls12$a;->F(Ls12;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public D(Lv64$c;)Ls12$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lfn1;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p1, v2}, Lfn1;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public F(Ls12;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Ls12;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ls12$a;->F(Ls12;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Ls12;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ls12$a;->F(Ls12;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
