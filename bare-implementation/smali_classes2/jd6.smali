.class public final Ljd6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final synthetic a:I

.field public final b:Landroidx/core/widget/NestedScrollView;


# direct methods
.method public constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lka;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Ljd6;->a:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Ljd6;->b:Landroidx/core/widget/NestedScrollView;

    return-void
.end method

.method public constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput p2, p0, Ljd6;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ljd6;->b:Landroidx/core/widget/NestedScrollView;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Ljd6;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ljd6;->b:Landroidx/core/widget/NestedScrollView;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    iget-object p0, p0, Ljd6;->b:Landroidx/core/widget/NestedScrollView;

    .line 10
    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
