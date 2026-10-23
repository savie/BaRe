.class public final synthetic Lqa1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lsa1;

.field public final synthetic b:J

.field public final synthetic c:Z

.field public final synthetic d:Ldd1;

.field public final synthetic e:Lbt3;


# direct methods
.method public synthetic constructor <init>(Lsa1;JZLdd1;Lbt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqa1;->a:Lsa1;

    .line 5
    .line 6
    iput-wide p2, p0, Lqa1;->b:J

    .line 7
    .line 8
    iput-boolean p4, p0, Lqa1;->c:Z

    .line 9
    .line 10
    iput-object p5, p0, Lqa1;->d:Ldd1;

    .line 11
    .line 12
    iput-object p6, p0, Lqa1;->e:Lbt3;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lqa1;->a:Lsa1;

    .line 2
    .line 3
    iget-wide v1, p0, Lqa1;->b:J

    .line 4
    .line 5
    iget-boolean v3, p0, Lqa1;->c:Z

    .line 6
    .line 7
    iget-object v4, p0, Lqa1;->d:Ldd1;

    .line 8
    .line 9
    iget-object p0, p0, Lqa1;->e:Lbt3;

    .line 10
    .line 11
    sget-object v5, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    iget-wide v6, v0, Lsa1;->O:J

    .line 14
    .line 15
    cmp-long v1, v1, v6

    .line 16
    .line 17
    if-nez v1, :cond_5

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lsa1;->L:Lbl7;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lsa1;->O()Lwj1;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iput-boolean v2, v3, Lwj1;->d:Z

    .line 43
    .line 44
    iput-object v1, v3, Lwj1;->e:Ldd1;

    .line 45
    .line 46
    invoke-virtual {v0, v4, p0}, Lsa1;->Q(Ldd1;Lbt3;)V

    .line 47
    .line 48
    .line 49
    return-object v5

    .line 50
    :cond_1
    sget-object p0, Lgg3;->a:Lgg3;

    .line 51
    .line 52
    sget-object p0, Lgg3;->d:Lwf3;

    .line 53
    .line 54
    sget-object v3, Lwf3;->TIMED_OUT:Lwf3;

    .line 55
    .line 56
    if-eq p0, v3, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Lsa1;->O()Lwj1;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    iput-boolean v2, p0, Lwj1;->d:Z

    .line 63
    .line 64
    iput-object v1, p0, Lwj1;->e:Ldd1;

    .line 65
    .line 66
    invoke-virtual {v0}, Lsa1;->O()Lwj1;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iput-object v1, p0, Lwj1;->c:Lbt3;

    .line 71
    .line 72
    return-object v5

    .line 73
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_4

    .line 78
    .line 79
    :cond_3
    return-object v5

    .line 80
    :cond_4
    invoke-virtual {v0}, Lsa1;->O()Lwj1;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    iput-object v1, p0, Lwj1;->c:Lbt3;

    .line 85
    .line 86
    :cond_5
    return-object v5
.end method
