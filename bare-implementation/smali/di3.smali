.class public final Ldi3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Ldi3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ldi3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Ldi3;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ldi3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 9
    .line 10
    .line 11
    check-cast v1, Lsu4;

    .line 12
    .line 13
    invoke-virtual {v1}, Lsu4;->c()V

    .line 14
    .line 15
    .line 16
    iget-object p0, v1, Lsu4;->q:Lzb;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget-object p1, v1, Lao;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lmb4;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lzb;->a(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    check-cast v1, Lhi3;

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    iput p0, v1, Lhi3;->r:I

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    iput-object p0, v1, Lhi3;->m:Landroid/animation/Animator;

    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Ldi3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Ldi3;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lhi3;

    .line 13
    .line 14
    iget-object v0, p0, Lhi3;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1, v1}, Lmn8;->a(IZ)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lhi3;->r:I

    .line 22
    .line 23
    iput-object p1, p0, Lhi3;->m:Landroid/animation/Animator;

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
