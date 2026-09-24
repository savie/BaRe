.class public final synthetic Lle1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;I)V
    .locals 0

    .line 1
    iput p5, p0, Lle1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lle1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lle1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lle1;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lle1;->e:Ljava/io/Serializable;

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
    iget v0, p0, Lle1;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lle1;->e:Ljava/io/Serializable;

    .line 6
    .line 7
    iget-object v3, p0, Lle1;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lle1;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p0, p0, Lle1;->b:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Lqp3;

    .line 17
    .line 18
    check-cast v4, Ltp3;

    .line 19
    .line 20
    iget-object v0, v4, Ltp3;->m:Landroid/widget/TextView;

    .line 21
    .line 22
    check-cast v3, Lih6;

    .line 23
    .line 24
    check-cast v2, Lih6;

    .line 25
    .line 26
    check-cast p1, Ljava/lang/String;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lpw6;->e()Lgz7;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lgz7;->isComplete()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 50
    :goto_1
    invoke-static {v0, p0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 51
    .line 52
    .line 53
    iput-boolean p0, v3, Lih6;->a:Z

    .line 54
    .line 55
    invoke-static {v3, v2, v4}, Ltp3;->b(Lih6;Lih6;Ltp3;)V

    .line 56
    .line 57
    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-object v1

    .line 64
    :pswitch_0
    check-cast p0, Lke;

    .line 65
    .line 66
    check-cast v4, Lsd1;

    .line 67
    .line 68
    check-cast v3, Lwe1;

    .line 69
    .line 70
    check-cast v2, Lq63;

    .line 71
    .line 72
    check-cast p1, Ljava/lang/Long;

    .line 73
    .line 74
    iget-object v0, v3, Lwe1;->a:Landroid/content/Context;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    const-wide/16 v5, 0x0

    .line 84
    .line 85
    :goto_2
    invoke-static {v5, v6}, Lwe1;->n(J)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v2}, Lq63;->A()J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    invoke-static {v2, v3}, Lwe1;->n(J)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const v2, 0x7f13015f

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v4, p1}, Lke;->g(Lsd1;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
