.class public final synthetic Lkl0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lkl0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lkl0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lkl0;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lkl0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, [B

    .line 9
    .line 10
    check-cast p1, Lyb6;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lyb6$a;->G([BLyb6;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Ly96;

    .line 17
    .line 18
    check-cast p1, Lz96;

    .line 19
    .line 20
    check-cast p1, Ln23;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Ly96;->c:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Lpw5;

    .line 28
    .line 29
    const-string v1, "command"

    .line 30
    .line 31
    invoke-direct {v0, v1, p1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget p1, p0, Ly96;->a:I

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Lpw5;

    .line 41
    .line 42
    const-string v3, "replyCode"

    .line 43
    .line 44
    invoke-direct {v2, v3, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Ly96;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v3, Lpw5;

    .line 61
    .line 62
    const-string v4, "message"

    .line 63
    .line 64
    invoke-direct {v3, v4, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    filled-new-array {v0, v2, v3}, [Lpw5;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    const/16 v0, 0x190

    .line 75
    .line 76
    if-gt v0, p1, :cond_1

    .line 77
    .line 78
    const/16 v0, 0x258

    .line 79
    .line 80
    if-ge p1, v0, :cond_1

    .line 81
    .line 82
    const/16 v1, 0x1f4

    .line 83
    .line 84
    if-lt p1, v1, :cond_0

    .line 85
    .line 86
    if-ge p1, v0, :cond_0

    .line 87
    .line 88
    sget-object p1, Lvr6$a;->RED:Lvr6$a;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    sget-object p1, Lvr6$a;->YELLOW:Lvr6$a;

    .line 92
    .line 93
    :goto_0
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v2, "PCE.RCV: "

    .line 106
    .line 107
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const-string v1, "FTPService"

    .line 118
    .line 119
    invoke-virtual {v0, v1, p0, p1}, Lvr6;->e(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 120
    .line 121
    .line 122
    :cond_1
    return-void

    .line 123
    :pswitch_1
    check-cast p0, Ljava/util/List;

    .line 124
    .line 125
    check-cast p1, Lmw3;

    .line 126
    .line 127
    invoke-static {p0, p1}, Lmw3$a;->L(Ljava/util/List;Lmw3;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_2
    check-cast p0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    check-cast p1, Ljava/lang/String;

    .line 134
    .line 135
    const/16 v0, 0x7c

    .line 136
    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-static {p1, p0}, Ll43;->b(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :pswitch_3
    check-cast p0, Lv64$c;

    .line 145
    .line 146
    check-cast p1, Lll0;

    .line 147
    .line 148
    invoke-static {p0, p1}, Lll0$a;->b(Lv64$c;Lll0;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
