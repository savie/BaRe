.class public final Lnx6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lau4;


# instance fields
.field public final a:Lrx6;


# direct methods
.method public constructor <init>(Lrx6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnx6;->a:Lrx6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Lfu4;Lrt4;)V
    .locals 1

    .line 1
    sget-object v0, Lrt4;->ON_CREATE:Lrt4;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lfu4;->getLifecycle()Lhu4;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lhu4;->f(Leu4;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lnx6;->a:Lrx6;

    .line 13
    .line 14
    invoke-virtual {p0}, Lrx6;->b()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string p0, "Next event must be ON_CREATE, it was "

    .line 19
    .line 20
    invoke-static {p2, p0}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
