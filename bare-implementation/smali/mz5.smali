.class public final Lmz5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqz5;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Luz5;

.field public final synthetic d:Lcl6;

.field public final synthetic e:Lwz5;


# direct methods
.method public constructor <init>(Lwz5;Ljava/lang/String;JLuz5;Lcl6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmz5;->e:Lwz5;

    .line 5
    .line 6
    iput-object p2, p0, Lmz5;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lmz5;->b:J

    .line 9
    .line 10
    iput-object p5, p0, Lmz5;->c:Luz5;

    .line 11
    .line 12
    iput-object p6, p0, Lmz5;->d:Lcl6;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lmz5;->e:Lwz5;

    .line 2
    .line 3
    iget-object v1, v0, Lwz5;->n:Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v2, v0, Lwz5;->y:Lu00;

    .line 6
    .line 7
    invoke-virtual {v2}, Lu00;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v6, p0, Lmz5;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v6, " response: "

    .line 26
    .line 27
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-array v6, v4, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v2, v3, v5, v6}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-wide v6, p0, Lmz5;->b:J

    .line 43
    .line 44
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Luz5;

    .line 53
    .line 54
    iget-object v8, p0, Lmz5;->c:Luz5;

    .line 55
    .line 56
    if-ne v3, v8, :cond_2

    .line 57
    .line 58
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string v1, "s"

    .line 66
    .line 67
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/String;

    .line 72
    .line 73
    const-string v2, "ok"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iget-object p0, p0, Lmz5;->d:Lcl6;

    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    invoke-interface {p0, v5, v5}, Lcl6;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const-string v2, "d"

    .line 88
    .line 89
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Ljava/lang/String;

    .line 94
    .line 95
    invoke-interface {p0, v1, p1}, Lcl6;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v2}, Lu00;->e()Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_3

    .line 104
    .line 105
    const-string p0, "Ignoring on complete for put "

    .line 106
    .line 107
    const-string p1, " because it was removed already."

    .line 108
    .line 109
    invoke-static {p0, p1, v6, v7}, Lfz5;->m(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    new-array p1, v4, [Ljava/lang/Object;

    .line 114
    .line 115
    invoke-virtual {v2, p0, v5, p1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lwz5;->b()V

    .line 119
    .line 120
    .line 121
    return-void
.end method
