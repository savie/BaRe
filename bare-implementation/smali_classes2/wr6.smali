.class public final synthetic Lwr6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/slog/SLogActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/slog/SLogActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lwr6;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lwr6;->b:Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lwr6;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lwr6;->b:Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->Q:Lgv7;

    .line 10
    .line 11
    sget v1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->R:I

    .line 12
    .line 13
    sget-object v1, Lmp6;->a:Lmp6;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v1, v0, v2, v2}, Lmp6;->d(Lmp6;ZZI)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lmp6;->f()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Let7;

    .line 30
    .line 31
    const v2, 0x7f130553

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2, v0}, Let7;-><init>(IZ)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    new-instance v1, Let7;

    .line 39
    .line 40
    const v0, 0x7f1304fb

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v0, v2}, Let7;-><init>(IZ)V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lu35;

    .line 51
    .line 52
    iget-object v0, v0, Lu35;->K:Ljk8;

    .line 53
    .line 54
    check-cast v0, Luh7;

    .line 55
    .line 56
    iget-object v0, v0, Luh7;->c:Landroid/widget/TextView;

    .line 57
    .line 58
    iget v2, v1, Let7;->a:I

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lu35;

    .line 68
    .line 69
    iget-object v0, v0, Lu35;->K:Ljk8;

    .line 70
    .line 71
    check-cast v0, Luh7;

    .line 72
    .line 73
    iget-object v0, v0, Luh7;->b:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    new-instance v2, Ler;

    .line 76
    .line 77
    const/4 v3, 0x4

    .line 78
    invoke-direct {v2, v3, p0, v1}, Ler;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Lu35;

    .line 89
    .line 90
    invoke-virtual {p0}, Lu35;->show()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_0
    sget p1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->R:I

    .line 95
    .line 96
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->N()Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
