.class public final Lxu7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lgy5;

.field public final synthetic b:Lbv7;


# direct methods
.method public constructor <init>(Lbv7;Lgy5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxu7;->b:Lbv7;

    .line 5
    .line 6
    iput-object p2, p0, Lxu7;->a:Lgy5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lxu7;->b:Lbv7;

    .line 2
    .line 3
    iget-object v1, v0, Lbv7;->g:Leo5;

    .line 4
    .line 5
    iget-object p0, p0, Lxu7;->a:Lgy5;

    .line 6
    .line 7
    invoke-static {p0}, Lqc6;->a(Lgy5;)Lqc6;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Leo5;->c()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lsy4;

    .line 14
    .line 15
    sget-object v2, Leu5;->e:Leu5;

    .line 16
    .line 17
    invoke-direct {v1, v2, p0}, Lsy4;-><init>(Leu5;Lgy5;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lbv7;->a(Lbv7;Lgu2;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
