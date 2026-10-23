.class public final synthetic Lyy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/io/Serializable;

.field public final synthetic e:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;I)V
    .locals 0

    .line 1
    iput p5, p0, Lyy;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lyy;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lyy;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lyy;->d:Ljava/io/Serializable;

    .line 8
    .line 9
    iput-object p4, p0, Lyy;->e:Ljava/io/Serializable;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lyy;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lyy;->e:Ljava/io/Serializable;

    .line 6
    .line 7
    iget-object v3, p0, Lyy;->d:Ljava/io/Serializable;

    .line 8
    .line 9
    iget-object v4, p0, Lyy;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p0, p0, Lyy;->b:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Lji7;

    .line 17
    .line 18
    check-cast v4, Ljava/lang/String;

    .line 19
    .line 20
    check-cast v3, Ljava/lang/String;

    .line 21
    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    check-cast p1, Lwm2;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0, v4}, Lji7;->w(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v3, v2}, Lji7;->A(Lwm2;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    const-string p1, "SmbService"

    .line 39
    .line 40
    const-string v0, "move"

    .line 41
    .line 42
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 46
    .line 47
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "move: "

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/4 v5, 0x4

    .line 58
    const/4 v6, 0x0

    .line 59
    const-string v2, "SmbService"

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :pswitch_0
    check-cast p0, Lc40;

    .line 67
    .line 68
    check-cast v4, Lfz;

    .line 69
    .line 70
    iget-object v0, v4, Lfz;->n:Landroid/widget/TextView;

    .line 71
    .line 72
    check-cast v3, Lih6;

    .line 73
    .line 74
    check-cast v2, Lih6;

    .line 75
    .line 76
    check-cast p1, Ljava/lang/String;

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-nez v5, :cond_0

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lpw6;->e()Lgz7;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lgz7;->isComplete()Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-nez p0, :cond_1

    .line 96
    .line 97
    const/4 p0, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 100
    :goto_1
    invoke-static {v0, p0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 101
    .line 102
    .line 103
    iput-boolean p0, v3, Lih6;->a:Z

    .line 104
    .line 105
    invoke-static {v3, v2, v4}, Lfz;->b(Lih6;Lih6;Lfz;)V

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
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
