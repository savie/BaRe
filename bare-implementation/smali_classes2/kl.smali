.class public final synthetic Lkl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ldy7;Lpw6;I)V
    .locals 0

    .line 14
    iput p4, p0, Lkl;->a:I

    iput-object p1, p0, Lkl;->b:Ljava/lang/Object;

    iput-object p2, p0, Lkl;->c:Ljava/lang/Object;

    iput-object p3, p0, Lkl;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lml;Lvl;Lwl;Lh86;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lkl;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lkl;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lkl;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lkl;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lkl;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lbe8;->a:Lbe8;

    .line 5
    .line 6
    iget-object v3, p0, Lkl;->d:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lkl;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lkl;->b:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Ltp3;

    .line 16
    .line 17
    check-cast v4, Ldy7;

    .line 18
    .line 19
    check-cast v3, Lqp3;

    .line 20
    .line 21
    check-cast p1, Lgz7;

    .line 22
    .line 23
    iget-object v0, p0, Ltp3;->a:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 24
    .line 25
    iget-boolean v5, v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->L:Z

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    sget-object p1, Lgz7;->COMPLETE:Lgz7;

    .line 30
    .line 31
    :cond_0
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    xor-int/lit8 v5, v5, 0x1

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ldy7;->c(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Lpw6;->o(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {v3}, Lpw6;->g()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    iget-object v1, p0, Ltp3;->e:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v3, v3, Lqp3;->m:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const v4, 0x7f1305c3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    iget-object p1, p0, Ltp3;->g:Lkm5;

    .line 97
    .line 98
    invoke-virtual {p1}, Lkm5;->w()V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Ltp3;->h:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 102
    .line 103
    invoke-static {p1}, Lsz8;->X(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Ltp3;->i:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-static {p0}, Lsz8;->X(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    :goto_0
    return-object v2

    .line 112
    :pswitch_0
    check-cast p0, Lb21;

    .line 113
    .line 114
    check-cast v4, Ldy7;

    .line 115
    .line 116
    check-cast v3, Lz11;

    .line 117
    .line 118
    check-cast p1, Lgz7;

    .line 119
    .line 120
    iget-object v0, p0, Lb21;->a:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 121
    .line 122
    iget-boolean v0, v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->L:Z

    .line 123
    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    sget-object p1, Lgz7;->COMPLETE:Lgz7;

    .line 127
    .line 128
    :cond_5
    if-nez p1, :cond_6

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    xor-int/lit8 v0, v0, 0x1

    .line 136
    .line 137
    invoke-virtual {v4, v0}, Ldy7;->c(Z)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_7

    .line 145
    .line 146
    iget-object p0, p0, Lb21;->f:Lkm5;

    .line 147
    .line 148
    invoke-virtual {p0}, Lkm5;->w()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v1}, Lpw6;->o(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    :goto_1
    return-object v2

    .line 155
    :pswitch_1
    check-cast p0, Lml;

    .line 156
    .line 157
    check-cast v4, Lwl;

    .line 158
    .line 159
    check-cast v3, Lh86;

    .line 160
    .line 161
    check-cast p1, Ljava/lang/Long;

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 164
    .line 165
    .line 166
    move-result-wide v0

    .line 167
    invoke-virtual {p0, p1}, Lml;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Lwl;->d()J

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v0, v1}, Lh86;->a(J)J

    .line 174
    .line 175
    .line 176
    return-object v2

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
