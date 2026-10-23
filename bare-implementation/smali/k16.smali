.class public final synthetic Lk16;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lvz0;


# instance fields
.field public final synthetic a:Lw16;


# direct methods
.method public synthetic constructor <init>(Lw16;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk16;->a:Lw16;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lvz0;

    .line 2
    .line 3
    new-instance v0, Lcn6;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object p0, p0, Lk16;->a:Lw16;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcn6;-><init>(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lvz0;->invoke(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
