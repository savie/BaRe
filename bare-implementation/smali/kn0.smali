.class public final Lkn0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final synthetic c:Landroid/view/KeyEvent$Callback;


# direct methods
.method public constructor <init>(Lon0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkn0;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lkn0;->c:Landroid/view/KeyEvent$Callback;

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lkn0;->b:I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkn0;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkn0;->c:Landroid/view/KeyEvent$Callback;

    iput p2, p0, Lkn0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lkn0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lkn0;->c:Landroid/view/KeyEvent$Callback;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 9
    .line 10
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->P()Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget p0, p0, Lkn0;->b:I

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->G(I)Lfh6;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lfh6;->a:Landroid/view/View;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x6

    .line 29
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->j(I)Landroid/view/animation/AlphaAnimation;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_0
    check-cast v1, Lon0;

    .line 38
    .line 39
    iget-object v0, v1, Lon0;->n:Lln0;

    .line 40
    .line 41
    iget p0, p0, Lkn0;->b:I

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    invoke-virtual {v0, p0, v1}, Lo03;->w(II)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
