.class public final synthetic Lm85;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p2, p0, Lm85;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lm85;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget p1, p0, Lm85;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object p0, p0, Lm85;->b:Landroid/view/View;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 10
    .line 11
    sget p1, Lcom/ferfalk/simplesearchview/SimpleSearchView;->O:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->b(Z)V

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :pswitch_0
    check-cast p0, Landroid/widget/Button;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 20
    .line 21
    .line 22
    return v0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
