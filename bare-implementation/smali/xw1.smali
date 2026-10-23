.class public final Lxw1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lp75;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lxw1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lbs2;Lon5;)V
    .locals 5

    .line 1
    iget p0, p0, Lxw1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Lbx4;

    .line 7
    .line 8
    sget-object p0, Llg7;->a:Lq86;

    .line 9
    .line 10
    invoke-virtual {p1}, Lbs2;->g()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p1, Lbs2;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ldi4;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lbs2;->j(Lon5;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p2, Lon5;->a:Lon5;

    .line 22
    .line 23
    check-cast v2, Lws0;

    .line 24
    .line 25
    instance-of v3, v2, Lqu5;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    check-cast v2, Lqu5;

    .line 30
    .line 31
    iget v3, v2, Lqu5;->g:I

    .line 32
    .line 33
    sget-object v4, Lkx1;->b:Lkx1;

    .line 34
    .line 35
    invoke-virtual {p0, v1, v4}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Llg7;->c:Lq86;

    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p0, v1, v3}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget p0, v2, Lqu5;->g:I

    .line 48
    .line 49
    add-int/lit8 p0, p0, 0x1

    .line 50
    .line 51
    iput p0, v2, Lqu5;->g:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    sget-object v2, Lkx1;->a:Lkx1;

    .line 55
    .line 56
    invoke-virtual {p0, v1, v2}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p0, Llg7;->b:Lq86;

    .line 60
    .line 61
    iget-object v2, p2, Lon5;->a:Lon5;

    .line 62
    .line 63
    check-cast v2, Lws0;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    :goto_0
    if-eqz v2, :cond_2

    .line 67
    .line 68
    instance-of v4, v2, Lbx4;

    .line 69
    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    :cond_1
    invoke-virtual {v2}, Lon5;->c()Lon5;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p0, v1, v2}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-virtual {p1, p2, v0}, Lbs2;->h(Lon5;I)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p2, Lon5;->e:Lon5;

    .line 90
    .line 91
    if-eqz p0, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1}, Lbs2;->b()V

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void

    .line 97
    :pswitch_0
    check-cast p2, Lk34;

    .line 98
    .line 99
    invoke-virtual {p1}, Lbs2;->b()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lbs2;->g()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    invoke-virtual {p1, p2}, Lbs2;->j(Lon5;)V

    .line 107
    .line 108
    .line 109
    sget-object v0, Llg7;->d:Lq86;

    .line 110
    .line 111
    iget-object v1, p1, Lbs2;->c:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v1, Ldi4;

    .line 114
    .line 115
    iget v2, p2, Lk34;->f:I

    .line 116
    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v0, v1, v2}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2, p0}, Lbs2;->h(Lon5;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Lbs2;->a(Lon5;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
