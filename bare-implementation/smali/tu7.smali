.class public final Ltu7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lgy5;

.field public final synthetic b:J

.field public final synthetic c:Lnp1;

.field public final synthetic d:Lbv7;


# direct methods
.method public constructor <init>(Lbv7;Lgy5;Lnp1;JLnp1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltu7;->d:Lbv7;

    .line 5
    .line 6
    iput-object p2, p0, Ltu7;->a:Lgy5;

    .line 7
    .line 8
    iput-wide p4, p0, Ltu7;->b:J

    .line 9
    .line 10
    iput-object p6, p0, Ltu7;->c:Lnp1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Ltu7;->d:Lbv7;

    .line 2
    .line 3
    iget-object v1, v0, Lbv7;->b:Lvq;

    .line 4
    .line 5
    iget-wide v2, p0, Ltu7;->b:J

    .line 6
    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v5, v1, Lvq;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v5, Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    cmp-long v5, v2, v5

    .line 23
    .line 24
    if-lez v5, :cond_0

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v5, 0x0

    .line 29
    :goto_0
    invoke-static {v5}, Lzm5;->s(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v5, v1, Lvq;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v5, Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance v6, Lkh8;

    .line 37
    .line 38
    iget-object v7, p0, Ltu7;->a:Lgy5;

    .line 39
    .line 40
    iget-object p0, p0, Ltu7;->c:Lnp1;

    .line 41
    .line 42
    invoke-direct {v6, v2, v3, v7, p0}, Lkh8;-><init>(JLgy5;Lnp1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v2, v1, Lvq;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Lnp1;

    .line 51
    .line 52
    invoke-virtual {v2, v7, p0}, Lnp1;->d(Lgy5;Lnp1;)Lnp1;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iput-object v2, v1, Lvq;->b:Ljava/lang/Object;

    .line 57
    .line 58
    iput-object v4, v1, Lvq;->d:Ljava/lang/Object;

    .line 59
    .line 60
    new-instance v1, Lbd5;

    .line 61
    .line 62
    sget-object v2, Leu5;->d:Leu5;

    .line 63
    .line 64
    invoke-direct {v1, v2, v7, p0}, Lbd5;-><init>(Leu5;Lgy5;Lnp1;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Lbv7;->a(Lbv7;Lgu2;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method
