.class public final synthetic Lq24;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lq24;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lq24;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lq24;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lq24;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lq24;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lq24;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lji7;

    .line 13
    .line 14
    check-cast v2, Ljava/lang/String;

    .line 15
    .line 16
    check-cast p1, Lwm2;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0, v2}, Lji7;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p1, p0}, Lwm2;->j(Ljava/lang/String;)Lu63;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1, p0}, Log1;->g(Lu63;Ljava/lang/String;)Lpg1;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    move-object p0, v0

    .line 36
    const-string p1, "SmbService"

    .line 37
    .line 38
    const-string v0, "getFile"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 44
    .line 45
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p1, "getFile: "

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/4 v5, 0x4

    .line 56
    const/4 v6, 0x0

    .line 57
    const-string v2, "SmbService"

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    :goto_0
    return-object p0

    .line 65
    :pswitch_0
    check-cast p0, Lff5;

    .line 66
    .line 67
    check-cast v2, Lif5;

    .line 68
    .line 69
    iget-object v0, v2, Lif5;->i:Landroid/widget/TextView;

    .line 70
    .line 71
    check-cast p1, Ljava/lang/String;

    .line 72
    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_0

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {p0}, Lpw6;->e()Lgz7;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Lgz7;->isComplete()Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-nez p0, :cond_1

    .line 91
    .line 92
    const/4 p0, 0x1

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    :goto_1
    const/4 p0, 0x0

    .line 95
    :goto_2
    invoke-static {v0, p0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 96
    .line 97
    .line 98
    iget-object v3, v2, Lif5;->j:Landroid/view/View;

    .line 99
    .line 100
    invoke-static {v3, p0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 101
    .line 102
    .line 103
    iget-object v2, v2, Lif5;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 104
    .line 105
    invoke-static {v2, p0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 106
    .line 107
    .line 108
    if-eqz p0, :cond_2

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    return-object v1

    .line 114
    :pswitch_1
    check-cast p0, Lr24;

    .line 115
    .line 116
    check-cast v2, Lln;

    .line 117
    .line 118
    check-cast p1, Ljava/lang/Throwable;

    .line 119
    .line 120
    iget-object p0, p0, Lr24;->c:Landroid/os/Handler;

    .line 121
    .line 122
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    .line 124
    .line 125
    return-object v1

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
