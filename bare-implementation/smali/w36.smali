.class public final Lw36;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfb2;


# instance fields
.field public final a:Lfb2;


# direct methods
.method public constructor <init>(Lfb2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw36;->a:Lfb2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lqt3;Lkv1;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lk41;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {v0, p1, v1, v2}, Lk41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lw36;->a:Lfb2;

    .line 9
    .line 10
    invoke-interface {p0, v0, p2}, Lfb2;->a(Lqt3;Lkv1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getData()Lji3;
    .locals 0

    .line 1
    iget-object p0, p0, Lw36;->a:Lfb2;

    .line 2
    .line 3
    invoke-interface {p0}, Lfb2;->getData()Lji3;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
