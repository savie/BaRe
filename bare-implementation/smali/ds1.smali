.class public final synthetic Lds1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lgs1;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lgs1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lds1;->a:Lgs1;

    .line 5
    .line 6
    iput-boolean p2, p0, Lds1;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lds1;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "reader"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "writer"

    .line 9
    .line 10
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Timed out attempting to acquire a "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " connection."

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, "\n\nWriter pool:\n"

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lds1;->a:Lgs1;

    .line 43
    .line 44
    iget-object v0, p0, Lgs1;->b:Lr26;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lr26;->d(Ljava/lang/StringBuilder;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "Reader pool:"

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/16 v0, 0xa

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lgs1;->a:Lr26;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lr26;->d(Ljava/lang/StringBuilder;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x5

    .line 69
    :try_start_0
    invoke-static {v1, v0}, Lly8;->P(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    throw v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    iget p0, p0, Lgs1;->k:I

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    if-eq p0, v1, :cond_2

    .line 79
    .line 80
    const/4 v1, 0x2

    .line 81
    if-eq p0, v1, :cond_1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_2
    throw v0
.end method
