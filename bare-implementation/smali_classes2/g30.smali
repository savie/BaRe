.class public final synthetic Lg30;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lg30;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lg30;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lg30;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lbe8;->a:Lbe8;

    .line 5
    .line 6
    iget-object p0, p0, Lg30;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, [C

    .line 12
    .line 13
    check-cast p1, Ljava/lang/CharSequence;

    .line 14
    .line 15
    check-cast p2, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {p1, p0, p2, v0}, Lnq7;->i0(Ljava/lang/CharSequence;[CIZ)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-gez p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance p2, Lpw5;

    .line 42
    .line 43
    invoke-direct {p2, p0, p1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    move-object p0, p2

    .line 47
    :goto_0
    return-object p0

    .line 48
    :pswitch_0
    check-cast p0, Lwq5;

    .line 49
    .line 50
    check-cast p1, Ljava/lang/Long;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    check-cast p2, Ljava/lang/Long;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lag8;->c:Lgz7;

    .line 61
    .line 62
    invoke-virtual {p2}, Lgz7;->isRunning()Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    invoke-static {p0, p1}, Lag8;->g(Lag8;Ljava/lang/Long;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-object v2

    .line 72
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 73
    .line 74
    check-cast p1, Lvd5;

    .line 75
    .line 76
    check-cast p2, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    sget p2, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lje5;->V(Lvd5;)V

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 91
    .line 92
    check-cast p1, Lvq4;

    .line 93
    .line 94
    check-cast p2, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    sget p2, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->S(Lvq4;)V

    .line 105
    .line 106
    .line 107
    return-object v2

    .line 108
    :pswitch_3
    check-cast p0, Lj30;

    .line 109
    .line 110
    iget-object v0, p0, Lj30;->Q:Lil0;

    .line 111
    .line 112
    check-cast p1, Lk30;

    .line 113
    .line 114
    check-cast p2, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    iget-object p2, p1, Lk30;->a:Ljava/lang/String;

    .line 123
    .line 124
    const-string v3, "Premium"

    .line 125
    .line 126
    invoke-static {p2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_2

    .line 131
    .line 132
    sget p1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 133
    .line 134
    invoke-static {v0}, Lrs9;->u(Lk28;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lil0;->G()Lqo0;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p2}, Lqo0;->e()Lix6;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    new-instance v3, Llo0;

    .line 150
    .line 151
    invoke-direct {v3, p1}, Llo0;-><init>(Lk30;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v3}, Lix6;->k(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :goto_1
    iget-object p1, p0, Lu35;->K:Ljk8;

    .line 158
    .line 159
    check-cast p1, Ls20;

    .line 160
    .line 161
    iget-object p1, p1, Ls20;->a:Landroid/widget/LinearLayout;

    .line 162
    .line 163
    new-instance p2, Lo10;

    .line 164
    .line 165
    invoke-direct {p2, p0, v1}, Lo10;-><init>(Ljava/lang/Object;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    const v0, 0x7f0b0002

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    int-to-long v0, p0

    .line 180
    const-wide/16 v3, 0x1f4

    .line 181
    .line 182
    add-long/2addr v0, v3

    .line 183
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    .line 185
    .line 186
    return-object v2

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
