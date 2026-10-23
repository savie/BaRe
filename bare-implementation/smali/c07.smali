.class public final synthetic Lc07;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lh07;


# instance fields
.field public final synthetic a:Ljava/lang/Long;

.field public final synthetic b:Lu10;

.field public final synthetic c:Lmy6;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Lu10;Lmy6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc07;->a:Ljava/lang/Long;

    .line 5
    .line 6
    iput-object p2, p0, Lc07;->b:Lu10;

    .line 7
    .line 8
    iput-object p3, p0, Lc07;->c:Lmy6;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lf07;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lf07;->d:Lm07;

    .line 2
    .line 3
    iget-object v1, p1, Lf07;->a:Li07;

    .line 4
    .line 5
    sget-object v2, Li07;->Create:Li07;

    .line 6
    .line 7
    if-ne v1, v2, :cond_6

    .line 8
    .line 9
    iget-object v1, p1, Lf07;->b:Lk07;

    .line 10
    .line 11
    sget-object v2, Lk07;->CreatingArchive:Lk07;

    .line 12
    .line 13
    if-ne v1, v2, :cond_6

    .line 14
    .line 15
    sget-object v1, Lm07;->Progress:Lm07;

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    sget-object v1, Lm07;->Completed:Lm07;

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_4

    .line 24
    :cond_0
    iget-object v1, p1, Lf07;->c:Ll07;

    .line 25
    .line 26
    sget-object v2, Ll07;->Tar:Ll07;

    .line 27
    .line 28
    if-eq v1, v2, :cond_1

    .line 29
    .line 30
    sget-object v2, Ll07;->Compression:Ll07;

    .line 31
    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    sget-object v2, Ll07;->Encryption:Ll07;

    .line 35
    .line 36
    if-ne v1, v2, :cond_6

    .line 37
    .line 38
    :cond_1
    iget-object v1, p0, Lc07;->a:Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    const-wide/16 v3, 0x0

    .line 45
    .line 46
    cmp-long v5, v1, v3

    .line 47
    .line 48
    if-gez v5, :cond_2

    .line 49
    .line 50
    move-wide v1, v3

    .line 51
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    iget-wide v1, p1, Lf07;->f:J

    .line 56
    .line 57
    cmp-long p1, v1, v3

    .line 58
    .line 59
    if-gez p1, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move-wide v3, v1

    .line 63
    :goto_0
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    cmp-long p1, v3, v1

    .line 68
    .line 69
    if-lez p1, :cond_4

    .line 70
    .line 71
    move-wide v6, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move-wide v6, v3

    .line 74
    :goto_1
    new-instance v5, Lly6;

    .line 75
    .line 76
    iget-object p1, p0, Lc07;->c:Lmy6;

    .line 77
    .line 78
    invoke-virtual {p1, v6, v7}, Lmy6;->a(J)J

    .line 79
    .line 80
    .line 81
    move-result-wide v9

    .line 82
    sget-object p1, Lm07;->Completed:Lm07;

    .line 83
    .line 84
    if-ne v0, p1, :cond_5

    .line 85
    .line 86
    const/4 p1, 0x1

    .line 87
    :goto_2
    move v11, p1

    .line 88
    goto :goto_3

    .line 89
    :cond_5
    const/4 p1, 0x0

    .line 90
    goto :goto_2

    .line 91
    :goto_3
    invoke-direct/range {v5 .. v11}, Lly6;-><init>(JLjava/lang/Long;JZ)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lc07;->b:Lu10;

    .line 95
    .line 96
    invoke-virtual {p0, v5}, Lu10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :cond_6
    :goto_4
    return-void
.end method
