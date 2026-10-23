.class public final synthetic Lj00;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, Lj00;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lj00;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lj00;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lj00;->a:I

    .line 2
    .line 3
    iget v1, p0, Lj00;->b:I

    .line 4
    .line 5
    iget-object p0, p0, Lj00;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lkp3;

    .line 11
    .line 12
    invoke-virtual {p0}, Lkp3;->k()Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lkp3;->k()Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Lip3;

    .line 24
    .line 25
    invoke-direct {v2, p0, v1}, Lip3;-><init>(Lkp3;I)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v3, 0x64

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;

    .line 35
    .line 36
    sget v0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O:I

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object p0, p0, Lm00;->p:Landroidx/core/widget/NestedScrollView;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 46
    .line 47
    .line 48
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
