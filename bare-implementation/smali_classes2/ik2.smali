.class public final synthetic Lik2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lgm;

.field public final synthetic b:Lmk2;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lgm;Lmk2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lik2;->a:Lgm;

    .line 5
    .line 6
    iput-object p2, p0, Lik2;->b:Lmk2;

    .line 7
    .line 8
    iput-boolean p3, p0, Lik2;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lik2;->a:Lgm;

    .line 2
    .line 3
    iget-object v1, v0, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 4
    .line 5
    iget-object v0, v0, Lgm;->a:Lhk;

    .line 6
    .line 7
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 8
    .line 9
    iget-object v8, p0, Lik2;->b:Lmk2;

    .line 10
    .line 11
    iget-object v3, v8, La55;->b:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean p0, p0, Lik2;->c:Z

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string v4, "Protecting"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v4, "Unprotecting"

    .line 21
    .line 22
    :goto_0
    iget-object v5, v8, Lmk2;->e:Lji;

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    const-string v10, "app"

    .line 26
    .line 27
    if-eqz v5, :cond_3

    .line 28
    .line 29
    invoke-virtual {v5}, Lji;->asString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v6, v0, Lhk;->a:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, " local backup for "

    .line 44
    .line 45
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, " with backup id: "

    .line 52
    .line 53
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const/4 v6, 0x4

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->updateProtection(Z)V

    .line 70
    .line 71
    .line 72
    sget-object v3, Lcu;->a:Lcu;

    .line 73
    .line 74
    invoke-virtual {v0}, Lhk;->v()Lq63;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v3, v1, v0}, Lcu;->f(Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;Lq63;)V

    .line 79
    .line 80
    .line 81
    iget-object v3, v8, La55;->b:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz p0, :cond_1

    .line 84
    .line 85
    const-string p0, "Protection"

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const-string p0, "Unprotection"

    .line 89
    .line 90
    :goto_1
    const-string v0, " successful"

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    const/4 v6, 0x4

    .line 97
    const/4 v7, 0x0

    .line 98
    const/4 v5, 0x0

    .line 99
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    sget-object p0, Lg00;->a:Lg00;

    .line 103
    .line 104
    iget-object p0, v8, Lmk2;->e:Lji;

    .line 105
    .line 106
    if-eqz p0, :cond_2

    .line 107
    .line 108
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Lg00;->F(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    sget-object p0, Lbe8;->a:Lbe8;

    .line 116
    .line 117
    return-object p0

    .line 118
    :cond_2
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v9

    .line 122
    :cond_3
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v9
.end method
