.class public final Lbg1;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Los4;


# direct methods
.method public constructor <init>(Los4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbg1;->a:Los4;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lbg1;->a:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzl8;

    .line 8
    .line 9
    invoke-interface {p0}, Lzl8;->getViewModelStore()Lyl8;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
