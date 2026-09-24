.class public final Lym;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt5;


# instance fields
.field public final synthetic a:Lzm;


# direct methods
.method public constructor <init>(Lzm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lym;->a:Lzm;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lio1;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lym;->a:Lzm;

    .line 2
    .line 3
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lnn;->a()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lio1;->getSavedStateRegistry()Lot9;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "androidx:appcompat"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lot9;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lnn;->d()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
