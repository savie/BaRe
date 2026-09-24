.class public final Lhj6$a;
.super Lvr5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvr5$a<",
        "Lhj6$a;",
        "Lhj6;",
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

.method public static synthetic F(ZLhj6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhj6$a;->H(ZLhj6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic H(ZLhj6;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lhj6;->j(Lhj6;Z)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public G(Z)Lhj6$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lcr5;

    .line 4
    .line 5
    const/4 v2, 0x2

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
