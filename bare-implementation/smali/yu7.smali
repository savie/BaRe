.class public final Lyu7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lhx7;

.field public final synthetic b:Lbv7;


# direct methods
.method public constructor <init>(Lbv7;Lhx7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyu7;->b:Lbv7;

    .line 5
    .line 6
    iput-object p2, p0, Lyu7;->a:Lhx7;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lyu7;->a:Lhx7;

    .line 2
    .line 3
    iget-object p0, p0, Lyu7;->b:Lbv7;

    .line 4
    .line 5
    iget-object v1, p0, Lbv7;->c:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lqc6;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lbv7;->g:Leo5;

    .line 16
    .line 17
    invoke-virtual {v1}, Leo5;->c()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lsy4;

    .line 21
    .line 22
    iget-object v2, v0, Lqc6;->b:Loc6;

    .line 23
    .line 24
    new-instance v3, Leu5;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-direct {v3, v4, v2, v5}, Leu5;-><init>(ILoc6;Z)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lgy5;->d:Lgy5;

    .line 32
    .line 33
    invoke-direct {v1, v3, v2}, Lsy4;-><init>(Leu5;Lgy5;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v0, v1}, Lbv7;->b(Lbv7;Lqc6;Lgu2;)Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 42
    .line 43
    return-object p0
.end method
