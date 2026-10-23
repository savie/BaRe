.class public final Lsu7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lgy5;

.field public final synthetic c:J

.field public final synthetic d:Lqn5;

.field public final synthetic e:Z

.field public final synthetic f:Lbv7;


# direct methods
.method public constructor <init>(Lbv7;ZLgy5;Lqn5;JLqn5;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsu7;->f:Lbv7;

    .line 5
    .line 6
    iput-boolean p2, p0, Lsu7;->a:Z

    .line 7
    .line 8
    iput-object p3, p0, Lsu7;->b:Lgy5;

    .line 9
    .line 10
    iput-wide p5, p0, Lsu7;->c:J

    .line 11
    .line 12
    iput-object p7, p0, Lsu7;->d:Lqn5;

    .line 13
    .line 14
    iput-boolean p8, p0, Lsu7;->e:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-boolean v0, p0, Lsu7;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lsu7;->f:Lbv7;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v1, Lbv7;->g:Leo5;

    .line 8
    .line 9
    invoke-virtual {v0}, Leo5;->c()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, v1, Lbv7;->b:Lvq;

    .line 13
    .line 14
    iget-wide v3, p0, Lsu7;->c:J

    .line 15
    .line 16
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v8

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, Lvq;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    cmp-long v2, v3, v5

    .line 32
    .line 33
    if-lez v2, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x0

    .line 38
    :goto_0
    invoke-static {v2}, Lzm5;->s(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lvq;->c:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v9, v2

    .line 44
    check-cast v9, Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance v2, Lkh8;

    .line 47
    .line 48
    iget-object v5, p0, Lsu7;->b:Lgy5;

    .line 49
    .line 50
    iget-object v6, p0, Lsu7;->d:Lqn5;

    .line 51
    .line 52
    iget-boolean v7, p0, Lsu7;->e:Z

    .line 53
    .line 54
    invoke-direct/range {v2 .. v7}, Lkh8;-><init>(JLgy5;Lqn5;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    if-eqz v7, :cond_2

    .line 61
    .line 62
    iget-object v2, v0, Lvq;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lnp1;

    .line 65
    .line 66
    invoke-virtual {v2, v5, v6}, Lnp1;->c(Lgy5;Lqn5;)Lnp1;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iput-object v2, v0, Lvq;->b:Ljava/lang/Object;

    .line 71
    .line 72
    :cond_2
    iput-object v8, v0, Lvq;->d:Ljava/lang/Object;

    .line 73
    .line 74
    iget-boolean v0, p0, Lsu7;->e:Z

    .line 75
    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_3
    new-instance v0, Ljv5;

    .line 82
    .line 83
    sget-object v2, Leu5;->d:Leu5;

    .line 84
    .line 85
    iget-object v3, p0, Lsu7;->d:Lqn5;

    .line 86
    .line 87
    iget-object p0, p0, Lsu7;->b:Lgy5;

    .line 88
    .line 89
    invoke-direct {v0, v2, p0, v3}, Ljv5;-><init>(Leu5;Lgy5;Lqn5;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v0}, Lbv7;->a(Lbv7;Lgu2;)Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method
