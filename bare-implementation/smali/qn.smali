.class public final Lqn;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lqn;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lqn;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lqn;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lqn;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :try_start_0
    check-cast v1, Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "Executor"

    .line 16
    .line 17
    const-string v1, "Background execution failure."

    .line 18
    .line 19
    invoke-static {p0, v0, v1}, Lly8;->p(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :pswitch_0
    check-cast v1, Lfo;

    .line 24
    .line 25
    iget-object v0, v1, Lfo;->N:Landroid/widget/PopupWindow;

    .line 26
    .line 27
    iget-object v2, v1, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 28
    .line 29
    const/16 v3, 0x37

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v1, Lfo;->P:Llm8;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Llm8;->b()V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-boolean v0, v1, Lfo;->Q:Z

    .line 43
    .line 44
    const/high16 v2, 0x3f800000    # 1.0f

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, v1, Lfo;->R:Landroid/view/ViewGroup;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object v0, v1, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 62
    .line 63
    .line 64
    iget-object v0, v1, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 65
    .line 66
    invoke-static {v0}, Ldl8;->a(Landroid/view/View;)Llm8;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, v2}, Llm8;->a(F)V

    .line 71
    .line 72
    .line 73
    iput-object v0, v1, Lfo;->P:Llm8;

    .line 74
    .line 75
    new-instance v1, Lpn;

    .line 76
    .line 77
    invoke-direct {v1, p0, v4}, Lpn;-><init>(Ljava/lang/Object;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Llm8;->d(Lom8;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    iget-object p0, v1, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 87
    .line 88
    .line 89
    iget-object p0, v1, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 90
    .line 91
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
