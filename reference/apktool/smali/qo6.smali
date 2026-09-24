.class public final synthetic Lqo6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lh07;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lqo6;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lqo6;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lqo6;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lf07;)V
    .locals 12

    .line 1
    iget v0, p0, Lqo6;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lqo6;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lqo6;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lhj;

    .line 11
    .line 12
    check-cast v1, Lmy6;

    .line 13
    .line 14
    iget-object v0, p1, Lf07;->d:Lm07;

    .line 15
    .line 16
    iget-object v2, p1, Lf07;->a:Li07;

    .line 17
    .line 18
    sget-object v3, Li07;->Extract:Li07;

    .line 19
    .line 20
    if-ne v2, v3, :cond_6

    .line 21
    .line 22
    iget-object v2, p1, Lf07;->b:Lk07;

    .line 23
    .line 24
    sget-object v3, Lk07;->ExtractingArchive:Lk07;

    .line 25
    .line 26
    if-ne v2, v3, :cond_6

    .line 27
    .line 28
    iget-object v2, p1, Lf07;->c:Ll07;

    .line 29
    .line 30
    sget-object v3, Ll07;->Extraction:Ll07;

    .line 31
    .line 32
    if-ne v2, v3, :cond_6

    .line 33
    .line 34
    sget-object v2, Lm07;->Progress:Lm07;

    .line 35
    .line 36
    if-eq v0, v2, :cond_0

    .line 37
    .line 38
    sget-object v2, Lm07;->Completed:Lm07;

    .line 39
    .line 40
    if-ne v0, v2, :cond_6

    .line 41
    .line 42
    :cond_0
    iget-object v2, p1, Lf07;->g:Ljava/lang/Long;

    .line 43
    .line 44
    const-wide/16 v3, 0x0

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    cmp-long v2, v5, v3

    .line 53
    .line 54
    if-gez v2, :cond_1

    .line 55
    .line 56
    move-wide v5, v3

    .line 57
    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_0
    move-object v8, v2

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v2, 0x0

    .line 64
    goto :goto_0

    .line 65
    :goto_1
    iget-wide v5, p1, Lf07;->f:J

    .line 66
    .line 67
    cmp-long p1, v5, v3

    .line 68
    .line 69
    if-gez p1, :cond_3

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move-wide v3, v5

    .line 73
    :goto_2
    if-eqz v8, :cond_4

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    cmp-long p1, v3, v5

    .line 80
    .line 81
    if-lez p1, :cond_4

    .line 82
    .line 83
    move-wide v3, v5

    .line 84
    :cond_4
    move-wide v6, v3

    .line 85
    new-instance v5, Lly6;

    .line 86
    .line 87
    invoke-virtual {v1, v6, v7}, Lmy6;->a(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v9

    .line 91
    sget-object p1, Lm07;->Completed:Lm07;

    .line 92
    .line 93
    if-ne v0, p1, :cond_5

    .line 94
    .line 95
    const/4 p1, 0x1

    .line 96
    :goto_3
    move v11, p1

    .line 97
    goto :goto_4

    .line 98
    :cond_5
    const/4 p1, 0x0

    .line 99
    goto :goto_3

    .line 100
    :goto_4
    invoke-direct/range {v5 .. v11}, Lly6;-><init>(JLjava/lang/Long;JZ)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v5}, Lhj;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_6
    return-void

    .line 107
    :pswitch_0
    check-cast p0, Lkh6;

    .line 108
    .line 109
    check-cast v1, Ldp6;

    .line 110
    .line 111
    iget-wide v2, p1, Lf07;->f:J

    .line 112
    .line 113
    iput-wide v2, p0, Lkh6;->a:J

    .line 114
    .line 115
    invoke-virtual {v1, p1}, Ldp6;->a(Lf07;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
