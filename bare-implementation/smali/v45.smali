.class public final Lv45;
.super Landroid/os/Handler;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lva7;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lv45;->a:I

    .line 10
    iput-object p1, p0, Lv45;->b:Ljava/lang/Object;

    .line 11
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Lw45;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lv45;->a:I

    .line 3
    .line 4
    iput-object p1, p0, Lv45;->b:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p0, Lv45;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lv45;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget p0, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    if-eq p0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/lang/Runnable;

    .line 17
    .line 18
    check-cast v1, Lva7;

    .line 19
    .line 20
    invoke-virtual {v1}, Lva7;->a()V

    .line 21
    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void

    .line 29
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 33
    .line 34
    .line 35
    check-cast v1, Lw45;

    .line 36
    .line 37
    iget-object p0, v1, Lw45;->p:Landroid/widget/ProgressBar;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    iget-object p1, v1, Lw45;->p:Landroid/widget/ProgressBar;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-object v0, v1, Lw45;->x:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, v1, Lw45;->t:Landroid/widget/TextView;

    .line 58
    .line 59
    const-string v4, ""

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    const/4 v6, 0x2

    .line 79
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    iget-object v0, v1, Lw45;->G:Ljava/text/NumberFormat;

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    int-to-double v3, p0

    .line 102
    int-to-double p0, p1

    .line 103
    div-double/2addr v3, p0

    .line 104
    new-instance p0, Landroid/text/SpannableString;

    .line 105
    .line 106
    iget-object p1, v1, Lw45;->G:Ljava/text/NumberFormat;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    new-instance p1, Landroid/text/style/StyleSpan;

    .line 119
    .line 120
    invoke-direct {p1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    const/16 v2, 0x21

    .line 128
    .line 129
    const/4 v3, 0x0

    .line 130
    invoke-virtual {p0, p1, v3, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 131
    .line 132
    .line 133
    iget-object p1, v1, Lw45;->y:Landroid/widget/TextView;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    iget-object p0, v1, Lw45;->y:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    :goto_2
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
