.class public final synthetic Lp24;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lin2;


# instance fields
.field public final synthetic a:Lr24;

.field public final synthetic b:Lh48;


# direct methods
.method public synthetic constructor <init>(Lr24;Lh48;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp24;->a:Lr24;

    .line 5
    .line 6
    iput-object p2, p0, Lp24;->b:Lh48;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp24;->b:Lh48;

    .line 2
    .line 3
    iget-object p0, p0, Lp24;->a:Lr24;

    .line 4
    .line 5
    iget-object p0, p0, Lr24;->c:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
