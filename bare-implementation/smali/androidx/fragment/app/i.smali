.class public final synthetic Landroidx/fragment/app/i;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/o;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/o;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/o;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/o;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/fragment/app/f0;->f:Lw00;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lw00;->u(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroidx/fragment/app/o;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 14
    .line 15
    return-void
.end method
