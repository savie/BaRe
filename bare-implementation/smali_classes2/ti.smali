.class public final synthetic Lti;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p3, p0, Lti;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lti;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p4, p0, Lti;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput p2, p0, Lti;->b:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lti;->a:I

    .line 2
    .line 3
    iget v0, p0, Lti;->b:I

    .line 4
    .line 5
    iget-object v1, p0, Lti;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lti;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lt55;

    .line 13
    .line 14
    check-cast v1, Lu55;

    .line 15
    .line 16
    iget-object p0, p0, Lgm7;->j:Lqt3;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p0, v1, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    check-cast p0, Lan3;

    .line 29
    .line 30
    check-cast v1, Lbn3;

    .line 31
    .line 32
    iget-object p0, p0, Lgm7;->j:Lqt3;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p0, v1, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    :pswitch_1
    check-cast p0, Ljj0;

    .line 45
    .line 46
    check-cast v1, Lij0;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljj0;->b()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-object p0, p0, Ljj0;->c:Ljava/util/List;

    .line 53
    .line 54
    new-instance v2, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    move-object v4, v3

    .line 74
    check-cast v4, Lli0;

    .line 75
    .line 76
    invoke-virtual {v4}, Lli0;->b()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_2

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Lli0;

    .line 101
    .line 102
    iput-boolean p1, v2, Lli0;->f:Z

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {v1, v0}, Lhg6;->f(I)V

    .line 106
    .line 107
    .line 108
    iget-object p0, v1, Lij0;->f:Lkj0;

    .line 109
    .line 110
    if-eqz p0, :cond_8

    .line 111
    .line 112
    iget-object p1, p0, Lkj0;->a:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p1, Llj0;

    .line 115
    .line 116
    iget-object p0, p0, Lkj0;->b:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p0, Lpj0;

    .line 119
    .line 120
    iget-boolean v0, p0, Lpj0;->d:Z

    .line 121
    .line 122
    if-nez v0, :cond_6

    .line 123
    .line 124
    invoke-virtual {p0}, Lpj0;->b()Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-eqz p0, :cond_5

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    const/4 p0, 0x0

    .line 132
    goto :goto_3

    .line 133
    :cond_6
    :goto_2
    const/4 p0, 0x1

    .line 134
    :goto_3
    iget-object p1, p1, Llj0;->S:Lcom/google/android/material/button/MaterialButton;

    .line 135
    .line 136
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 137
    .line 138
    .line 139
    if-eqz p0, :cond_7

    .line 140
    .line 141
    const/high16 p0, 0x3f800000    # 1.0f

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_7
    const/high16 p0, 0x3f000000    # 0.5f

    .line 145
    .line 146
    :goto_4
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 147
    .line 148
    .line 149
    :cond_8
    return-void

    .line 150
    :pswitch_2
    check-cast p0, Lwi;

    .line 151
    .line 152
    check-cast v1, Lpi;

    .line 153
    .line 154
    iget-object p0, p0, Lr35;->e:Lqt3;

    .line 155
    .line 156
    if-eqz p0, :cond_9

    .line 157
    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-interface {p0, v1, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_9
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
