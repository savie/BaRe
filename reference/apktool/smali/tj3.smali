.class public final synthetic Ltj3;
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
    iput p2, p0, Ltj3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ltj3;->b:Ljava/lang/Object;

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
    .locals 4

    .line 1
    iget v0, p0, Ltj3;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object p0, p0, Ltj3;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 11
    .line 12
    check-cast p1, Lvq4;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget p2, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->O()Lv37;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p1, p1, Lvq4;->a:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-virtual {p0, p1, p2}, Lv37;->j(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_0
    check-cast p0, Lsw6;

    .line 40
    .line 41
    check-cast p1, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    check-cast p2, Lmx1;

    .line 48
    .line 49
    invoke-interface {p2}, Lmx1;->getKey()Lnx1;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p0, p0, Lsw6;->b:Lox1;

    .line 54
    .line 55
    invoke-interface {p0, p1}, Lox1;->get(Lnx1;)Lmx1;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    sget-object v1, Lnh4;->b:Lnh4;

    .line 60
    .line 61
    if-eq p1, v1, :cond_1

    .line 62
    .line 63
    if-eq p2, p0, :cond_0

    .line 64
    .line 65
    const/high16 v0, -0x80000000

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    move-object v2, p0

    .line 72
    check-cast v2, Loh4;

    .line 73
    .line 74
    check-cast p2, Loh4;

    .line 75
    .line 76
    :goto_0
    const/4 p0, 0x0

    .line 77
    if-nez p2, :cond_2

    .line 78
    .line 79
    move-object p2, p0

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    if-ne p2, v2, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    instance-of p1, p2, Lw57;

    .line 85
    .line 86
    if-nez p1, :cond_5

    .line 87
    .line 88
    :goto_1
    if-ne p2, v2, :cond_4

    .line 89
    .line 90
    if-nez v2, :cond_0

    .line 91
    .line 92
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v0, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    .line 102
    .line 103
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p2, ", expected child of "

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p2, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_5
    check-cast p2, Lw57;

    .line 135
    .line 136
    invoke-virtual {p2}, Lci4;->y()Lg61;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_6

    .line 141
    .line 142
    invoke-interface {p1}, Lg61;->getParent()Loh4;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    :cond_6
    move-object p2, p0

    .line 147
    goto :goto_0

    .line 148
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 149
    .line 150
    check-cast p1, Lxa4;

    .line 151
    .line 152
    check-cast p2, Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    sget p2, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->Q()Lbb4;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1}, Lxa4;->getItemId()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p2, v0}, Lgm7;->t(Ljava/util/Set;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V(Lxa4;)V

    .line 178
    .line 179
    .line 180
    return-object v1

    .line 181
    :pswitch_2
    check-cast p0, Lwj3;

    .line 182
    .line 183
    check-cast p1, Ljava/lang/Long;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 186
    .line 187
    .line 188
    move-result-wide v2

    .line 189
    check-cast p2, Ljava/lang/Long;

    .line 190
    .line 191
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 192
    .line 193
    .line 194
    move-result-wide p1

    .line 195
    invoke-static {v2, v3, p1, p2}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    iget-object p0, p0, Lwj3;->c:Lmt3;

    .line 200
    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    return-object v1

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
