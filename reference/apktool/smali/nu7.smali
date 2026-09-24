.class public final Lnu7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lhx7;

.field public final synthetic c:Lgy5;

.field public final synthetic d:Lbv7;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lbv7;Lhx7;Lgy5;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lnu7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lnu7;->d:Lbv7;

    .line 4
    .line 5
    iput-object p2, p0, Lnu7;->b:Lhx7;

    .line 6
    .line 7
    iput-object p3, p0, Lnu7;->c:Lgy5;

    .line 8
    .line 9
    iput-object p4, p0, Lnu7;->e:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lnu7;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    iget-object v3, p0, Lnu7;->b:Lhx7;

    .line 6
    .line 7
    iget-object v4, p0, Lnu7;->d:Lbv7;

    .line 8
    .line 9
    iget-object v5, p0, Lnu7;->c:Lgy5;

    .line 10
    .line 11
    iget-object p0, p0, Lnu7;->e:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Lqn5;

    .line 17
    .line 18
    iget-object v0, v4, Lbv7;->c:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lqc6;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v3, v0, Lqc6;->a:Lgy5;

    .line 29
    .line 30
    invoke-static {v3, v5}, Lgy5;->o(Lgy5;Lgy5;)Lgy5;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lgy5;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {v5}, Lqc6;->a(Lgy5;)Lqc6;

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object v5, v4, Lbv7;->g:Leo5;

    .line 45
    .line 46
    invoke-virtual {v5}, Leo5;->c()V

    .line 47
    .line 48
    .line 49
    new-instance v5, Ljv5;

    .line 50
    .line 51
    iget-object v6, v0, Lqc6;->b:Loc6;

    .line 52
    .line 53
    new-instance v7, Leu5;

    .line 54
    .line 55
    invoke-direct {v7, v2, v6, v1}, Leu5;-><init>(ILoc6;Z)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v5, v7, v3, p0}, Ljv5;-><init>(Leu5;Lgy5;Lqn5;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v4, v0, v5}, Lbv7;->b(Lbv7;Lqc6;Lgu2;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 67
    .line 68
    :goto_1
    return-object p0

    .line 69
    :pswitch_0
    iget-object v0, v4, Lbv7;->c:Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lqc6;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-object v3, v0, Lqc6;->a:Lgy5;

    .line 80
    .line 81
    invoke-static {v3, v5}, Lgy5;->o(Lgy5;Lgy5;)Lgy5;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast p0, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-static {p0}, Lnp1;->i(Ljava/util/HashMap;)Lnp1;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    iget-object v5, v4, Lbv7;->g:Leo5;

    .line 92
    .line 93
    invoke-virtual {v5}, Leo5;->c()V

    .line 94
    .line 95
    .line 96
    new-instance v5, Lbd5;

    .line 97
    .line 98
    iget-object v6, v0, Lqc6;->b:Loc6;

    .line 99
    .line 100
    new-instance v7, Leu5;

    .line 101
    .line 102
    invoke-direct {v7, v2, v6, v1}, Leu5;-><init>(ILoc6;Z)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v5, v7, v3, p0}, Lbd5;-><init>(Leu5;Lgy5;Lnp1;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v0, v5}, Lbv7;->b(Lbv7;Lqc6;Lgu2;)Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 114
    .line 115
    :goto_2
    return-object p0

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
