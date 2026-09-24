.class public final Lpn;
.super Ljb9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic M:I

.field public final synthetic N:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lpn;->M:I

    .line 2
    .line 3
    iput-object p1, p0, Lpn;->N:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget v0, p0, Lpn;->M:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lpn;->N:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lqn;

    .line 10
    .line 11
    iget-object p0, p0, Lqn;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lfo;

    .line 14
    .line 15
    iget-object p0, p0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 3

    .line 1
    iget v0, p0, Lpn;->M:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lpn;->N:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lou8;

    .line 10
    .line 11
    iput-object v1, p0, Lou8;->w:Lnm8;

    .line 12
    .line 13
    iget-object p0, p0, Lou8;->h:Landroidx/appcompat/widget/ActionBarContainer;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    check-cast p0, Lqn;

    .line 20
    .line 21
    iget-object p0, p0, Lqn;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lfo;

    .line 24
    .line 25
    iget-object v0, p0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 26
    .line 27
    const/high16 v2, 0x3f800000    # 1.0f

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lfo;->P:Llm8;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Llm8;->d(Lom8;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lfo;->P:Llm8;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
