.class public final Lll8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lkm0;

.field public final synthetic c:Ljl8;


# direct methods
.method public constructor <init>(Lkm0;Lkm0;Ljl8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lll8;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lll8;->b:Lkm0;

    .line 7
    .line 8
    iput-object p3, p0, Lll8;->c:Ljl8;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lll8;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lx7;

    .line 7
    .line 8
    iget-object v0, p0, Lll8;->c:Ljl8;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    iget-object p0, p0, Lll8;->b:Lkm0;

    .line 12
    .line 13
    invoke-direct {p1, p0, v0, v1}, Lx7;-><init>(Landroid/view/View;Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Lyt5;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
