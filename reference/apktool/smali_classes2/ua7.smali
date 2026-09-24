.class public Lua7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public final synthetic i:Lva7;


# direct methods
.method public constructor <init>(Lva7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lua7;->i:Lva7;

    .line 5
    .line 6
    iget-wide v0, p1, Lva7;->k:J

    .line 7
    .line 8
    invoke-static {p8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const-wide/16 v4, 0x1

    .line 13
    .line 14
    add-long/2addr v2, v4

    .line 15
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p1, Lva7;->k:J

    .line 20
    .line 21
    const-string p1, "null"

    .line 22
    .line 23
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    :cond_0
    iput-object p2, p0, Lua7;->a:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p3, p0, Lua7;->b:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p6, p0, Lua7;->f:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p4, p0, Lua7;->c:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p5, p0, Lua7;->d:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p8, p0, Lua7;->e:Ljava/lang/String;

    .line 41
    .line 42
    iput-boolean p7, p0, Lua7;->g:Z

    .line 43
    .line 44
    iput-boolean p9, p0, Lua7;->h:Z

    .line 45
    .line 46
    return-void
.end method

.method public constructor <init>(Lva7;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua7;->i:Lva7;

    .line 48
    iput-object p2, p0, Lua7;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p3, p5, p1, p4}, Lua7;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 8

    .line 1
    const-string v0, "null"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move-object p1, v1

    .line 11
    :cond_0
    instance-of v0, p0, Lta7;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget p4, Lva7;->l:I

    .line 17
    .line 18
    move p4, v2

    .line 19
    :cond_1
    iget-object v0, p0, Lua7;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget-boolean v3, p0, Lua7;->g:Z

    .line 22
    .line 23
    if-eqz p4, :cond_2

    .line 24
    .line 25
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    if-nez p4, :cond_2

    .line 30
    .line 31
    move-object v0, p1

    .line 32
    :cond_2
    iget-boolean p4, p0, Lua7;->h:Z

    .line 33
    .line 34
    iget-object v4, p0, Lua7;->b:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    iget-object v4, p0, Lua7;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    iget-object v4, p0, Lua7;->d:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_3

    .line 57
    .line 58
    iget-object v4, p0, Lua7;->f:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    iget-boolean v4, p0, Lua7;->g:Z

    .line 63
    .line 64
    if-ne v3, v4, :cond_3

    .line 65
    .line 66
    iget-boolean v4, p0, Lua7;->h:Z

    .line 67
    .line 68
    if-ne p4, v4, :cond_3

    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    return p0

    .line 72
    :cond_3
    if-eqz p3, :cond_4

    .line 73
    .line 74
    iget-object p3, p0, Lua7;->i:Lva7;

    .line 75
    .line 76
    iget-wide v4, p3, Lva7;->k:J

    .line 77
    .line 78
    const-wide/16 v6, 0x1

    .line 79
    .line 80
    add-long/2addr v6, v4

    .line 81
    iput-wide v6, p3, Lva7;->k:J

    .line 82
    .line 83
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    iget-object p3, p0, Lua7;->e:Ljava/lang/String;

    .line 89
    .line 90
    :goto_0
    iget-object v4, p0, Lua7;->a:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v4, p0, Lua7;->a:Ljava/lang/String;

    .line 93
    .line 94
    iput-object p1, p0, Lua7;->b:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v1, p0, Lua7;->f:Ljava/lang/String;

    .line 97
    .line 98
    iput-object v0, p0, Lua7;->c:Ljava/lang/String;

    .line 99
    .line 100
    iput-object p2, p0, Lua7;->d:Ljava/lang/String;

    .line 101
    .line 102
    iput-object p3, p0, Lua7;->e:Ljava/lang/String;

    .line 103
    .line 104
    iput-boolean v3, p0, Lua7;->g:Z

    .line 105
    .line 106
    iput-boolean p4, p0, Lua7;->h:Z

    .line 107
    .line 108
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Setting{id=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lua7;->e:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', name=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lua7;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', value=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lua7;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', defaultValue=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lua7;->c:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\', packageName=\'"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lua7;->d:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\', tag=\'"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lua7;->f:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "\', defaultFromSystem="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lua7;->g:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", isValuePreservedInRestore="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-boolean p0, p0, Lua7;->h:Z

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 p0, 0x7d

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method
