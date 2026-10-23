.class public final synthetic Ln91;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lqw2;


# direct methods
.method public synthetic constructor <init>(Lqw2;I)V
    .locals 0

    .line 1
    iput p2, p0, Ln91;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ln91;->b:Lqw2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    iget p1, p0, Ln91;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ln91;->b:Lqw2;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Llr2;

    .line 9
    .line 10
    iput-boolean p2, p0, Llr2;->l:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lqw2;->p()V

    .line 13
    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Llr2;->s(Z)V

    .line 19
    .line 20
    .line 21
    iput-boolean p1, p0, Llr2;->m:Z

    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    check-cast p0, Lr91;

    .line 25
    .line 26
    invoke-virtual {p0}, Lr91;->t()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0, p1}, Lr91;->s(Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
