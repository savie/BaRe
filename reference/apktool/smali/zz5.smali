.class public final Lzz5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Le06;


# direct methods
.method public constructor <init>(Le06;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzz5;->a:Le06;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lzz5;->a:Le06;

    .line 2
    .line 3
    iget-object p1, p0, Le06;->I:Landroid/view/View$OnLongClickListener;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Le06;->n:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 8
    .line 9
    invoke-interface {p1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
