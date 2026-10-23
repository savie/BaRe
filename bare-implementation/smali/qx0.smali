.class public final Lqx0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lql6;


# instance fields
.field public final a:Luo2;


# direct methods
.method public constructor <init>(Luo2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqx0;->a:Luo2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lou5;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lll6;
    .locals 6

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    new-instance v1, Lvq;

    .line 4
    .line 5
    iget-object v0, p0, Lqx0;->a:Luo2;

    .line 6
    .line 7
    iget-object p0, v0, Luo2;->d:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v2, v0, Luo2;->c:Lm35;

    .line 10
    .line 11
    const/4 v3, 0x7

    .line 12
    invoke-direct {v1, v3, p1, p0, v2}, Lvq;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v5, Luo2;->j:Lnh4;

    .line 16
    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    move-object v4, p4

    .line 20
    invoke-virtual/range {v0 .. v5}, Luo2;->a(Lba4;IILou5;Lto2;)Lor0;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
