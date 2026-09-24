.class public final Ltj5;
.super Lpr1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lp23;


# direct methods
.method public constructor <init>(Le23;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lpr1;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lpr1;->a(Le23;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Le23;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v1, "WINDOWS"

    .line 11
    .line 12
    const-string v2, "MM-dd-yy kk:mm"

    .line 13
    .line 14
    invoke-direct {p1, v1, v2, v0}, Le23;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p1, Le23;->b:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lp23;

    .line 20
    .line 21
    invoke-direct {v0}, Lp23;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Ltj5;->e:Lp23;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lp23;->a(Le23;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lg23;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lpr1;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    new-instance v0, Lg23;

    .line 9
    .line 10
    invoke-direct {v0}, Lg23;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Lg23;->c:Ljava/lang/String;

    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {p0, v2}, Lpr1;->g(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " "

    .line 29
    .line 30
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    invoke-virtual {p0, v3}, Lpr1;->g(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v3, 0x3

    .line 46
    invoke-virtual {p0, v3}, Lpr1;->g(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/4 v4, 0x4

    .line 51
    invoke-virtual {p0, v4}, Lpr1;->g(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/4 v5, 0x5

    .line 56
    invoke-virtual {p0, v5}, Lpr1;->g(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-eqz v5, :cond_3

    .line 61
    .line 62
    const-string v6, "."

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_3

    .line 69
    .line 70
    const-string v6, ".."

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_0

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_0
    :try_start_0
    iget-object v1, p0, Lpr1;->d:Lp23;

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Lp23;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, v0, Lg23;->e:Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    :try_start_1
    iget-object p0, p0, Ltj5;->e:Lp23;

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lp23;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    iput-object p0, v0, Lg23;->e:Ljava/util/Calendar;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .line 96
    :catch_1
    :goto_0
    iput-object v5, v0, Lg23;->d:Ljava/lang/String;

    .line 97
    .line 98
    const-string p0, "<DIR>"

    .line 99
    .line 100
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_1

    .line 105
    .line 106
    iput v2, v0, Lg23;->a:I

    .line 107
    .line 108
    const-wide/16 p0, 0x0

    .line 109
    .line 110
    iput-wide p0, v0, Lg23;->b:J

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    const/4 p0, 0x0

    .line 114
    iput p0, v0, Lg23;->a:I

    .line 115
    .line 116
    if-eqz v4, :cond_2

    .line 117
    .line 118
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 119
    .line 120
    .line 121
    move-result-wide p0

    .line 122
    iput-wide p0, v0, Lg23;->b:J

    .line 123
    .line 124
    :cond_2
    :goto_1
    return-object v0

    .line 125
    :cond_3
    :goto_2
    return-object v1
.end method

.method public final f()Le23;
    .locals 3

    .line 1
    new-instance p0, Le23;

    .line 2
    .line 3
    const-string v0, "MM-dd-yy hh:mma"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "WINDOWS"

    .line 7
    .line 8
    invoke-direct {p0, v2, v0, v1}, Le23;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
