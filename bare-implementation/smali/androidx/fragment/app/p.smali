.class public final synthetic Landroidx/fragment/app/p;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lux6;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/u;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Landroidx/fragment/app/u;->m(Landroidx/fragment/app/z;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object p0, v0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lhu4;

    .line 14
    .line 15
    sget-object v0, Lrt4;->ON_STOP:Lrt4;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lhu4;->d(Lrt4;)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method
