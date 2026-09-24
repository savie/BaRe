.class public final synthetic Lhr3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyt1;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/z;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhr3;->a:Landroidx/fragment/app/z;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object p0, p0, Lhr3;->a:Landroidx/fragment/app/z;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/z;->M()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->i(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
