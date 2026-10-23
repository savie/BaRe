.class public final Lt88;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lu88;


# direct methods
.method public constructor <init>(Lu88;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt88;->a:Lu88;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    const/4 p2, 0x2

    .line 2
    new-array p2, p2, [I

    .line 3
    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    aget p2, p2, p3

    .line 9
    .line 10
    iget-object p0, p0, Lt88;->a:Lu88;

    .line 11
    .line 12
    iput p2, p0, Lu88;->l0:I

    .line 13
    .line 14
    iget-object p0, p0, Lu88;->e0:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
