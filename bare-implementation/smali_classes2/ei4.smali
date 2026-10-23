.class public final synthetic Lei4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lli4;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lli4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lei4;->a:Lli4;

    .line 5
    .line 6
    iput-object p2, p0, Lei4;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lei4;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lei4;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lei4;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v1, p0, Lei4;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lei4;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lei4;->d:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Lcom/jcraft/jsch/ChannelSftp;

    .line 8
    .line 9
    check-cast p2, Lcom/jcraft/jsch/Session;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    :try_start_0
    new-array p2, p2, [C

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/16 v4, 0x2f

    .line 22
    .line 23
    aput-char v4, p2, v3

    .line 24
    .line 25
    invoke-static {v1, p2}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v3, ""

    .line 30
    .line 31
    invoke-static {v4, p2, v3}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    iget-object v4, p0, Lei4;->a:Lli4;

    .line 40
    .line 41
    if-lez v3, :cond_0

    .line 42
    .line 43
    :try_start_1
    invoke-virtual {v4, p2, p1}, Lli4;->v(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v4, v1}, Lli4;->r(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v4, v1}, Lli4;->j(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    move-object p1, v0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p1, v0, v2}, Lcom/jcraft/jsch/ChannelSftp;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :goto_1
    const-string p2, "move: Error while moving file from path="

    .line 64
    .line 65
    const-string v0, " to newPath="

    .line 66
    .line 67
    iget-object p0, p0, Lei4;->e:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p2, p0, v0, v1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string p2, "JschService"

    .line 74
    .line 75
    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 79
    .line 80
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string p2, ": "

    .line 85
    .line 86
    invoke-static {p0, p2, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const/4 v4, 0x4

    .line 91
    const/4 v5, 0x0

    .line 92
    const-string v1, "JschService"

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 99
    .line 100
    return-object p0
.end method
