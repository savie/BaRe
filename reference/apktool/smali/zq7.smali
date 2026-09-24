.class public final Lzq7;
.super Ln3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Ln3;-><init>(Ljava/util/AbstractMap;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Lm3;)Lm3;
    .locals 0

    .line 1
    new-instance p0, Lyq7;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lm3;-><init>(Lm3;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lyq7;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lyq7;->c:Ljava/lang/Object;

    .line 15
    .line 16
    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lxq7;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lxq7;-><init>(Lzq7;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
