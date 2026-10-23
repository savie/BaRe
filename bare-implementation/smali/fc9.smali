.class public final synthetic Lfc9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyt1;


# instance fields
.field public final synthetic a:Lw76;


# direct methods
.method public synthetic constructor <init>(Lw76;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfc9;->a:Lw76;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lyq0;

    .line 2
    .line 3
    new-instance v0, Lib;

    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    const/16 v3, 0xa

    .line 16
    .line 17
    invoke-direct {v0, v3, v1, v2}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lfc9;->a:Lw76;

    .line 21
    .line 22
    invoke-interface {p0, p1, v0}, Lw76;->a(Lyq0;Lib;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
