.class public final Lxw7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lzw7;

.field public final synthetic d:Lax7;


# direct methods
.method public constructor <init>(Lax7;IILzw7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxw7;->d:Lax7;

    .line 5
    .line 6
    iput p2, p0, Lxw7;->a:I

    .line 7
    .line 8
    iput p3, p0, Lxw7;->b:I

    .line 9
    .line 10
    iput-object p4, p0, Lxw7;->c:Lzw7;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lxw7;->d:Lax7;

    .line 2
    .line 3
    iget-object v1, v0, Lax7;->r:Lib;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Lax7;->c:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget v3, p0, Lxw7;->a:I

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lxw7;->b:I

    .line 15
    .line 16
    iget-object p0, p0, Lxw7;->c:Lzw7;

    .line 17
    .line 18
    invoke-virtual {v0, v3, v2, p0}, Lax7;->a(IILzw7;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, v1, Lib;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v0, v1, Lib;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lib0;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
