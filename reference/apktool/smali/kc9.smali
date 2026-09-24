.class public final Lkc9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lue9;

.field public final b:Lke9;


# direct methods
.method public constructor <init>(Lue9;Lke9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkc9;->a:Lue9;

    .line 5
    .line 6
    iput-object p2, p0, Lkc9;->b:Lke9;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkc9;->a:Lue9;

    .line 2
    .line 3
    iget-object v0, v0, Luc9;->a:Ljava/lang/Object;

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lkc9;->b:Lke9;

    .line 9
    .line 10
    iget-object v1, p0, Lkc9;->a:Lue9;

    .line 11
    .line 12
    invoke-static {v0}, Lue9;->f(Lke9;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Luc9;->k:Lho6;

    .line 17
    .line 18
    invoke-virtual {v2, v1, p0, v0}, Lho6;->h0(Luc9;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lkc9;->a:Lue9;

    .line 25
    .line 26
    invoke-static {p0}, Lue9;->h(Lue9;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method
