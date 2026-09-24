.class public abstract Lrl5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lf41;

.field public b:Z


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lrl5;->a:Lf41;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-boolean v1, p0, Lrl5;->b:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p0, v2}, Lf41;->d(Lrl5;Lpl5;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lf41;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lsl5;

    .line 16
    .line 17
    iget-object v0, v0, Lf41;->a:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lmb;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v3, v1, Lsl5;->h:Lrl5;

    .line 25
    .line 26
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v3, :cond_4

    .line 32
    .line 33
    iget v3, v1, Lsl5;->g:I

    .line 34
    .line 35
    const/4 v5, -0x1

    .line 36
    if-eq v5, v3, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v3, v1, Lsl5;->f:Lrs5;

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1, v5}, Lsl5;->c(I)Lrs5;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    :cond_2
    iput-object v2, v1, Lsl5;->f:Lrs5;

    .line 48
    .line 49
    iput v4, v1, Lsl5;->g:I

    .line 50
    .line 51
    iput-object v2, v1, Lsl5;->h:Lrl5;

    .line 52
    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    iget-object v0, v0, Lmb;->a:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lzs5;

    .line 58
    .line 59
    iget-object v0, v0, Lzs5;->a:Ljava/lang/Runnable;

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iget-object v0, v3, Lrs5;->f:Lss5;

    .line 66
    .line 67
    invoke-virtual {v0}, Lss5;->handleOnBackPressed()V

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object v0, v1, Lsl5;->a:Lkm7;

    .line 71
    .line 72
    sget-object v1, Ltl5;->g:Ltl5;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Lkm7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_1
    iput-boolean v4, p0, Lrl5;->b:Z

    .line 81
    .line 82
    return-void

    .line 83
    :cond_5
    const-string p0, "This input is not added to any dispatcher."

    .line 84
    .line 85
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    return-void
.end method
